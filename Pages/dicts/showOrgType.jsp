<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.TonFun.Base.controller.sys.BtnController"%>
<%
    String path = request.getContextPath();   
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<jsp:include page="/Pages/common/CommomRef.jsp" />
<link href="<%=path %>/css/icon.css" rel="stylesheet" type="text/css" />	
<link rel="stylesheet" href="<%=path%>/css/basecommon/loadingstyle.css"/>
<link rel="stylesheet" href="<%=path%>/css/basecommon/addBase.css"/>  
<link rel="stylesheet" href="<%=path%>/css/sys/org.css"/>  
<script type="text/javascript" src="<%=path %>/js/easyui/jquery.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/easyui/jquery.easyui.min.js"></script>
<script type="text/JavaScript" src="<%=path %>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=path %>/js/common/utils.js"></script>
<script type="text/javascript" src="<%=path %>/js/common/tips.js"></script>
<script type="text/javascript" src="<%=path %>/js/common/baseCommon.js"></script>
<script type="text/javascript" src="<%=path %>/js/pages/dicts/OrgType.js"></script>
<title>机构类型</title>
<style>
	.datagrid-wrap{border:1px solid #8DB2E3;}
</style>
</head>
<body>

<div class="easyui-layout" id="pagecontent" style="width: 100%; height: 100%;">	
   	<div region="center" id="centers" style="width:100%; height: 100%;">
		<div class='tf-toolbar' id="toolbar"></div>
		<table id="dg" class="easyui-datagrid" style="width:100%;height:95%" 
		 	data-options="singleSelect:true,method:'get',rownumbers:true,boder:true,sortOrder:'asc',remoteSort:false">
		 	<thead>
			 	<tr>
			 		<th field="orgTypeID" width="10%" hidden="true">机构类型ID</th>
			 		<th field="orgType" width="200px">机构类型</th>
			 	</tr>
		 	</thead>
		 </table> 
		<div id="dlg" class="easyui-dialog" style="width:410px;height:180px;padding:1px 2px;" closed="true" buttons="#dlg-buttons">
			<form id="fm" method="post" >
	 			<div  class="contents">
	 				<label><p class="symbol floatLeft" style="margin-top:6px;">*</p><p class="contents_letter " >机构类型：</p></label>
	 				<input name="orgType" class="promptBox" maxlength="50" id="orgType" />
	 			</div>
			</form>
		</div>
		<div id="dlg-buttons" >
			<button class="easyui-linkbutton c6" iconCls="icon-ok" onclick="save()" style="width:90px" id="save">确定</button>
			<button class="easyui-linkbutton" iconCls="icon-cancel" onclick="checkClose()" style="width:90px;">取消</button>
		</div>
	</div>
</div>
</body>
</html>