<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.UUID"%>
<%
	String token = UUID.randomUUID().toString().replaceAll("-", "");
	session.setAttribute("CustomerEidtToken", token);
%>
<div id="edit-dialog-message" class="modal fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> 
   <div class="modal-dialog"> 
    <div class="modal-content"> 
     <div class="modal-header"> 
      <button type="button" class="close" data-dismiss="modal" id="edit-close"> <span aria-hidden="true">&times;</span><span class="sr-only">x</span> </button> 
      <h6 class="modal-title" id="myModalLabel"> <i class="icon-edit align-top bigger-125"></i>&nbsp;修改客户信息 </h6> 
     </div> 
     <!--.modal-header  --> 
     <div class="modal-body"> 
      <form id="add-form-dialog" class="form-horizontal" role="form"> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="edit-name"> 客户名称： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="edit-name" class="col-xs-8" /><div id="edit-name-tip"></div> 
        </div> 
       </div> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="edit-abbreviation"> 简称： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="edit-abbreviation" class="col-xs-8" /><div id="edit-abbreviation-tip"></div> 
        </div> 
       </div> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="edit-address"> 地址： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="edit-address" class="col-xs-8" /> <div id="edit-address-tip"></div>
        </div> 
       </div> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="edit-postalCode">邮政编码： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="edit-postalCode" class="col-xs-8" /> <div id="edit-postalCode-tip"></div>
        </div> 
       </div> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="edit-phone"> 电话： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="edit-phone" class="col-xs-8" /> <div id="edit-phone-tip"></div>
        </div> 
       </div> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="edit-fax"> 传真： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="edit-fax" class="col-xs-8" /> <div id="edit-fax-tip"></div>
        </div> 
       </div> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="edit-contacts"> 联系人： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="edit-contacts" class="col-xs-8" /> <div id="edit-contacts-tip"></div>
        </div> 
       </div> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="edit-telephone">联系人电话： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="edit-telephone" class="col-xs-8" /> <div id="edit-telephone-tip"></div>
        </div> 
       </div> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="edit-email"> 电子邮箱： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="edit-email" class="col-xs-8" /> <div id="edit-email-tip"></div>
        </div> 
       </div> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="edit-depositBank">开户行： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="edit-depositBank" class="col-xs-8 " /> <div id="edit-depositBank-tip"></div>
        </div> 
       </div> 
       <div class="form-group"> 
        <label class="col-sm-3 control-label no-padding-right font" for="edit-accountBank">开户帐号： </label> 
        <div class="col-sm-9"> 
         <input type="text" id="edit-accountBank" class="col-xs-8 " /> <div id="edit-accountBank-tip"></div>
        </div> 
       </div>
       <input type="hidden" name="formtoken"  value="<%=token%>"  id="edit-formtoken">
       <input type="hidden" name="id"   id="edit-id">
       <!-- 警告框 -->
       <div class="hide" id="edit-warning-block" style="background-color:#fcf8e3;">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
          <div id="eidt-content" style="text-align: center;"></div>
        <span class="sr-only">Close</span>
       </div>
<!--        <div class="form-group">  -->
<!--         <label class="col-sm-3 control-label no-padding-right font" for="form-field-1">选择客户： </label>  -->
<!--         <div class="col-sm-9">  -->
<!--          <select id="form-field-1" class="col-xs-8"> <option value="">&nbsp;</option> <option value="">&nbsp;</option> </select>  -->
<!--         </div>  -->
<!--        </div> -->
       <!--.form-group  --> 
      </form> 
     </div>
     <!--.modal-body  --> 
     <div class="modal-footer"> 
      <button type="button" class="btn btn-default btn-sm" data-dismiss="modal" id="edit-cancel"><i class="icon-remove bigger-110"></i>取消</button> 
      <button type="button" class="btn btn-primary btn-sm" id="edit-ok"><i class="icon-ok bigger-110" autocomplete="off"  data-loading-text="正在处理中..." ></i>确定</button> 
     </div> 
     <!--.modal-footer  --> 
    </div>
    <!--.modal-content  --> 
   </div>
   <!--.modal-dialog  --> 
  </div>
<!--.edit-dialog-message  -->
<script type="text/javascript">
$(document).ready(function() {

	$("#bt-edit-dialog").on('click',function(){
		var selectedItems2 = new Array();
		$("input[name='checkbox']:checked").each(function() {
			selectedItems2.push($(this).val());
		});
		if (selectedItems2 .length == 0) {
			alert("我神经病");
			return;
// 			$("#eidt-content").html("<hr>没勾选任何记录");
// 			$("#edit-warning-block").css('color','red').removeClass("hide");
		}
	});
	$("#edit-ok").on('click',function() { //提交事件
		  var $btn = $(this).button('loading');
		  var selectedItems2 = new Array();
			$("input[name='checkbox']:checked").each(function() {
				selectedItems2.push($(this).val());
			});
			if (selectedItems2 .length == 0) {
				$("#eidt-content").html("<hr>没勾选任何记录");
				$("#edit-warning-block").css('color','red').removeClass("hide");
		        $btn.button('reset');
			}
			else{
				$.ajax({ 
				    type: "POST", 
				    url: "admin/searchCustomerById", 
				    data: "deleteId=" + selectedItems2.join(','), 
				    dataType: "json", 
				    async: false,
				    success: function (data) {
						 $("#edit-id").attr("value",data.id);
						 $("#edit-name").attr("value",data.name);
						 $("#edit-abbreviation").attr("value",data.abbreviation);
						 $("#edit-address").attr("value",data.address);
						 $("#edit-postalCode").attr("value",data.postalCode);
						 $("#edit-phone").attr("value",data.phone);
						 $("#edit-fax").attr("value",data.fax);
						 $("#edit-contacts").attr("value",data.contacts);
						 $("#edit-telephone").attr("value",data.telephone);
						 $("#edit-email").attr("value",data.email);
						 $("#edit-depositBank").attr("value",data.depositBank);
						 $("#edit-accountBank").attr("value",data.accountBank);
						 $.ajax({
					            type: "POST",
					            url: "admin/editCustomer",
					            contentType: "application/json",
					            // 必须有
					            dataType: "json",
					            // 表示返回值类型，不必须
					            data: JSON.stringify({
						            'id':$("#edit-id").val(),
					                'name': $("#edit-name").val(),
					                'abbreviation': $("#edit-abbreviation").val(),
					                'address': $("#edit-address").val(),
					                'postalCode': $("#edit-postalCode").val(),
					                'phone': $("#edit-phone").val(),
					                'fax': $("#edit-fax").val(),
					                'contacts': $("#edit-contacts").val(),
					                'telephone': $("#edit-telephone").val(),
					                'email': $("#edit-email").val(),
					                'depositBank': $("#edit-depositBank").val(),
					                'accountBank': $("#edit-accountBank").val(),
					                'formtoken': $("#edit-formtoken").val()
					            }),
					            async: false,
					            success: function(data) {
						            if(data.tip != null){
									    $("#eidt-content").html(data.tip);
						                $("#edit-warning-block").css('color','red').removeClass("hide");
							        }
						            else{
						            	if(data.success != null){
							            	 $("#eidt-content").html('修改信息成功<hr><div style="background-color:#fcf8e3;color: green;"><a href="coop/kehuguanli.html" style="color:green;"><span id="mysecond">'+3+'</span>秒自动跳转</a><div>');
							            	 countDown(3, "coop/kehuguanli.html");
							            	$("#edit-warning-block").css('color','green').removeClass("hide");
								        }
								        else{
								            if(data.name != null){
								            	$("#edit-name-tip").html('<span class="formtips onError" style="font-size:30%">' + data.name + '</span>');
									        }
									        if(data.abbreviation != null){
									        	$("#edit-abbreviation-tip").html('<span class="formtips onError" style="font-size:30%">' + data.abbreviation + '</span>');
										    }
									        if(data.address != null){
									        	$("#edit-address-tip").html('<span class="formtips onError" style="font-size:30%">' + data.address + '</span>');
										    }
									        if(data.postalCode != null){
									        	$("#edit-postalCode-tip").html('<span class="formtips onError" style="font-size:30%">' + data.postalCode + '</span>');
										    }
									        if(data.phone != null){
									        	$("#edit-phone-tip").html('<span class="formtips onError" style="font-size:30%">' + data.phone + '</span>');
										    }
									        if(data.fax != null){
									        	$("#edit-fax-tip").html('<span class="formtips onError" style="font-size:30%">' + data.fax + '</span>');
										    }
									        if(data.contacts != null){
									        	$("#edit-contacts-tip").html('<span class="formtips onError" style="font-size:30%">' + data.contacts + '</span>');
										    }
									        if(data.telephone != null){
									        	$("#edit-telephone-tip").html('<span class="formtips onError" style="font-size:30%">' + data.telephone + '</span>');
										    }
									        if(data.email != null){
									        	$("#edit-email-tip").html('<span class="formtips onError" style="font-size:30%">' + data.email + '</span>');
										    }
									        if(data.depositBank != null){
									        	$("#edit-depositBank-tip").html('<span class="formtips onError" style="font-size:30%">' + data.depositBank + '</span>');
										    }
									        if(data.accountBank != null){
									        	$("#edit-accountBank-tip").html('<span class="formtips onError" style="font-size:30%">' + data.accountBank + '</span>');
										    }
										    $("#edit-content").html("修改信息失败");
							                $("#edit-warning-block").css('color','red').removeClass("hide");
									    }
							        }
					            },
					            error: function(XMLHttpRequest, textStatus, errorThrown) {
					                alert(XMLHttpRequest.status + "-" + XMLHttpRequest.readyState + "-" + textStatus);
					            }
					        }).always(function() {
					            $btn.button('reset');
					        }); //ajax
				      }
			        }); //ajax;
			}
	   });//提交事件
	   
	   $("#edit-cancel").on("click",function(){//取消事件
		  $.get("coop/kehuguanli.html", function (data, textStatus){
			 $("#edit-warning-block").addClass("hide");
			 $("#edit-id").attr("value",'');
			 $("#edit-name").attr("value",'');
			 $("#edit-abbreviation").attr("value",'');
			 $("#edit-address").attr("value",'');
			 $("#edit-postalCode").attr("value",'');
			 $("#edit-phone").attr("value",'');
			 $("#edit-fax").attr("value",'');
			 $("#edit-contacts").attr("value",'');
			 $("#edit-telephone").attr("value",'');
			 $("#edit-email").attr("value",'');
			 $("#edit-depositBank").attr("value",'');
			 $("#edit-accountBank").attr("value",'');
			 $("#edit-name-tip").html("");
			 $("#edit-abbreviation-tip").html("");
			 $("#edit-address-tip").html("");
			 $("#edit-postalCode-tip").html("");
			 $("#edit-phone-tip").html("");
			 $("#edit-fax-tip").html("");
			 $("#edit-contacts-tip").html("");
			 $("#edit-telephone-tip").html("");
			 $("#edit-email-tip").html("");
			 $("#edit-depositBank-tip").html("");
			 $("#edit-accountBank-tip").html("");
			});
	 	});
	 	
	   $("#edit-close").on("click",function(){//x事件
		  $.get("coop/kehuguanli.html", function (data, textStatus){
			 $("#edit-warning-block").addClass("hide");
			 $("#edit-id").attr("value",'');
			 $("#edit-name").attr("value",'');
			 $("#edit-abbreviation").attr("value",'');
			 $("#edit-address").attr("value",'');
			 $("#edit-postalCode").attr("value",'');
			 $("#edit-phone").attr("value",'');
			 $("#edit-fax").attr("value",'');
			 $("#edit-contacts").attr("value",'');
			 $("#edit-telephone").attr("value",'');
			 $("#edit-email").attr("value",'');
			 $("#edit-depositBank").attr("value",'');
			 $("#edit-accountBank").attr("value",'');
			 $("#edit-name-tip").html("");
			 $("#edit-abbreviation-tip").html("");
			 $("#edit-address-tip").html("");
			 $("#edit-postalCode-tip").html("");
			 $("#edit-phone-tip").html("");
			 $("#edit-fax-tip").html("");
			 $("#edit-contacts-tip").html("");
			$("#edit-telephone-tip").html("");
			 $("#edit-email-tip").html("");
			 $("#edit-depositBank-tip").html("");
			 $("#edit-accountBank-tip").html("");
			});
	 	});
});
</script>