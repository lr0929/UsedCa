//Jquery required
jQuery(
function() {

///validation method definition////////////////////////////////////////////////////////////////////////////////////////////////////////	
	
	//checkMobileExist         
	jQuery.validator.addMethod("mobileExist", function(value, element) {         
		return this.optional(element) || _mobile_verify.checkMobileExist(value);
	}, "���û����Ѿ����ڣ�����������");     
	
	//checkEmailExist         
	jQuery.validator.addMethod("emailExist", function(value, element) {         
		return this.optional(element) || checkEmailExist(value);         
	},"�������Ѿ����ڣ�����������");
	
	//checkValidCodeRight         
	jQuery.validator.addMethod("validCodeRight", function(value, element) {         
		return this.optional(element) || _mobile_verify.checkValidCodeRight(value);
	},"��֤�����");
	
	//checkNickNameExist         
	jQuery.validator.addMethod("nickNameExist", function(value, element) {         
		return this.optional(element) || checkNickNameExist(value);         
	},"���ǳ��Ѿ����ڣ�����������");
	
	//available string         
	jQuery.validator.addMethod("stringCheck", function(value, element) {         
		return this.optional(element) || /^[\u0391-\uFFE5\w]+$/.test(value);         
	}, "ֻ�ܰ��������֡�Ӣ����ĸ�����ֺ��»���");     
		
	//Chinese character         
	jQuery.validator.addMethod("byteRangeLength", function(value, element, param) {         
		var length = value.length;         
		for(var i = 0; i < value.length; i++){         
			if(value.charCodeAt(i) > 127){         
			length++;         
			}         
		}         
		return this.optional(element) || ( length >= param[0] && length <= param[1] );         
	}, "��ȷ�������ֵ��3-15���ֽ�֮��(һ����������2���ֽ�)");     
		
	//Chinese ID Num.         
	jQuery.validator.addMethod("isIdCardNo", function(value, element) {         
		return this.optional(element) || isIdCardNo(value);         
	}, "����ȷ�����������֤����");      
		   
	//Mobile  Num.       
	jQuery.validator.addMethod("isMobile", function(value, element) {
		var length = value.length;     
		// var mobile = /^(13[0-9]|14[6|7]|15[0|1|2|3|5|6|7|8|9]|18[0-9]|17[0-9])\d{8}$/;
        var mobile = /(^1[3|4|5|6|7|8|9][0-9]\d{8}$)/;
		return this.optional(element) || (length == 11 && mobile.test(value));         
	}, "����ȷ��д�����ֻ�����");         
		   
	//Phone Num.    
	jQuery.validator.addMethod("isTel", function(value, element) {         
		var tel = /^\d{3,4}-?\d{7,9}$/;    //�绰�����ʽ010-12345678     
		return this.optional(element) || (tel.test(value));         
	}, "����ȷ��д���ĵ绰����");     
		
	// ��ϵ�绰(�ֻ�/�绰�Կ�)��֤     
	jQuery.validator.addMethod("isPhone", function(value,element) {
	//	var mobile = /^(13[0-9]|14[6|7]|15[0|1|2|3|5|6|7|8|9]|18[0-9]|17[0-9])\d{8}$/;
        var mobile = /(^1[3|4|5|6|7|8|9][0-9]\d{8}$)/;
		var tel = /^\d{3,4}-?\d{7,9}$/;     
		return this.optional(element) || (tel.test(value) || mobile.test(value));     
		
	}, "����ȷ��д������ϵ�绰");     
		   
	//Zip Code         
	jQuery.validator.addMethod("isZipCode", function(value, element) {  
		var tel = /^[0-9]{6}$/;         
		return this.optional(element) || (tel.test(value));         
	}, "����ȷ��д������������");
	
	//append a additional class to div has class  tooltip_box
	jQuery("div.tooltip_box").addClass("ttp");
	jQuery("div.tooltip_box").hide();
	//form validation
	jQuery("#register_form").validate({
		rules:{
				
				username:{
					required: true,
					isMobile: true,
					mobileExist:true
					},
				validCode:{
					required: true,
					minlength: 4,
					maxlength: 4,
					validCodeRight:true
					},
				nickname:{
					required: true,
					minlength: 3,
					maxlength: 20,
					nickNameExist:true
					},
				password:{
					required: true,
					minlength: 4,
					maxlength: 16
					},
				email:{
					required: false,
					email: true,
					minlength: 6,
					emailExist:true
					}
			},
		messages:{
				username:{
					required:"����д11λ�ֻ���",
					isMobile:"����ȷ��д�����ֻ�����",
					mobileExist:"���ֻ��Ѿ����ڣ�����������"
					},
				email:{
						required:"�����ʽ����ȷ",
						minlength: "�����ʽ����ȷ",
						email:"������һ����Ч�������ַ",
						emailExist:"�������Ѿ����ڣ�����������"
					},
				validCode:{
						required:"���������յ�����֤��",
						minlength: "��֤�����",
						maxlength:"��֤�����",
						validCodeRight:"��֤�����"
					},
				nickname:{
						required:"�������ǳ�",
						minlength: "������51�����ǳƣ�3-20���ַ��Ƽ�ʹ��������",
						maxlength: "������51�����ǳƣ�3-20���ַ��Ƽ�ʹ��������",
						nickNameExist:"���ǳ��Ѿ����ڣ�����������"
					},
				password:{
					required:"����������",
					minlength: "����Ϊ4-16���ַ����뾡��ʹ����ĸ�����ֵ�������롣",
					maxlength:"����Ϊ4-16���ַ����뾡��ʹ����ĸ�����ֵ�������롣"
					}
			},
		errorPlacement: function(error, element) {
			var tooltip_box=element.parent().parent().find("div.ttp");
			if('_username' == tooltip_box.attr('id')){//������ѷ��Ͷ�Ϣ
				clearInterval(_mobile_verify.q);
                _mobile_verify.times=0;
				jQuery('#sendMsgDiv').html('��ѻ�ȡ��֤��');
                jQuery("#sendMsgDiv").unbind( "click" );
			}
			if(!tooltip_box.hasClass("tooltip_box"))tooltip_box.addClass("tooltip_box");
			if(tooltip_box.hasClass("prompt"))tooltip_box.removeClass("prompt");
			if(tooltip_box.hasClass("correct"))tooltip_box.removeClass("correct");
			if(!tooltip_box.hasClass("error"))tooltip_box.addClass("error");
			
			tooltip_box.find("p.et").empty();
			error.appendTo(tooltip_box.find("p.et"));
		},
		success: function(label){
				var tooltip_box=label.parent().parent("div");
				tooltip_box.removeClass();
				tooltip_box.addClass("ttp");
				if(!tooltip_box.hasClass("correct"))tooltip_box.addClass("correct");
				//label.text("Okay");
        },
		showErrors: function(errorMap,errorList) {
					$.each(errorList, function() {
						//$label = this.errorsFor(this.element),
            $element = jQuery(this.element).parent().parent().find("div.ttp");
						if(!$element.hasClass("tooltip_box"))$element.addClass("tooltip_box");
						if(!$element.hasClass("prompt"))$element.addClass("error");
						if($element.hasClass("correct"))$element.removeClass("correct");
            		});
					
                    //alert(this.errors());
                    this.defaultShowErrors();
                },
		highlight: function(element, errorClass) {
     		jQuery(element).fadeOut(function() {
       		jQuery(element).fadeIn();
     		});
  		},
		/*debug: true,*/
		onkeyup: false,
		onclick: false,
		errorClass: "invalid",
		validClass: "success",
		errorElement: "et",
		focusInvalid: true
		/*errorLabelContainer: "#messageBox",*/
        /*wrapper: "li",*/
		});
//submit button default disabled

jQuery("#proposal").click(function(){
								if(jQuery(this).attr("checked"))
									{
										jQuery("#submit").removeAttr("disabled");
									}else{
										alert("��ͬ��51������������������޷�ע��");
										jQuery("#submit").attr("disabled","disabled");
									}
    							}
	);


		
//input field focus		
jQuery(":input[type=text],:input[type=password]").focus(function() {
  if(!jQuery(this).hasClass("input_on"))jQuery(this).addClass("input_on");
  if(jQuery(this).hasClass("input_in"))jQuery(this).removeClass("input_in");
  var tooltip_box = jQuery(this).parent().parent().find("div.ttp");
  if(tooltip_box){
	  	if(tooltip_box.is(":hidden"))tooltip_box.fadeIn(300);//is(":visible")
	  }
});

jQuery(":input[type=text],:input[type=password]").blur(function() {
  if(!jQuery(this).hasClass("input_in"))jQuery(this).addClass("input_in");
  if(jQuery(this).hasClass("input_on"))jQuery(this).removeClass("input_on");
});

});