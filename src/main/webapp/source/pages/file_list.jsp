<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>文档管理</title>

<script type="text/javascript" src="../../source/mvc/lib/cui.js"></script>
<script type="text/javascript" src="../../source/mvc/config/config.js"></script>
<script type="text/javascript" src="../../source/mvc/page/page.js"></script>
<link href="../../source/mvc/page/page.css" rel="stylesheet" />
<!-- Page CSS -->
<link href="../../source/mvc/assets/style.css" rel="stylesheet" />
<link href="../../source/mvc/assets/common.css" rel="stylesheet" />
<link href="../../source/mvc/assets/add-ons.min.css" rel="stylesheet" />
<!-- Vendor JS-->
<script src="../../source/mvc/assets/vendor/js/jquery.min.js"></script>
<script src="../../source/mvc/assets/vendor/js/jquery-2.1.1.min.js"></script>
<script src="../../source/mvc/assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
<script src="../../source/mvc/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Vendor CSS-->
<link href="../../source/mvc/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="../../source/mvc/assets/vendor/skycons/css/skycons.css" rel="stylesheet" />
<link href="../../source/mvc/assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link href="../../source/mvc/assets/vendor/css/pace.preloader.css" rel="stylesheet" />

<!-- Theme JS -->		
<script src="../../source/mvc/assets/js/jquery.mmenu.min.js"></script>
<script src="../../source/mvc/assets/js/core.min.js"></script>

</head>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
SimpleDateFormat sdf = new SimpleDateFormat( "yyyy-MM-dd HH:mm:ss" );
String time = sdf.format(new Date());
%>
<body>
	<!-- Start: Header 菜单部分开始-->
	<div class="navbar" role="navigation">
		<div class="container-fluid container-nav">
			<!-- Navbar Right -->
			<div class="navbar-right">
				<!-- Userbox -->
				<div class="userbox">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <figure
							class="profile-picture hidden-xs"> <img
							src="assets/img/avatar.jpg" class="img-circle" alt="" /> </figure>
						<div class="profile-info">
							<span class="name">150****7208</span>
						</div> <i class="fa custom-caret"></i>
					</a>
					<div class="dropdown-menu">
						<ul class="list-unstyled">
							<li class="dropdown-menu-header bk-bg-white bk-margin-top-15">
								<div class="progress progress-xs  progress-striped active">
									<div class="progress-bar progress-bar-primary"
										role="progressbar" aria-valuenow="60" aria-valuemin="0"
										aria-valuemax="100" style="width: 60%;">60%</div>
								</div>
							</li>
							<li><a href="javascript:void(0);"><i class="fa fa-user"></i>
									我的账户</a></li>
							<li><a href="javascript:void(0);"><i
									class="fa fa-wrench"></i>重置密码</a></li>

							<li><a href="javascript:void(0);"><i
									class="fa fa-power-off"></i>退出</a></li>
						</ul>
					</div>
				</div>
				<!-- End Userbox -->
			</div>
			<!-- End Navbar Right -->
		</div>
	</div>
	<!-- End: Header -->
	<!-- Start: Content -->
	<div class="container-fluid content">
		<div class="row">
			<!-- Sidebar -->
			<div class="sidebar">
				<div class="sidebar-collapse">
					<!-- Sidebar Header Logo-->
					<div class="sidebar-header">
						<img src="assets/img/logo.png" class="img-responsive" alt="" />
					</div>
					<!-- Sidebar Menu-->
					<div class="sidebar-menu">
						<nav id="menu" class="nav-main" role="navigation">
						<ul class="nav nav-sidebar">
							<div class="panel-body text-center">
								<div class="flag">
									<!--<img src="assets/img/flags/USA.png" class="img-flags" alt="" />-->
								</div>
							</div>
							<li class="active"><a href="javascript:void(0);"> <i
									class="fa fa-laptop" aria-hidden="true"></i><span> 消息管理</span>
							</a></li>
							<li class="nav-parent"><a href="javascript:void(0);"> <i
									class="fa fa-copy" aria-hidden="true"></i><span> 用户管理</span>
							</a>
								<ul class="nav nav-children">
									<li><a href="javascript:void(0);" data-toggle="tab"><span
											class="text"> 创建/编辑用户</span></a></li>
									<li><a href="javascript:void(0);" data-toggle="tab"><span
											class="text"> 查看</span></a></li>
								</ul></li>
							<li class="nav-parent"><a href="javascript:void(0);"> <i
									class="fa fa-tasks" aria-hidden="true"></i><span> 授权管理</span>
							</a>
								<ul class="nav nav-children">
									<li><a href="javascript:void(0);"><span class="text">
												菜单管理</span></a></li>
									<li><a href="javascript:void(0);"><span class="text">
												角色管理</span></a></li>
									<li><a href="javascript:void(0);"><span class="text">
												操作日志</span></a></li>
								</ul></li>
								
							<li class="nav-parent"><a href="javascript:void(0);"> <i
									class="fa fa-tasks" aria-hidden="true"></i><span> 文档管理</span>
							</a>
								<ul class="nav nav-children">
									<li><a href="../pages/filetarget_list.jsp"><span class="text">
												文档类别管理</span></a></li>
									<li><a href="../pages/file_list.jsp"><span class="text">
												文档管理</span></a></li>
								</ul></li>
						</ul>
						</nav>
					</div>
					<!-- End Sidebar Menu-->
				</div>
			</div>
		</div>
	</div>
	<!-- End Sidebar 菜单部分结束-->


	<!-- 功能部分开始 -->
	<div id="page">
		<section id="page-content">
		<div id="Inquire-two">
			<!-- 查询模块 -->
			<form id="searchFrom">
				<div class="input-group">
					<label for="menu_name">文档名称：</label> 
					<input id="fileName" name="fileName" usemap="{'logic':'and','compare':'like'}" placeholder="请输入文档名称" /> 
					<span class="input-group-btn">
						<button type="button" class="btn btn-zdy search" id="search">查询</button>
					</span>
				</div>
			</form>
			<div>
				<!-- 上传文档按钮 -->
				<p class="send">
					<button class="btn btn-zdy" data-toggle="modal" data-target="#addcontent">上传文档</button>
				</p>

				<!-- 文档列表 -->	
				<table class="table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>序号</th>
							<th>文档名称</th>
							<th>文档类别</th>
							<th>创建时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="mytable">

					</tbody>
				</table>
			</div>
		</div>
		</section>

		<!-- 新增 -->
		<div class="modal fade" id="addcontent" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="ModalLabel">上传文档</h4>
					</div>

					<form id="formId" enctype="multipart/form-data" class="form-horizontal">
						<div class="form-group">
							<label for="contentname" class="col-sm-3 control-label">文档父类：</label>
							<div class="col-sm-4">
								<select id="s1" name="s1" onChange="clickOpt();"
									style="height: 33px; width: 100%; border-color: #e3e6f3;">
									<option value="0">请选择</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="contentname" class="col-sm-3 control-label">文档类别：</label>
							<div class="col-sm-4">
								<select id="s2" name="s2" onChange="clickOpt2();"
									style="height: 33px; width: 100%; border-color: #e3e6f3;">
									<option value="0">请选择</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="contentname" class="col-sm-3 control-label">上传文档：</label>
							<div class="col-sm-4">
								<input type="file" name="detail" multiple="multiple">
							</div>
						</div>

						<div class="modal-footer ">
							<button type="button" class="btn btn-zdy" id="submit">确定</button>
							<button type="button" class="btn btn-zdy" data-dismiss="modal" id="miss">取消</button>
						</div>
					</form>
				</div> <!-- /.modal-content -->
			</div> <!-- /.modal -->
		</div><!-- /.modal fade -->
		
	</div>
	<!-- 功能部分结束 -->
</body>


<script type="text/javascript">
//查询按钮绑定点击事件
CUI.use([ 'ajaxform', 'utils', 'layer' ], function($ajax, $utils,$layer) {
	return {
		initialize : function() {//页面加载后执行
			var time = '<%=time %>';
			pageSearch(1);// 查询列表第一页数据
			listSearch();// 查询select选择框数据
			$("#search").on("click",function() {
				pageSearch(1);
			});
			new CuiAjaxForm($('#formId'), {// 新增文档
				submitSelector : $('#submit'),
				action : '../../updownload/upload',
				beforeEvent : function(formData, jqForm, options) {
					$.insertDynamicDataForTheForm(formData,
							jqForm, options, 'jdbcTemplateName', 'mysqlTemplate');
					$.insertDynamicDataForTheForm(formData,
							jqForm, options, 'pFile', 'file');
					$.insertDynamicDataForTheForm(formData,
							jqForm, options, 'pKey', 'insertFile');
					return true;
				},
				callbackEvent : function(result) {
					if (result.status == 'success') {
						alert('上传成功!');
						$("#miss").click();// 关闭新增窗口
						location.reload();// 重载页面，刷新列表
					}
				}
			});
		}// /.initialize
	}// /.return
});// /.CUI.use

// 分页查询
function pageSearch(pageNo) {
	var pageSize = 6;// 每页条目数
	$.asyncRequest({
		url : '../../member/pageSearch',
		data : $.extend({}, {
			"jdbcTemplateName" : "mysqlTemplate",
			"pFile" : "file",
			"pKey" : "selectFilelist",
			"type" : "mysql",
			"pageNo" : pageNo,
			"pageSize" : pageSize,
			"order" : ""
		}, 
		$('#searchFrom').buildQueryInfo(), true),
		event : function(result) {
			if (result.status === 'success') {
				//后台返回的结果集，格式:
				var pageSource = result.listInfo;
				//alert(JSON.stringify(pageSource));
				$("#mytable").html("");// 清空列表
				$(pageSource.list).each(
					function(index, element) {
						var ind = parseInt(index) + 1;
						var filetarget = element.filetarget;
						if(filetarget == null) {
							filetarget = "";
						}
						var targetname = element.targetname;
						if(targetname == null) {
							targetname = "";
						}
						var createtime = element.createtime;
						if(createtime == null) {
							createtime = "";
						}
						$("#mytable").append(
								"<tr><td>"+ind
								+ "</td><td>"
								+ element.filename
								+"</td><td>"
								+ targetname
								+"</td><td>"
								+ createtime
								+"</td><td>"
								+ "<a href=\"javascript:void(0)\" onclick=\"deletefile("
								+ "'" + element.id +"'" + ")\">"
								+ "删除</a>"
								+ " | <a href=\"javascript:void(0)\" onclick=\"downloadfile("
								+ "'" + element.filenewname +"'" + ","
								+ "'" + element.filename + "'" + ","
								+ "'" + element.filesuffix + "'" + ")\">"
								+ "下载</a>"
								+ "</td></tr>"
								);
					});
				$("#mytable").append("<tr><td colspan=\"8\" id=\"pager\"></td></tr>");
				//创建分页
				var target = $('#pager');
				pageClick(pageSource.pageNo, pageSource.total,target,pageSize);
			}
		},
	});
}

// 下载; Param:存储的文档名，原文档名，后缀
function downloadfile(filenewname,filename,filesuffix) {//
	window.location.href = "../../updownload/download?storeName="+filenewname+filesuffix+"&downloadName="+filename;
}
// 删除; Param:文档ID
function deletefile(id) {
	if (confirm("确认删除吗")) {
		$.ajax({
			url : "../../member/formProcessing",
			data : {
				"jdbcTemplateName" : "mysqlTemplate",
				"pFile" : "file",
				"pKey" : "deleteFile",
				"id" : id
			},
			dataType : "json",
			type : 'post',
			async : false,
			success : function(result) {
				if (result.status === 'success') {
					alert("删除成功!");
					location.reload();// 重载页面，刷新列表
				}
			}
		})
	} else {
		return;
	}
}

var selectSource;
// 报文类别列表 select数据
function listSearch() {
	$.asyncRequest({
		url : '../../member/baseQuery',
		data : $.extend({}, {
			"jdbcTemplateName" : "mysqlTemplate",
			"pFile" : "file",
			"pKey" : "selectFileTargetList",
		}, 
		$('#searchFrom').buildQueryInfo(), true),
		event : function(result) {
			if (result.status === 'success') {
				//后台返回的结果集，格式:
				var pageSource = result.listInfo;
				selectSource = pageSource;
				//下面写你的任何业务
				//alert(JSON.stringify(pageSource));
				$("#s1").html("");// 清空
				$("#s2").html("");// 清空
				var s1 = "<option value='0'>请选择</option>";
				var s2 = "<option value='0'>请选择</option>";
				for (var i = 0; i < pageSource.length; i++) {
					if(pageSource[i].targetlevel == '1') {
						s1 += "<option value='"+pageSource[i].id+"'>"+pageSource[i].targetname+"</option>"
					} else if(pageSource[i].targetlevel == '2'){
						s2 += "<option value='"+pageSource[i].id+"'>"+pageSource[i].targetname+"</option>"
					}
					
				}
				$("#s1").html(s1);
				$("#s2").html(s2);
			}
		},
	});
}

// select 二级联动1
function clickOpt(){  
    var value = $("#s1").val();
    var c_value = $("#s2").val();
	
	var s2 = "<option value='0'>请选择</option>";
	for (var i = 0; i < selectSource.length; i++) {
		/* if(value == 0) {
			s2 += "<option value='"+selectSource[i].id+"'>"+selectSource[i].targetname+"</option>"
		} else { */
			if(selectSource[i].targetlevel == '1') {
				//s1 += "<option value='"+pageSource[i].id+"' parentid='"+pageSource[i].parentid+"'>"+pageSource[i].targetname+"</option>"
			} else if(selectSource[i].targetlevel == '2' && (selectSource[i].parentid == value || value == '0')){
				if(c_value == selectSource[i].id) {
					s2 += "<option selected = 'selected' value='"+selectSource[i].id+"'>"+selectSource[i].targetname+"</option>"
				} else {
					s2 += "<option value='"+selectSource[i].id+"'>"+selectSource[i].targetname+"</option>"
				}
			}
		/* } */
	}
	$("#s2").html("");// 清空
	$("#s2").html(s2);
}

//select 二级联动2
function clickOpt2() {
	var p_value = $("#s1").val();
	var value = $("#s2").val();
	if (p_value == "0" && value != "0") {
		var s1 = "<option value='0'>请选择</option>";
		var select;
		for (var i = 0; i < selectSource.length; i++) {
			if(value == selectSource[i].id) {
				select = selectSource[i].parentid;
			}
		}
		for (var i = 0; i < selectSource.length; i++) {
			if (selectSource[i].targetlevel == '1') {
				if(selectSource[i].id == select) {
					s1 += "<option selected = 'selected' value='"+selectSource[i].id+"'>" + selectSource[i].targetname + "</option>"
				} else {
					s1 += "<option value='"+selectSource[i].id+"'>" + selectSource[i].targetname + "</option>"
				}
			} else if (selectSource[i].targetlevel == '2') {
				//s2 += "<option value='"+selectSource[i].id+"'>"+selectSource[i].targetname+"</option>"
			}
		}
		$("#s1").html("");// 清空
		$("#s1").html(s1);
		clickOpt();// 设置二级标签
	} else {

	}
}
	</script>
</html>