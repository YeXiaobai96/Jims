<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.PropertyResourceBundle"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%PropertyResourceBundle configBundle = (PropertyResourceBundle)PropertyResourceBundle.getBundle("configs/scm"); %>
<jsp:include page="header.jsp"></jsp:include>
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
        <button class="btn btn-info" onclick="goPage('home.html')"> <i class="icon-pencil"></i></button> 
        <button class="btn btn-warning" onclick="goPage('home.html')"> <i class="icon-group"></i></button> 
        <button class="btn btn-danger" onclick="goPage('home.html')"> <i class="icon-cogs"></i></button> 
       </div><!--.sidebar-shortcuts-large  -->
       <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
           <span class="btn btn-success"></span>
           <span class="btn btn-info"></span>
           <span class="btn btn-warning"></span>
           <span class="btn btn-danger"></span>
      </div><!--.sidebar-shortcuts-mini  -->
     </div><!--sidebar-shortcuts  -->
     <!-- 导航条 -->
     <jsp:include page="nav.jsp"></jsp:include>
     <div class="sidebar-collapse" id="sidebar-collapse"> 
      <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i> 
     </div> 
     <script type="text/javascript">
        try {
          ace.settings.check('sidebar', 'collapsed')
        } catch (e) {
        }
      </script> 
    </div> 
    <div class="main-content"> 
     <div class="breadcrumbs" id="breadcrumbs"> 
      <script type="text/javascript">
          try {
            ace.settings.check('breadcrumbs', 'fixed')
          } catch (e) {
          }
        </script> 
      <ul class="breadcrumb"> 
       <li><i class="icon-home home-icon"></i> <a href="home.html"><%=configBundle.getString("index") %></a></li> 
       <li> 控制台</li> 
      </ul> 
      <!-- .breadcrumb --> 
      <div class="nav-search" id="nav-search"> 
       <form class="form-search"> 
        <span class="input-icon"> <input type="text" placeholder="请输入查询的内容" class="nav-search-input" id="nav-search-input" autocomplete="off" /> <i class="icon-search nav-search-icon"></i> </span> 
       </form> 
      </div> 
      <!-- #nav-search --> 
     </div> 
     <div class="page-content"> 
      <div class="page-header"> 
       <h1>控制台<i class="icon-double-angle-right"></i><small> 登录成功 </small> </h1> 
      </div> 
      <!-- /.page-header --> 
      <div class="row"> 
       <div class="col-xs-12"> 
        <!-- PAGE CONTENT BEGINS --> 
        <div class="alert alert-block alert-success"> 
         <button type="button" class="close" data-dismiss="alert"> <i class="icon-remove"></i> </button> 
         <i class="icon-ok green"></i><%=configBundle.getString("weclome") %><%=configBundle.getString("use") %>
         <strong class="green"><%=configBundle.getString("title") %><small><%=configBundle.getString("version") %></small> </strong> 
        </div><!--.alert alert-block alert-success  -->
       </div>
       <!-- /.col-xs-12 -->
       <div class="space-6"></div>
       <div class="col-sm-7 infobox-container">
       <div class="infobox infobox-green">
          <div class="infobox-icon"> 
            <i class="icon-list-alt"></i> 
          </div> 
         <div class="infobox-data"> 
           <span class="infobox-data-number">32</span> 
           <div class="infobox-content">进货</div> 
         </div> 
         <div class="stat stat-success">8%</div> 
       </div><!--.infobox infobox-green  -->
       <div class="infobox infobox-pink">
          <div class="infobox-icon"> 
            <i class="icon-shopping-cart"></i> 
          </div> 
         <div class="infobox-data"> 
           <span class="infobox-data-number">32</span> 
           <div class="infobox-content">销售</div> 
         </div> 
         <div class="stat stat-important">4%</div> 
       </div><!--.infobox infobox-green  -->
       </div><!--.col-sm-7 infobox-container  -->
       <div id="qzcode"></div>
       <div class="hide"><img alt="条形码" src="barcode?msg=9787302337416" height="50px" width=130px/> </div>
       <script type="text/javascript">
       var content= toUtf8("欢迎使用jscm,  本系统由莫梓奇开发");
       jQuery(function(){
         $("#qzcode").qrcode({ 
            render: "table", //table方式 
            width: 300, //宽度 
            height:300, //高度 
            text: content//任意内容 
        }); 
      })
       </script>
      </div> 
      <!-- /.row --> 
     </div> 
     <!-- /.page-content --> 
    </div> 
    <!-- /.main-content --> 
    <!-- 工具导入 -->
    <jsp:include page="tool.jsp"></jsp:include>
    <!-- /#ace-settings-container --> 
   </div> 
   <!-- /.main-container-inner --> 
   <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse"> <i class="icon-double-angle-up icon-only bigger-110"></i> </a> 
  </div>  
 </body>
</html>