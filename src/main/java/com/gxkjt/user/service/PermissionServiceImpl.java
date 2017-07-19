package com.gxkjt.user.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.pcloud.common.el.EL;
import org.pcloud.spring.jdbc.JtaManager;
import org.pcloud.spring.web.WebUtilsAdapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gxkjt.user.utils.PasswordHelper;
import com.zkdj.shiro.service.PermissionService;

@Component
public class PermissionServiceImpl implements PermissionService {
	@Autowired
	private JtaManager jtaManager;
	@Autowired
	private WebUtilsAdapter webUtilsAdapter;

	@Override
	public List<String> queryAllPermissionInfo(String username)
			throws Exception {
		List<String> permList = new ArrayList<String>();
		permList.add("member:add");
		permList.add("member:delete");
		permList.add("admin:manage");
		return permList;
	}

	@Override
	public Map<String, Object> queryUserInfo(String username) throws Exception {

		Map<String, Object> result = new HashMap<String, Object>();
//		Map<String,String>params =webUtilsAdapter.getParameters();
//		params.put("username",username);
//		EL sqlModuleTemp = new EL("user","user_infomation",webUtilsAdapter.getBasePath()+"sql");
//		sqlModuleTemp.setVariables(params);
//		result=	jtaManager.query("mysqlTemplate", sqlModuleTemp.getSqlSegmentInfo()).get(0);
	    result.put("username", "admin");
	    result.put("password", "214621f69bbb9a612380458d5c9b1027");
		result.put("salt", "6c4df2f1102764825e6fddcc52f14b14");
		result.put("locked", "1");
//		result.put("password", "2385925dfa9a54d1b842c9a13a917371");
//		result.put("salt", "576bf5ab4a251305069bbe10ebfeb091");
//		result.put("locked", "1");
		return result;
	}

	
	//密码修改
	public void setOrUpdate(HttpServletRequest request) {
//		String username = request.getParameter("username");
//		String oldpassword = request.getParameter("oldpassword");
//		String newpassword = request.getParameter("newpassword");
		String username = "test";
		String oldpassword ="2";
		String newpassword ="1";
		try {
			Map<String, Object> result = queryUserInfo(username);
			String mainpass = PasswordHelper.getPassword(username, oldpassword,
					result.get("salt").toString());
			if (mainpass.equals(result.get("password").toString())) {
				String password = PasswordHelper.getPassword(username,
						newpassword, result.get("salt").toString());
				Map<String, String> setValues = new HashMap<String, String>();
				setValues.put("password", password);
				setValues.put("username", username);
				EL sqlModuleTemp = new EL("user","updateUserInfo",webUtilsAdapter.getBasePath()+"sql");
				sqlModuleTemp.setVariables(setValues);
				jtaManager.saveOrupdate("mysqlTemplate", sqlModuleTemp.getSqlSegmentInfo());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
   //添加用户	
	public void addUser(Map<String,String> params){
		params.put("user_name", "eee");
		params.put("password", "22");
		Map<String,String> setValues =PasswordHelper.crateNewUser(params);
		EL sqlModuleTemp;
		try {
			sqlModuleTemp = new EL("user","insert_user",webUtilsAdapter.getBasePath()+"sql");
			sqlModuleTemp.setVariables(setValues);
			jtaManager.saveOrupdate("mysqlTemplate", sqlModuleTemp.getSqlSegmentInfo());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}