<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jspf/taglibs.jspf" %>
<jsp:include page="/WEB-INF/view/header.jsp"></jsp:include> 
  <div class="main-container" id="main-container"> 
   <script type="text/javascript">
		try {
			ace.settings.check('main-container', 'fixed')
		} catch (e) {
		}
	</script> 
   <div class="main-container-inner"> 
    <a class="menu-toggler" id="menu-toggler" href="#"> <span class="menu-text"></span> </a> 
    <div class="sidebar" id="sidebar"> 
     <script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'fixed')
				} catch (e) {
				}
	 </script>
	  <div class="sidebar-shortcuts" id="sidebar-shortcuts"> 
       <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large"> 
        <button class="btn btn-success" onclick="goPage('home.html')"><i class="icon-signal"></i></button> 
        <button class="btn btn-info" onclick="goPage('coop/jinhuodan.html')"> <i class="icon-pencil"></i></button> 
        <button class="btn btn-warning" onclick="goPage('home.html')"> <i class="icon-group"></i></button> 
        <button class="btn btn-danger" onclick="goPage('home.html')"> <i class="icon-cogs"></i></button> 
       </div><!--.sidebar-shortcuts-large  -->
       <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
           <span class="btn btn-success"></span>
           <span class="btn btn-info"></span>
           <span class="btn btn-warning"></span>
           <span class="btn btn-danger"></span>
      </div>
     </div><!--sidebar-shortcuts  -->
     <!-- 导航条 --> 
     <jsp:include page="/WEB-INF/view/nav.jsp"></jsp:include> 
     <div class="sidebar-collapse" id="sidebar-collapse"> 
      <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i> 
     </div> <!--.sidebar-collapse  -->
     <script type="text/javascript">
				try {
					ace.settings.check('sidebar', 'collapsed')
				} catch (e) {
				}
			</script> 
    </div> <!--.sidebar  -->
    <div class="main-content"> 
     <div class="breadcrumbs" id="breadcrumbs"> 
      <script type="text/javascript">
					try {
						ace.settings.check('breadcrumbs', 'fixed')
					} catch (e) {
					}
				</script> 
      <ul class="breadcrumb"> 
       <li><i class="icon-home home-icon"></i> <a href="home.html">首页</a></li> 
       <li><a href="admin/kehuguanli.html">客户信息管理</a></li> 
      </ul> 
      <!-- .breadcrumb -->
     </div> 
     <div class="page-content"> 
      <div class="row"> 
       <div class="col-xs-12">
        <h3 class="header smaller lighter blue fixed-div">
          <jsp:include page="KeHuGuanLi_detailed.jsp"></jsp:include>
          <button id="bt-search-dialog" class="btn btn-primary btn-sm"  data-toggle="modal" data-target="#search-dialog-message"><i class="icon-search align-top bigger-125"  ></i>查询 </button>
          <jsp:include page="KeHuGuanLi_search.jsp"></jsp:include>
          <button id="bt-add-dialog" class="btn btn-primary btn-sm" data-toggle="modal"  data-target="#add-dialog-message"><i class="icon-plus-sign align-top bigger-125"></i>添加 </button> 
          <jsp:include page="KeHuGuanLi_add.jsp"></jsp:include>
          <button id="bt-edit-dialog" class="btn btn-primary btn-sm" ><i class="icon-edit align-top bigger-125"></i>修改</button>
          <jsp:include page="KeHuGuanLi_edit.jsp"></jsp:include> 
          <button id="bt-delete-dialog" class="btn btn-primary btn-sm" ><i class="icon-trash align-top bigger-125"></i>删除 </button> 
         <jsp:include page="KeHuGuanLi_delete.jsp"></jsp:include>
         <button id="bt-upload-dialog" class="btn btn-primary btn-sm" onclick="document.getElementById('file').click();" ><i class="icon-upload align-top bigger-125"></i>导入 </button>
         <input type="file" name="file" id="file" style="display:none" />
         <button id="bt-download-dialog" class="btn btn-primary btn-sm"  type="flle" ><i class="icon-download align-top bigger-125"></i>导出 </button>
         <div class="btn-group"> 
            <button data-toggle="dropdown" class="btn btn-primary  btn-sm2 dropdown-toggle"><i class="icon-stackexchange"></i> 更多<i class="icon-angle-down icon-on-right"></i></button> 
            <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close"> 
              <li> <a href="#" onclick="document.all.WebBrowser.ExecWB(6,1)"><i class="icon-print"></i> 打印</a> </li> 
              <li class="divider"></li> 
              <li> <a href="#"><i class="icon-download-alt"></i> 模版表格下载</a> </li> 
           </ul> 
         </div></h3>
         <div id="alert"></div>
         <div id="table-result">
          <div class="table-header">
            所有信息 
          </div> 
          <div class="table-responsive"> 
           <div id="sample-table-2_wrapper" class="dataTables_wrapper" role="grid">
              <div class="row" >
              <div class="col-sm-6"><div id="pager"  ><label >显示 <select size="1" onchange="javascript:gotoPage(1,'name=&beginTime=&endTime=')" id="p_pageSizeSelect">
                <option value="10" selected="selected" >10</option>
                <option value="25" >25</option>
                <option value="50" >50</option>
                <option value="100" >100</option></select>记录</label></div ><!--#page  -->
              </div>
              <div id="pages"></div>
             </div><!--.row  -->
            <form>
              <!-- 显示列表数据 --> 
              <table id="mytable" class="table table-striped table-bordered table-hover dataTable" aria-describedby="sample-table-2_info"> 
               <thead> 
                <tr role="row"> 
                 <th role="columnheader" rowspan="1" colspan="1" style="width: 57px;" aria-label=""> <label> <input type="checkbox" class="ace"  id="checkall"/> <span class="lbl"></span> </label> </th> 
                 <th  role="columnheader"  rowspan="1" colspan="1" style="width: 50px;" >序号</th>
                 <th  role="columnheader"  rowspan="1" colspan="1" style="width: 153px;" >名称</th> 
                 <th role="columnheader"  rowspan="1" colspan="1" style="width: 133px;" >地址</th> 
                 <th role="columnheader"  rowspan="1" colspan="1" style="width: 130px;" > <i class="icon-time bigger-110 hidden-480"></i>录入时间</th> 
                 <th  role="columnheader"  rowspan="1" colspan="1" style="width: 130px;" >联系电话 </th> 
                 <th  role="columnheader" rowspan="1" colspan="1" style="width: 156px;" aria-label="">操作</th> 
                </tr> 
               </thead> 
               <tbody role="alert" aria-live="polite" aria-relevant="all"  id="tb">
               </tbody> 
              </table>
             </form>
             <div class="row" ><div class="col-sm-6"  id="other"></div></div><!--.row  -->
           </div>
          </div> 
         </div>
       </div> 
       <!-- /.col --> 
      </div> 
      <!-- /.row --> 
     </div> 
     <!-- /.page-content --> 
    </div> 
    <!-- /.main-content --> 
    <script type="text/javascript">
	jQuery(function($) {
		
		/* 获取数据 */
		gotoPage(1,"name=&beginTime=&endTime=");
		
		/* 复选框操作 */
		$('table th input:checkbox').on('click' , function(){
			var that = this;
			$(this).closest('table').find('tr > td:first-child input:checkbox')
			.each(function(){
				this.checked = that.checked;
				$(this).closest('tr').toggleClass('selected');
			});
		});
		
	});
</script> 
    <!-- 工具导入 --> 
    <jsp:include page="/WEB-INF/view/tool.jsp"></jsp:include>
    <!-- /#ace-settings-container --> 
   </div>
   <!-- /.main-container-inner --> 
   <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse"> <i class="icon-double-angle-up icon-only bigger-110"></i> </a> 
  </div>
 </body>
</html>