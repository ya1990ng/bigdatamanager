<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>要素类别</title>

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
									class="fa fa-tasks" aria-hidden="true"></i><span> 要素管理</span>
							</a>
								<ul class="nav nav-children">
									<li><a href="../pages/filetarget_list.jsp"><span class="text">
												要素类别管理</span></a></li>
									<li><a href="../pages/file_list.jsp"><span class="text">
												要素管理</span></a></li>
								</ul></li>
								
							<li class="nav-parent"><a href="javascript:void(0);"> <i
									class="fa fa-tasks" aria-hidden="true"></i><span> 要素管理</span>
							</a>
								<ul class="nav nav-children">
									<li><a href="../pages/filetype.jsp"><span class="text">
												要素类别</span></a></li>
									<li><a href="javascript:void(0);"><span class="text">
												要素提取</span></a></li>
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
					<label for="menu_name">要素名称：</label>
					<input id="typeName" name="typeName" usemap="{'logic':'and','compare':'like'}" placeholder="请输入要素名称" /> 
					<span class="input-group-btn">
						<button type="button" class="btn btn-zdy search" id="search">查询</button>
					</span>
				</div>
			</form>
			<div>
				<!-- 添加要素类别按钮 -->
				<p class="send">
					<button class="btn btn-zdy" data-toggle="modal" data-target="#addcontent">添加要素类别</button>
				</p>

				<!-- 要素类别列表 -->	
				<table class="table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>序号</th>
							<th>要素名称</th>
							<th>要素级别</th>
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
		<div class="modal fade" id="addcontent" tabindex="-1" role="dialog"
			aria-labelledby="ModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="ModalLabel">添加要素类别</h4>
					</div>

					<form id="formId" enctype="multipart/form-data" class="form-horizontal">
						<div class="modal-body">
							<div class="form-group">
								<label for="contentname" class="col-sm-3 control-label">一级指标：</label>
								<div class="col-sm-4">
									<select id="type1" name="type1" onchange="clickOpt();"
										style="height: 33px; width: 100%; border-color: #e3e6f3;">
										<option value="0">请选择</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="contentname" class="col-sm-3 control-label">二级指标：</label>
								<div class="col-sm-4">
									<select id="type2" name="type2" onchange="clickOpt2();"
										style="height: 33px; width: 100%; border-color: #e3e6f3;">
										<option value="0">请选择</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="contentname" class="col-sm-3 control-label">三级指标：</label>
								<div class="col-sm-4">
									<select id="type3" name="type3" onchange="clickOpt3();"
										style="height: 33px; width: 100%; border-color: #e3e6f3;">
										<option value="0">请选择</option>
									</select>
								</div>
							</div>
							<!-- <div class="form-group">
								<label for="contentname" class="col-sm-3 control-label">四级指标：</label>
								<div class="col-sm-4">
									<select id="type4" name="type4"
										style="height: 33px; width: 100%; border-color: #e3e6f3;">
										<option value="0">请选择</option>
									</select>
								</div>
							</div> -->
							
							<input type="hidden" id="parentId" name="parentId" value="0"/>
							<input type="hidden" id="typeLevel" name="typeLevel" value="1"/>
							<div class="form-group">
								<label for="mname1" class="col-sm-3 control-label">指标名称：</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="typeName" name="typeName" />
								</div>
							</div>
						</div>
						<div class="modal-footer ">
							<button type="button" class="btn btn-zdy" id="submit">确定</button>
							<button type="button" class="btn btn-zdy" data-dismiss="modal" id="miss">取消</button>
						</div>
					</form>
				</div> <!-- /.modal-content -->
			</div> <!-- /.modal -->
		</div> <!-- /.modal fade -->
	</div>


	<!-- 修改 -->
	<div class="modal fade" id="ee" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">类别修改</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="editUI" method="post">
						<input type="hidden" value="" id="2_id" name="2_id" />
						<div class="modal-body">
							<div class="form-group">
								<label for="contentname" class="col-sm-3 control-label">一级指标：</label>
								<div class="col-sm-4">
									<select id="2_type1" name="2_type1" onchange="clickOpt_2();"
										style="height: 33px; width: 100%; border-color: #e3e6f3;">
										<option value="0">请选择</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="contentname" class="col-sm-3 control-label">二级指标：</label>
								<div class="col-sm-4">
									<select id="2_type2" name="2_type2" onchange="clickOpt2_2();"
										style="height: 33px; width: 100%; border-color: #e3e6f3;">
										<option value="0">请选择</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="contentname" class="col-sm-3 control-label">三级指标：</label>
								<div class="col-sm-4">
									<select id="2_type3" name="2_type3" onchange="clickOpt3_2();"
										style="height: 33px; width: 100%; border-color: #e3e6f3;">
										<option value="0">请选择</option>
									</select>
								</div>
							</div>
							<!-- <div class="form-group">
								<label for="contentname" class="col-sm-3 control-label">四级指标：</label>
								<div class="col-sm-4">
									<select id="type4" name="type4"
										style="height: 33px; width: 100%; border-color: #e3e6f3;">
										<option value="0">请选择</option>
									</select>
								</div>
							</div> -->
							
							<input type="hidden" id="2_parentId" name="2_parentId" value="0"/>
							<input type="hidden" id="2_typeLevel" name="2_typeLevel" value="1"/>
							<div class="form-group">
								<label for="mname1" class="col-sm-3 control-label">指标名称：</label>
								<div class="col-sm-6">
									<input type="text" class="form-control" id="2_typeName" name="2_typeName" />
								</div>
							</div>
						</div>
						<div class="modal-footer ">
							<button type="button" class="btn btn-zdy" id="sub">确定</button>
							<button type="button" class="btn btn-zdy" id="qx1" data-dismiss="modal">取消</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 功能部分结束 -->
</body>
<script type="text/javascript">
//查询按钮绑定点击事件
CUI.use([ 'ajaxform', 'utils', 'layer' ], function($ajax, $utils, $layer) {
	return {
		initialize : function() {//页面加载后执行
			var time = '<%=time %>';
			pageSearch(1);// 查询列表第一页数据
			listSearch();// 查询select选择框数据
			$("#search").on("click", function() {
				pageSearch(1);
			});
			// 新增
			new CuiAjaxForm($('#formId'), {
				submitSelector : $('#submit'),
				action : '../../target/formProcessing',
				beforeEvent : function(formData, jqForm, options) {
					$.insertDynamicDataForTheForm(formData, jqForm,
							options, 'jdbcTemplateName', 'mysqlTemplate');
					$.insertDynamicDataForTheForm(formData, jqForm,
							options, 'pFile', 'file');
					$.insertDynamicDataForTheForm(formData, jqForm,
							options, 'pKey', 'insertFileTarget');
					return true;
				},
				callbackEvent : function(result) {
					if (result.status == 'success') {
						alert('保存成功!');
						$("#miss").click();
						location.reload();
					}
				}
			});
			// 修改
			new CuiAjaxForm($('#editUI'), {
				submitSelector : $('#sub'),
				action : '../../target/formProcessing',
				beforeEvent : function(formData, jqForm, options) {
					$.insertDynamicDataForTheForm(formData, jqForm,
							options, 'jdbcTemplateName', 'mysqlTemplate');
					$.insertDynamicDataForTheForm(formData, jqForm,
							options, 'pFile', 'file');
					$.insertDynamicDataForTheForm(formData, jqForm,
							options, 'pKey', 'updateFileTarget');
					return true;
				},
				callbackEvent : function(result) {
					if (result.status == 'success') {
						alert('修改成功');
						$("#qx1").click();
						location.reload();
					}
				}
			});
		}
	}
});

// 分页查询
function pageSearch(pageNo) {
	var pageSize = 6;
	$.asyncRequest({
		url : '../../member/pageSearch',
		data : $.extend({}, {
			"jdbcTemplateName" : "mysqlTemplate",
			"pFile" : "file",
			"pKey" : "selectFileTypeList",
			"type" : "mysql",
			"pageNo" : pageNo,
			"pageSize" : pageSize,
			"order" : ""
		}, $('#searchFrom').buildQueryInfo(), true),
		event : function(result) {
			if (result.status === 'success') {
				//后台返回的结果集，格式:
				var pageSource = result.listInfo;
				//下面写你的任何业务
				//alert(JSON.stringify(pageSource));
				$("#mytable").html("");// 清空
				$(pageSource.list).each(
					function(index, element) {
						var ind = parseInt(index) + 1;
						$("#mytable").append(
						"<tr><td>"
						+ ind
						+ "</td><td>"
						+ element.typename
						+ "</td><td>"
						+ element.typelevel
						+ "</td><td>"
						+ "<a href=\"javascript:void(0)\" data-toggle=\"modal\" data-target=\"#ee\" onclick=\"edit("
						+ "'"
						+ element.id
						+ "'"
						+ ")\">"
						+ "修改</a> | "
						+ "<a href=\"javascript:void(0)\" onclick=\"deletefile("
						+ "'"
						+ element.id
						+ "'"
						+ ")\">"
						+ "删除</a>"
						+ "</td></tr>");
				});
				$("#mytable").append("<tr><td colspan=\"8\" id=\"pager\"></td></tr>");
				//创建分页
				var target = $('#pager');
				pageClick(pageSource.pageNo, pageSource.total,target, pageSize);
			}
		},
	});
}

var selectSource;
// 父类list
function listSearch() {
	$.asyncRequest({
		url : '../../member/baseQuery',
		data : $.extend({}, {
			"jdbcTemplateName" : "mysqlTemplate",
			"pFile" : "file",
			"pKey" : "selectFileTypeList",
		}, $('#searchFrom').buildQueryInfo(), true),
		event : function(result) {
			if (result.status === 'success') {
				//后台返回的结果集，格式:
				var pageSource = result.listInfo;
				selectSource = pageSource;
				//下面写你的任何业务
				//alert(JSON.stringify(pageSource));
				var type1Html = "<option value='0'>请选择</option>";
				var type2Html = "<option value='0'>请选择</option>";
				var type3Html = "<option value='0'>请选择</option>";
				var type4Html = "<option value='0'>请选择</option>";
				for (var i = 0; i < pageSource.length; i++) {
					if(pageSource[i].typelevel == '1') {
						type1Html += "<option value='"+pageSource[i].id+"'>" + pageSource[i].typename + "</option>";
					} else if(pageSource[i].typelevel == '2') {
						type2Html += "<option value='"+pageSource[i].id+"'>" + pageSource[i].typename + "</option>";
					} else if(pageSource[i].typelevel == '3') {
						type3Html += "<option value='"+pageSource[i].id+"'>" + pageSource[i].typename + "</option>";
					} else if(pageSource[i].typelevel == '4') {
						type4Html += "<option value='"+pageSource[i].id+"'>" + pageSource[i].typename + "</option>";
					}
				}
				$("#type1").html(type1Html);
				$("#2_type1").html(type1Html);
				//$("#type2").html(type2Html);
				//$("#type3").html(type3Html);
				//$("#type4").html(type4Html);
			}
		},
	});
}


//select 联动1
function clickOpt(){  
    var value = $("#type1").val();
    if(value != '0') {
    	var pageSource = selectSource;
    	var typeHtml = "<option value='0'>请选择</option>";
    	for (var i = 0; i < pageSource.length; i++) {
    		if(pageSource[i].typelevel == '2' && pageSource[i].parentid == value) {
    			typeHtml += "<option value='"+pageSource[i].id+"'>" + pageSource[i].typename + "</option>";
    		}
    	}
    	$("#type2").html(typeHtml);
    	$("#type3").html("");
    	$("#parentId").val(value);
    	$("#typeLevel").val(2);
    } else {
    	$("#type2").html("");
    	$("#type3").html("");
    	$("#parentId").val(0);
    	$("#typeLevel").val(1);
    }
     
	
	
}
//select 联动2
function clickOpt2(){  
    var value = $("#type2").val();
    if(value != '0') {
	    var pageSource = selectSource;
		var typeHtml = "<option value='0'>请选择</option>";
		for (var i = 0; i < pageSource.length; i++) {
			if(pageSource[i].typelevel == '3' && pageSource[i].parentid == value) {
				typeHtml += "<option value='"+pageSource[i].id+"'>" + pageSource[i].typename + "</option>";
			}
		}
		$("#type3").html(typeHtml);
		$("#parentId").val(value);
    	$("#typeLevel").val(3);
    } else {
    	$("#type3").html("");
    	$("#parentId").val($("#type1").val());
    	$("#typeLevel").val(2);
    }
}
//select 联动3
function clickOpt3(){  
    var value = $("#type3").val();
    if(value != '0') {
		$("#parentId").val(value);
    	$("#typeLevel").val(4);
    } else {
    	$("#parentId").val($("#type2").val());
    	$("#typeLevel").val(3);
    }
}

//select_2 联动1
function clickOpt_2(){  
    var value = $("#2_type1").val();
    if(value != '0') {
    	var pageSource = selectSource;
    	var typeHtml = "<option value='0'>请选择</option>";
    	for (var i = 0; i < pageSource.length; i++) {
    		if(pageSource[i].typelevel == '2' && pageSource[i].parentid == value) {
    			typeHtml += "<option value='"+pageSource[i].id+"'>" + pageSource[i].typename + "</option>";
    		}
    	}
    	$("#2_type2").html(typeHtml);
    	$("#2_type3").html("");
    	$("#2_parentId").val(value);
    	$("#2_typeLevel").val(2);
    } else {
    	$("#2_type2").html("");
    	$("#2_type3").html("");
    	$("#2_parentId").val(0);
    	$("#2_typeLevel").val(1);
    }
     
	
	
}
//select_2 联动2
function clickOpt2_2(){  
    var value = $("#2_type2").val();
    if(value != '0') {
	    var pageSource = selectSource;
		var typeHtml = "<option value='0'>请选择</option>";
		for (var i = 0; i < pageSource.length; i++) {
			if(pageSource[i].typelevel == '3' && pageSource[i].parentid == value) {
				typeHtml += "<option value='"+pageSource[i].id+"'>" + pageSource[i].typename + "</option>";
			}
		}
		$("#2_type3").html(typeHtml);
		$("#2_parentId").val(value);
    	$("#2_typeLevel").val(3);
    } else {
    	$("#2_type3").html("");
    	$("#2_parentId").val($("#2_type1").val());
    	$("#2_typeLevel").val(2);
    }
}
//select_2 联动3
function clickOpt3_2(){  
    var value = $("#2_type3").val();
    if(value != '0') {
		$("#2_parentId").val(value);
    	$("#2_typeLevel").val(4);
    } else {
    	$("#2_parentId").val($("#2_type2").val());
    	$("#2_typeLevel").val(3);
    }
}

function deletefile(id) {
	if (confirm("确认删除吗")) {
		$.ajax({
			url : "../../member/formProcessing",
			data : {
				"jdbcTemplateName" : "mysqlTemplate",
				"pFile" : "file",
				"pKey" : "deleteFileType",
				"id" : id
			},
			dataType : "json",
			type : 'post',
			async : false,
			success : function(result) {
				if (result.status === 'success') {
					alert("删除成功!");
					pageSearch(1);
				}
			}
		})
	} else {
		return;
	}
}
//跳转编辑页面，回显数据
function edit(id) {
	$.ajax({
		url : '../../member/baseQuery',
		type : "post",
		data : {
			"jdbcTemplateName" : "mysqlTemplate",
			"pFile" : "file",
			"pKey" : "selectFileTypeInfo",
			"type" : "mysql",
			"id" : id
		},
		dataType : 'json',
		async : true,
		success : function(result) {
			if (result.status === 'success') {
				var listInfo = result.listInfo;

				var parentid = listInfo[0].parentid;
				var typelevel = listInfo[0].typelevel;
				$("#2_id").val(listInfo[0].id);// 赋值
				$("#2_parentId").val(parentid);// 赋值
				$("#2_typeLevel").val(typelevel);// 赋值
				$("#2_typeName").val(listInfo[0].typename);// 赋值
				
				var pageSource = selectSource;
				if(typelevel == '1') {
					
				} else if(typelevel == '2') {
					$("#2_type1").val(parentid);
					clickOpt_2();
				} else if(typelevel == '3') {
					var value1;
					for (var i = 0; i < pageSource.length; i++) {
			    		if(pageSource[i].typelevel == '2' && pageSource[i].id == parentid) {
			    			value1 = pageSource[i].parentid;
			    			break;
			    		}
			    	}
					$("#2_type1").val(value1);
					clickOpt_2();
					$("#2_type2").val(parentid);
					clickOpt2_2();
				} else if(typelevel == '4') {
					var value1;
					for (var i = 0; i < pageSource.length; i++) {
			    		if(pageSource[i].typelevel == '3' && pageSource[i].id == parentid) {
			    			value1 = pageSource[i].parentid;
			    			break;
			    		}
			    	}
					var value2;
					for (var i = 0; i < pageSource.length; i++) {
			    		if(pageSource[i].typelevel == '2' && pageSource[i].id == value1) {
			    			value2 = pageSource[i].parentid;
			    			break;
			    		}
			    	}
					$("#2_type1").val(value2);
					clickOpt_2();
					$("#2_type2").val(value1);
					clickOpt2_2();
					$("#2_type3").val(parentid);
					clickOpt2_3();
				}
				
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert("跳转编辑页面失败");
		}
	});
}
</script>
</html>