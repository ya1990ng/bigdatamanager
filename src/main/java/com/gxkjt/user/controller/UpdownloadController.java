package com.gxkjt.user.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.pcloud.common.el.EL;
import org.pcloud.common.json.JsonHelper;
import org.pcloud.common.json.RespResult;
import org.pcloud.spring.web.BaseMethodController;
import org.pcloud.spring.web.WebUtilsAdapter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@RequestMapping(value="updownload")
@Controller
public class UpdownloadController extends BaseMethodController{
		
	
	@Autowired
	 public WebUtilsAdapter webUtilsAdapter;

	@RequestMapping(value="upload")
	@ResponseBody
	public String fileupload (HttpServletRequest request) throws Exception{
		Map<String, Map<String, Object[]>>  sqlInfoMap = new LinkedHashMap<String, Map<String, Object[]>> ();
		try {
			String person = "admin";// 操作人
			SimpleDateFormat sdf = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss" );
			String time = sdf.format(new Date());
			
			String fileAdress = params.get("detail");
			if(StringUtils.isNotBlank(fileAdress)) {
				List<Map<?,?>> file = JsonHelper.string2List_Map(fileAdress);
				String id = null;
				String fileName = null;
//				String filePath = null;
				String fileNewName = null;
				String fileSize = null;
				String fileSuffix = null;
				String fileTarget = null;
				
				EL sqlTemplate = null;
				Map<String,String> map = null;
				for(int i=0; i<file.size(); i++) {
					id = UUID.randomUUID().toString();
					fileName = (String) file.get(i).get("name");// 文件名称
//					filePath = (String) file.get(i).get("filePath");// 文件存储权目录
//					filePath = filePath.replace("\\", "\\\\");
					fileNewName = (String) file.get(i).get("newName");//
					fileSize = (String) file.get(i).get("size");
					fileSuffix = (String) file.get(i).get("suffix");
					fileTarget = (String) params.get("s2");
					
					map = new HashMap<String,String>();
					map.put("id", id);
					map.put("fileName", fileName);
//					map.put("filePath", filePath);
					map.put("fileNewName", fileNewName);
					map.put("fileSize", fileSize);
					map.put("fileSuffix", fileSuffix);
					map.put("s2", fileTarget);
					
					map.put("createtime", time);
					map.put("createperson", person);
					
					sqlTemplate = new EL("file", "insertFile", webUtilsAdapter.getBasePath() + "sql");
					sqlTemplate.setVariables(map);
					
					if (sqlInfoMap.get("mysqlTemplate") != null) {
						sqlInfoMap.get("mysqlTemplate").putAll(sqlTemplate.getSqlSegmentInfo(i + ""));
					} else {
						sqlInfoMap.put("mysqlTemplate", sqlTemplate.getSqlSegmentInfo(i + ""));
					}
				}
				jtaManager.saveOrupdate(sqlInfoMap);
			}
			
		} catch (Exception e) {
			throw new Exception("上传附件出错！系统提示："+e.getMessage());
		}
		return RespResult.getInstance().setInfo("status", "success").toJson();
	}
	
//	@RequestMapping(value="download")
//	public void download (HttpServletRequest request) throws Exception{
//		System.out.println("123");
//	}
}
