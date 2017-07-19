package com.gxkjt.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.pcloud.spring.web.BaseController;
import org.pcloud.spring.web.SysDataManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gxkjt.user.service.PermissionServiceImpl;
import com.zkdj.shiro.util.AttackValidate;

@Controller
@RequestMapping("/member")
public class LoginController extends BaseController {
	 
	
	@Autowired
	public PermissionServiceImpl permissionServiceImpl;
	/**
	 * @return 登录验证
	 * @throws Exception
	 */
	@RequestMapping(value = "/toLogin")
	public String toLogin(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		// 返回地址
		String returnUrl = "redirect:/login.jsp";
		if(username != null && password !=null && !username.equals("") && !password.equals("")){
			AttackValidate attackValidate = AttackValidate.getInstance();
			// 获取当前的subject
			Subject subject = SecurityUtils.getSubject();

			// 根据获取的用户名和密码封装成Token
			UsernamePasswordToken token = new UsernamePasswordToken(username,password);
			// 是否记住用户
			token.setRememberMe(true);
			try {
				attackValidate.validate(username);
				
				// 在调用了login方法后,SecurityManager会收到AuthenticationToken,并将其发送给已配置的Realm执行必须的认证检查
				// 每个Realm都能在必要时对提交的AuthenticationTokens作出反应
				// 所以这一步在调用login(token)方法时,它会走到MyRealm.doGetAuthenticationInfo()方法中,具体验证方式详见此方法
			   subject.login(token);
				returnUrl = "/index";
				attackValidate.remove(username);
				 
				webUtilsAdapter.getSession().setAttribute("loginResource", new SysDataManager());
				
			} catch (UnknownAccountException e) {
				 model.addAttribute("login_msg", "用户名称不存在！");
				attackValidate.addErrorCount(username);
			} catch (LockedAccountException e) {
				 model.addAttribute("login_msg", "账号被锁定！");
				attackValidate.addErrorCount(username);
			} catch (ExcessiveAttemptsException e) {
				 model.addAttribute("login_msg", "密码或用户名输入错误次数超过5次!");
				attackValidate.addErrorCount(username);
			} catch (AuthenticationException e) {
				if(request.getAttribute("password_error") != null){
					 model.addAttribute("login_msg", "密码错误！");
				}else
				 model.addAttribute("login_msg", "系统服务出错，请联系管理员！");
				attackValidate.addErrorCount(username);
			}
			// 验证失败	
			if (!subject.isAuthenticated()) {
				token.clear();
			}
		}
		return returnUrl;
	}
	/**
	 * @param request
	 * @return 添加用户
	 */
	@RequestMapping(value="addUser")
	public String  addUser(HttpServletRequest request){
		permissionServiceImpl.addUser(params);
		return "/index";
	}
	/**
	 * @param request
	 * @return 修改密码登录
	 */
	@RequestMapping(value="setOrUpdate")
	public String  setOrUpdate(HttpServletRequest request){
		permissionServiceImpl.setOrUpdate(request);
		return "/index";
	}
	
	/**
	 * @param request
	 * @return 注销登录
	 */
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		SecurityUtils.getSubject().logout();
		return "redirect:/login.jsp";
	}

	@RequestMapping("/unauthorized")
	public String unauthorized() {
		return "/error";
	}
}
