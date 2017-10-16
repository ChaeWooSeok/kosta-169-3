<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'><meta http-equiv="X-UA-Compatible" content="IE=9,chrome=1"><title>��� ȸ������</title>

<link rel="stylesheet" type="text/css" href="/com_member/css/membership.css" />
<script type="text/javascript" src="/html/common/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/com_member/common/isValidType.js"></script>

<script type="text/javascript">
var tcounter;
var t1;123
var auth_cnt = 0;
var agree_cnt = 4;
var set_num;

function timer_start(){
	tcounter = 180; //3�м��� 
	t1 = setInterval(Timer,1000);
}

function Timer(){     //�ð�ǥ�� ���ǰ˻�
	tcounter = tcounter-1;
	temp = Math.floor(tcounter/60); // �кκ� ���ڸ� ��� mm

	if(Math.floor(tcounter/60) < 10 ){ temp = '0' + temp; }

	temp = temp + ":";

	if((tcounter%60) < 10 ){ temp = temp + '0'; } //�ʺκ� ���ڸ� ��� ss

	temp = temp + (tcounter%60);

	$("#m_timer").html("�����ð� : " + temp);
	if(tcounter<0) tstop();    // 3���� �Ϸ�
}
 
 function tstop(){ //�Ϸ��Լ�
	clearInterval(t1);
	$("#m_timer").html("�ð��� �ʰ��Ǿ����ϴ�.");
	$("#check_bt1").css("display","none");
}

function start_phone_auth()
{
	var formnm = document.JTForm;

	if(!isValidType(formnm.u_mtel1, 'select', '�ڵ��� ���ڸ��� �����Ͽ� �ּ���.' )){ return; }
	if(!isValidType(formnm.u_mtel2, 'number', '�ڵ��� �߰��ڸ��� �Է��Ͽ� �ּ���.' )){ return; }
	if(!isValidType(formnm.u_mtel3, 'number', '�ڵ��� ���ڸ��� �Է��Ͽ� �ּ���.' )){ return; }

	if(formnm.auth_code.value == "���ȹ��� �Է��� �ּ���"){alert("���ȹ��ڸ� �Է��� �ּ���.");return;}
	if(!isValidType(formnm.auth_code, 'text', '���ȹ��ڸ� �Է��� �ּ���.' )){ return; }

	$.ajax({
		url:"https://www.duo.co.kr/m_member/inc_mtel_auth.asp",
		type:"post",
		data:"site=" + formnm.site.value + "&u_mtel1=" + formnm.u_mtel1.value + "&u_mtel2=" + formnm.u_mtel2.value + "&u_mtel3=" + formnm.u_mtel3.value +"&auth_num=" + set_num + "&auth_code=" + formnm.auth_code.value,
		success:function(data){
			if (data == "")
			{
				alert("�������� �ʾҽ��ϴ�. �ٽ� �õ��� �ּ���.");
				return;
			}
			else
			{
				$("body").append(data);
			}
		}
	});
}

function set_dmt_code(dmt_code)
{
	var formnm = document.JTForm;

	formnm.dmt_code.value = dmt_code;

	$("input[name='u_mtel_code']").val("");
	$("img#check_bt1").css("display","");
	$("#m_timer").html("�����ð� : 03:00");

	$("#mtel_input").hide();
	$("#image_code").hide();
	$("#sms_code_input").show();

	timer_start();		
}

function check_phone_auth()
{
	var formnm = document.JTForm;

	if(!isValidType(formnm.u_mtel_code, 'text', '������ȣ�� �Է��Ͽ� �ּ���.' )){ return; }

	$.ajax({
		url:"https://www.duo.co.kr/m_member/inc_mtel_auth.asp",
		type:"post",
		data:"site=" + formnm.site.value + "&dmt_code=" + formnm.dmt_code.value + "&code=" + formnm.u_mtel_code.value,
		success:function(data){
			if (data == "")
			{
				alert("�������� �ʾҽ��ϴ�. �ٽ� �õ��� �ּ���.");
				return;
			}
			else
			{
				$("body").append(data);
			}
		}
	});
}

function mtel_auth_end()
{
	tstop();
	$("#mtel_auth_area").html("�� �޴��� ������ �Ϸ�Ǿ����ϴ�.");
}

function check_join()
{
	var formnm = document.JTForm;
	var tmp = formnm.u_id.value;

	if(formnm.idCheckFlag.value == "N"){
		alert("���̵� �ߺ��Ǿ��ų� �Է��� ����� ���� �ʾҽ��ϴ�.");
		formnm.u_id.focus();
		return;
	}

	if (tmp.length < 4 || tmp.length > 10) {
		alert("ID�� 4���� �̻�, 10���� �����Դϴ�.");
		formnm.u_id.focus();
		return;
	}

	for (i = 0; i < tmp.length; i++) {
		if (tmp.charAt(i) >= '0' && tmp.charAt(i) <= '9')
			continue;
		else if (tmp.charAt(i) >= 'a' && tmp.charAt(i) <= 'z')
			continue;
		else if (tmp.charAt(i) >= 'A' && tmp.charAt(i) <= 'Z')
			continue;
		else if (tmp.charAt(i) == '_' || tmp.charAt(i) == '-')
			continue;
		else {
			alert("ID���� ������, ����, ��ȣ '-' , '_' ) �� ����Ͻ� �� �ֽ��ϴ�.");
			formnm.u_id.value = "" ;
			formnm.u_id.focus();
			return;
		}
	}

	if (tmp.charAt(0) == '_' || tmp.charAt(0) == '-') {
		alert("'_'�� '-'�� ID�� ù���ڷ� ����Ͻ� �� �����ϴ�.");
		formnm.u_id.focus();
		return;
	}	

	if(!CheckPassWord(formnm.u_id,formnm.u_pwd)) {
		return;
	}

	if(formnm.u_name.value == "�̸�"){alert("�̸��� �Է��� �ּ���."); formnm.u_name.focus();}
	if(!isValidType(formnm.u_name, 'text', '�̸��� �Է��Ͽ� �ּ���.' )){ return; }

	if(checkstring(formnm.u_name.value) == true){alert("�̸��Է¿� Ư�����ڴ� �Է��Ҽ� �����ϴ�."); return;}
	if(!check_input_byte(formnm.u_name.value,10)){alert("�Է� �� �� �ִ� ���ڱ��̸� �ʰ��Ͽ����ϴ�."); return;}

	if(!isValidType(formnm.u_birth1, 'select', '������ �����Ͽ� �ּ���.' )){ return; }
	if(!isValidType(formnm.u_birth2, 'select', '������ �����Ͽ� �ּ���.' )){ return; }
	if(!isValidType(formnm.u_birth3, 'select', '������ �����Ͽ� �ּ���.' )){ return; }
	if(!isValidType(formnm.u_sex, 'check', '������ �����Ͽ� �ּ���.' )){ return; }

	//if(!isValidType(formnm.u_mtel1, 'select', '�ڵ��� ���ڸ��� �����Ͽ� �ּ���.' )){ return; }
	//if(!isValidType(formnm.u_mtel2, 'number', '�ڵ��� �߰��ڸ��� �Է��Ͽ� �ּ���.' )){ return; }
	//if(!isValidType(formnm.u_mtel3, 'number', '�ڵ��� ���ڸ��� �Է��Ͽ� �ּ���.' )){ return; }

	if(formnm.dmt_code.value == ""){
		alert("�޴��� ������ ���� �ʾҽ��ϴ�. �޴��� ���� ��ư�� ���� ������ �õ��ϼ���.");
		return;
	}
	
	//�̸����ּ� ������ ���ù��
	if(checkEmail(formnm.u_email,formnm.u_email_domain,formnm.u_email_domain_select) == false){ return; }
	
	var u_email_full;
	var u_email_check;

	u_email_check = true;
	u_email_full = formnm.u_email.value + "@" + formnm.u_email_domain.value;
	
	$.ajax({
		url:"/com_member/inc_member_email_check.asp",
		type:"post",
		data:"u_email=" + encodeURIComponent(u_email_full),
		async:false,
		success:function(data){
			if (data != "")
			{
				$("body").append(data);
				u_email_check = false;
			}
		},
		error:function(data){
			alert("�̸��� �ּҸ� Ȯ���Ͻð� �ٽ� �õ��� �ּ���." + data);
			return;
		}
	});	

	if (u_email_check == false){return;}
	
	
	if(!isValidType(formnm.u_married, 'select', '��ȥ ����� �����Ͽ� �ּ���.' )){ return; }
	if(!isValidType(formnm.u_edu, 'select', '�з��� �����Ͽ� �ּ���.' )){ return; }
	if(!isValidType(formnm.u_work, 'select', '���� ������ �����Ͽ� �ּ���.' )){ return; }
	

	if(!isValidType(formnm.u_dwell, 'select', '�ְ��������� �����Ͽ� �ּ���.' )){ return; }

	var str_pwd;
	//var str_mtel2,str_mtel3;
	//var str_tel2,str_tel3;
	var str_email;

	str_pwd = formnm.u_pwd.value;
	//str_mtel2 = formnm.u_mtel2.value;
	//str_mtel3 = formnm.u_mtel3.value;

	str_email = formnm.u_email.value;

	$.ajax({
		url:"/com_member/inc_member_input_check.asp",
		type:"post",
		data:"dmt_code=" + $("#dmt_code").val() + "&u_pwd=" + str_pwd + "&u_email=" + str_email,
		success:function(data){
			if (data != "")
			{
				$("body").append(data);
			}
		},
		error:function(data){
			alert("������ �߻��Ͽ����ϴ�. �ٽ� �õ��� �ּ���." + data);
			return;
		}
	});

	if(!agree_member_check('join_agree_all','join_agree1','join_agree2','join_agree3')){return;}

	ga("send","event","PCȸ������","��ưŬ��","ȸ������");

	formnm.submit();
}

function change_auth_code()
{
	var max_num;
	var auth_img;

	max_num = 5
	set_num = (Math.floor((Math.random()* max_num))) + 1;

	auth_img = "/com_member/img/captcha_0" + set_num + ".png"

	$(".auth_img").attr("src",auth_img);
}

$(document).ready(function(){
	$(".ip_sex").click(function(){
		var now_index = $(".radio_sex").index(this);

		//alert(now_index);
		
		if ($(".radio_sex").eq(now_index).attr("class").indexOf("ip_sex_on") == -1)
		{
			// real value set
			$(":radio[name='u_sex']").prop("checked",false);
			$(":radio[name='u_sex']").eq(now_index).prop("checked",true);

			//radio init
			$(".radio_sex").removeClass("ip_sex_on");
			$(".radio_sex").removeClass("ip_sex");
			$(".radio_sex").addClass("ip_sex");

			//check radio set
			$(".radio_sex").eq(now_index).removeClass("ip_sex");
			$(".radio_sex").eq(now_index).addClass("ip_sex_on");
			
		}
	});

	$("#u_pwd").focus(function(){
		if($("#u_pwd").attr("type") == "text")
		{
			$("#u_pwd").val("");
			$("#u_pwd").attr("type","password");
			$("#pwdCheck").show();
		}
		else
		{
			if($("#u_pwd").val() == "")
			{
				$("#u_pwd").attr("type","text");
				$("#u_pwd").val("��й�ȣ ����/����/Ư������ �������� 8�� �̻� 15�� ����");
				$("#pwdCheck").hide();
			}
		}
	});

	$("#u_pwd").blur(function(){	
		if($("#u_pwd").val() == "" || $("#u_pwd").val() == "��й�ȣ ����/����/Ư������ �������� 8�� �̻� 15�� ����")
		{
			$("#u_pwd").attr("type","text");
			$("#u_pwd").val("��й�ȣ ����/����/Ư������ �������� 8�� �̻� 15�� ����");
			$("#pwdCheck").hide();
		}
	});

	$(".agree_chk").click(function(){
		
		if ($(".agree_chk:checked").length == agree_cnt)
		{
			$("#agree_all").prop("checked",true);
		}
		else
		{
			$("#agree_all").prop("checked",false);
		}
	});

	$("#agree_all").click(function(){
	
	if ($("#agree_all").is(":checked"))
	{
		$(".agree_chk").prop("checked",true);
	}
	else
	{
		$(".agree_chk").prop("checked",false);
	}
	});

	change_auth_code();
});
</script>
</head>

<body>

<div style="width:100%;">
	<div id="header">
	<ul>
		<li><a href="https://www.duo.co.kr" target="_blank">���</a></li>
		<li><a href="http://www.duowed.com/" target="_blank">�������</a></li>
		<li><a href="http://www.duoremarry.com/" target="_blank">������Ÿ�</a></li>
		<li><a href="http://www.10weddinghall.com/" target="_blank">�ٿ���Ȧ</a></li>
	</ul>
</div>
	<div id="content">
	
	
<!-- 2016-05-06 | �ӽ��˾� 
	<script type="text/javascript">
	function popup20160510_close()
	{
		$("#popup20160510").hide();
	}
	</script>
	
	<div style="position:absolute; left:0; top:98px;  width:417px; height:462px; z-index:300;" id="popup20160510">
		<div style=" width:417px; height:528px; position:relative;">
			<img src="https://www.duo.co.kr/html/popup/img/pop_img_20170209.jpg" />
			<a href="javascript:popup20160510_close();" style="position:absolute; right:10px; top:10px; display:block; width:18px; height:18px; background:url(https://www.duo.co.kr/html/popup/img/close_btn_w.png) no-repeat left top; font-size:0; line-height:0;">�˾��ݱ�</a>
		</div>
	</div>
	
<!-- 2016-05-06  �ӽ��˾� - end-->

	

		<div style="margin:0 auto; width:554px; overflow:hidden;">
			<span class="top-web">
				<!--
				����� <span class="logo duo"></span>
				����� <span class="logo wed"></span>
				���޸��� <span class="logo remarry"></span>
				�ٿ���Ȧ�� <span class="logo ten"></span>
				-->
				<span class="logo duo"></span>
				<span class="st-1">��� �йи� ����Ʈ (���, �������, ������Ÿ�, �ٿ���Ȧ)��<br /><span>�ϳ��� ���̵�� ���� ���� �˴ϴ�.</span></span>
			</span>
			<div class="box-wrapper">
				<form name="JTForm" method="post" action="member_join_proc.asp">
				<input type="hidden" name="site" value="duo" />
				<input type="hidden" name="u_div" value="" />
				<input type="hidden" name="dmt_code" id="dmt_code" value="" />
				
				<table cellspacing="0" cellpadding="0" summary="ȸ������ ���Դϴ�." style="width:100%;">
					<caption>ȸ������ ��</caption>
					<tbody>
						<tr>
							<td>
								<input type="text" placeholder="���̵�" title="���̵�" value="���̵�" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" class="ip_id" id="u_id" name="u_id" maxlength="10" onKeyup="checkRegisted()" />
								<input type="hidden" name="idCheckFlag" id="idCheckFlag" value="N" />
								<span id="idCheck" class="pwcheck"></span>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" placeholder="��й�ȣ ����/����/Ư������ �������� 8�� �̻� 15�� ����" title="��й�ȣ" value="��й�ȣ ����/����/Ư������ �������� 8�� �̻� 15�� ����" class="ip_pw" name="u_pwd" id="u_pwd" maxlength="15" />
								<!-- �ش� �κ��� ���� ��� ȸ������ �� ���� �κ� ó�� �����Ѵٰ� �մϴ�. -->
								<span id="pwdCheck" style="display:none;" class="pwcheck">����/����/Ư������ �������� 8�� �̻� 15�� ���� , ��밡�� Ư������ : ~!@#$%^&amp;*()-+=</span>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" placeholder="�̸�" title="�̸�" value="�̸�" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" class="ip_name" name="u_name" />
							</td>
						</tr>
						<tr>
							<td>	
								<select class="ip_birth1" title="���� ����" name="u_birth1">
									<option value="">���� ����</option>
									<option value='1998'>1998��</option><option value='1997'>1997��</option><option value='1996'>1996��</option><option value='1995'>1995��</option><option value='1994'>1994��</option><option value='1993'>1993��</option><option value='1992'>1992��</option><option value='1991'>1991��</option><option value='1990'>1990��</option><option value='1989'>1989��</option><option value='1988'>1988��</option><option value='1987'>1987��</option><option value='1986'>1986��</option><option value='1985'>1985��</option><option value='1984'>1984��</option><option value='1983'>1983��</option><option value='1982'>1982��</option><option value='1981'>1981��</option><option value='1980'>1980��</option><option value='1979'>1979��</option><option value='1978'>1978��</option><option value='1977'>1977��</option><option value='1976'>1976��</option><option value='1975'>1975��</option><option value='1974'>1974��</option><option value='1973'>1973��</option><option value='1972'>1972��</option><option value='1971'>1971��</option><option value='1970'>1970��</option><option value='1969'>1969��</option><option value='1968'>1968��</option><option value='1967'>1967��</option><option value='1966'>1966��</option><option value='1965'>1965��</option><option value='1964'>1964��</option><option value='1963'>1963��</option><option value='1962'>1962��</option><option value='1961'>1961��</option><option value='1960'>1960��</option><option value='1959'>1959��</option><option value='1958'>1958��</option><option value='1957'>1957��</option><option value='1956'>1956��</option><option value='1955'>1955��</option><option value='1954'>1954��</option><option value='1953'>1953��</option><option value='1952'>1952��</option><option value='1951'>1951��</option><option value='1950'>1950��</option><option value='1949'>1949��</option><option value='1948'>1948��</option><option value='1947'>1947��</option><option value='1946'>1946��</option><option value='1945'>1945��</option><option value='1944'>1944��</option><option value='1943'>1943��</option><option value='1942'>1942��</option><option value='1941'>1941��</option><option value='1940'>1940��</option><option value='1939'>1939��</option><option value='1938'>1938��</option><option value='1937'>1937��</option>
								</select>
								<select class="ip_birth2" title="�� ����" name="u_birth2">
									<option value="">�� ����</option>
									<option value='01'>1��</option><option value='02'>2��</option><option value='03'>3��</option><option value='04'>4��</option><option value='05'>5��</option><option value='06'>6��</option><option value='07'>7��</option><option value='08'>8��</option><option value='09'>9��</option><option value='10'>10��</option><option value='11'>11��</option><option value='12'>12��</option>

								</select>
								<select class="ip_birth2" title="�� ����" name="u_birth3">
									<option value="">�� ����</option>
									<option value='01'>1��</option><option value='02'>2��</option><option value='03'>3��</option><option value='04'>4��</option><option value='05'>5��</option><option value='06'>6��</option><option value='07'>7��</option><option value='08'>8��</option><option value='09'>9��</option><option value='10'>10��</option><option value='11'>11��</option><option value='12'>12��</option><option value='13'>13��</option><option value='14'>14��</option><option value='15'>15��</option><option value='16'>16��</option><option value='17'>17��</option><option value='18'>18��</option><option value='19'>19��</option><option value='20'>20��</option><option value='21'>21��</option><option value='22'>22��</option><option value='23'>23��</option><option value='24'>24��</option><option value='25'>25��</option><option value='26'>26��</option><option value='27'>27��</option><option value='28'>28��</option><option value='29'>29��</option><option value='30'>30��</option><option value='31'>31��</option>
								</select>
								<div style="float:right; width:170px;">
									<!-- Ŭ���� class ip_sex -> ip_sex_on ����ǰ� ���ּ���.  -->
									<label class="ip_sex radio_sex"><input type="radio" title="����" name="u_sex" value="0" />����</label>
									<label class="ip_sex radio_sex"><input type="radio" title="����" name="u_sex" value="1" />����</label>
								</div>
							</td>
						</tr>
						<tr id="mtel_auth_area">
							<td id="mtel_state" style="padding:0;">
								<div id="mtel_input" style="width:100%;height:36px;padding:10px 0;">
									<select class="ip_hp" title="�ڵ��� ó�� �ڸ�" name="u_mtel1">
										<option value="">�ڵ���</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
									</select>
									<span class="flag">-</span>
									<input type="text" title="�ڵ��� ��� �ڸ�" class="ip_hp" name="u_mtel2" maxlength="4" />
									<span class="flag">-</span>
									<input type="text" title="�ڵ��� �� �ڸ�" class="ip_hp" name="u_mtel3" maxlength="4"/>				
									<!--<span class="ipsend">
										<label><input type="checkbox" title="SMS ���Űź�" name="u_sms" value="1" />&nbsp;SMS ���Űź�</label>
									</span>-->
									<!---->
								</div>

								<div id="image_code" style="width:100%;height:36px;padding:10px 0;">
									<input type="text" title="���ȹ����Է�" placeholder="���ȹ����Է�" class="ip_hp" style="width:200px;" name="auth_code" value="���ȹ����Է�" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
									<img  src="/html/membership/new_img/ic_num_01.jpg" alt="���ȹ���" class="auth_img" style="display:block;float:left;margin:0 10px;height:35px;border:1px solid #d9d9d9;"/>	
									<a onclick="change_auth_code()" style="display:block;float:left;"><img src="/html/membership/new_img/btt_num_01.jpg" alt="���ΰ�ħ" style="display:block;height:35px;background:#f5f6f7;" 
									/></a>
									<a onclick="start_phone_auth()" style="cursor:pointer;" class="confirm" id="bt_mtel_auth" >�����ޱ�</a>
								</div>

								<div id="sms_code_input" style="width:100%;height:70px;display:none;">
									<li style="width:100%;height:50px;">
									<input type="text" placeholder="������ȣ" title="������ȣ" value="������ȣ" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" class="ip_hp" name="u_mtel_code" style="width:150px;" /><a onclick="check_phone_auth()" style="cursor:pointer;" class="confirm" id="check_bt1">Ȯ��</a>
									</li>
									<li style="width:100%;height:50px;" id="m_timer">
									�����ð� : 3:00
									</li>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" placeholder="�̸���" title="�̸���" value="�̸���" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" class="ip_email" name="u_email" />
								<span class="flag">@</span>
								<select class="ip_domain" title="�̸��� ������ selet" name="u_email_domain_select" onChange="chgEmail(this.form, this.options[selectedIndex].value)">
									<option value="">����</option>
									<option value="naver.com">naver.com</option>
<option value="hanmail.net">hanmail.net</option>
<option value="gmail.com">gmail.com</option>
<option value="empal.com">empal.com</option>
<option value="nate.com">nate.com</option>
<option value="dreamwiz.com">dreamwiz.com</option>
<option value="hotmail.com">hotmail.com</option>
<option value="korea.com">korea.com</option>
<option value="paran.com">paran.com</option>
<option value="hanafos.com">hanafos.com</option>
<option value="freechal.com">freechal.com</option>
<option value="lycos.co.kr">lycos.co.kr</option>
<option value="chol.com">chol.com</option>

                                    <option value="input">�����Է�</option>
								</select>
								<input type="text" placeholder="�����Է�" title="�����Է�" value="�����Է�" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" class="ip_email" name="u_email_domain" style="display:none;" />		
								<!--<span class="ipsend">
									<label><input type="checkbox" title="����ҽ��� ���Űź�" name="u_refuse" value="1" />&nbsp;����ҽ��� ���Űź�</label>
								</span>-->				
							</td>
						</tr>
						<tr>
							<td>
								<!--���, ������Ÿ� �����׸�-->
								
								<select class="ip_duo" title="��ȥ���" name="u_married">
									<option value="">��ȥ���</option>
									<option value="5">��ȥ</option>
                                    <option value="2">��ȥ</option>
								</select>
								<select class="ip_duo" title="�з�" name="u_edu">
									<option value="">�з�</option>
									<option value="02">����б� ����</option>
<option value="05">����������</option>
<option value="09">���б�����</option>
<option value="11">���п�����</option>
<option value="13">���п�����</option>
<option value="14">�ڻ��̻�</option>
<option value="15">��Ÿ</option>

								</select>
								<select class="ip_birth" title="��������" name="u_work">
									<option value="">��������</option>
									<option value="40">�繫/������</option>
<option value="47">������, �����Ͼ�</option>
<option value="41">����,����</option>
<option value="51">��ȣ �� ��Ÿ �Ƿ��</option>
<option value="20">�����̳�</option>
<option value="28">�����</option>
<option value="43">���� �� ����</option>
<option value="42">������,����</option>
<option value="44">�ڿ���, ���</option>
<option value="45">������,��������</option>
<option value="11">�¹���/�װ�����</option>
<option value="10">����/����</option>
<option value="46">���л�,��/�ڻ� ����</option>
<option value="52">�ǻ�, ���ǻ�, ���</option>
<option value="48">��ȣ��,������</option>
<option value="50">ȸ��� �� ������</option>
<option value="49">����</option>
<option value="34">��Ÿ</option>

								</select>
								

								<!--������� �ٿ���Ȧ �����׸�-->
								
								<select class="ip_area" title="��������" name="u_dwell">
									<option value="">��������</option>
									<option value="01">����</option>
<option value="15">����/ȭ��</option>
<option value="02">��õ</option>
<option value="16">õ��</option>
<option value="08">����</option>
<option value="12">����</option>
<option value="09">����</option>
<option value="07">�뱸</option>
<option value="04">�λ�</option>
<option value="05">���</option>
<option value="06">â��</option>
<option value="22">���</option>
<option value="31">����/����</option>
<option value="25">����</option>
<option value="30">���</option>
<option value="29">�泲</option>
<option value="27">����</option>
<option value="26">����</option>
<option value="24">���</option>
<option value="21">����</option>
<option value="23">�泲</option>
<option value="28">����</option>

								</select>
							</td>
						</tr>
						<tr>
							<td class="notice-1">ID/PW �н� �� ���� ���� Ȯ���� �ʿ��� ��츦 ���� �ֹε�ϻ��� �̸�, ������ �Է��� �ּ���.<br />�̸�, ����, ���� ������ ���� ���Ŀ� �����Ͻ� �� �����ϴ�.</td>
						</tr>
						
						
						<tr>
							<td class="ip_agree-1">
								<label><input type="checkbox" title="�̿���, �������� ���� �� �̿�, ������ Ȱ��, �̺�Ʈ�ȳ� ���ϼ��ſ� ��� ����" name="join_agree_all" value="Y" id="agree_all"/>&nbsp;�̿���, �������� ���� �� �̿�, ������ Ȱ��, �̺�Ʈ�ȳ� ���ϼ��ſ� ��� ����</label>
							</td>
						</tr>
						

						<tr>
							<td class="ip_agree-2">
								<div class="box"><label><input type="checkbox" title="�̿��� ����" name="join_agree1" value="Y"  class="agree_chk"/>&nbsp;�̿��� ����</label></div>
								<div class="ip_textarea">[��   ��]<br><br>�� 1 �� (����)<br>�� ����� ���������(���� "ȸ��"�� �մϴ�.)�� �̿��ڰ��� ȸ�簡 ��ϴ� ���ͳ� ����Ʈ (www.duo.co.kr �� �� ����Ʈ�� �⺻ DB�� �����ϴ� ��� ����Ʈ �� ���޻���Ʈ ����. ���� "����Ʈ"�� �մϴ�)���� �����ϴ� ���� ����(���� "����"�� �մϴ�)�� ���� �� �̿뿡 ���� ���ݻ��װ� ��Ÿ �ʿ��� ������ �������� �������� �մϴ�.<br><br>�� 2 �� (����� ����)<br>�� ������� ����ϴ� �ֿ��� ����� ���Ǵ� ������ �����ϴ�. <br>1) ȸ�� : ���񽺸� �����ޱ� ���Ͽ� �̿��� ���̵�(ID)�� �ο� ���� �ڸ� ���մϴ�. <br>2) ȸ�� ���̵� (����  "ID" ) : ȸ���� �ĺ��� ȸ���� ���� �̿��� ���Ͽ� ȸ���� �����ϰ� ȸ�簡 �ο��ϴ� ���ڿ� ������ ������ ���մϴ�.<br>3) ��й�ȣ : ȸ���� ����ϴ� ID�� ��ġ�� ȸ������ Ȯ���ϰ� ȸ���� ���������� ���Ͽ� ȸ���� ������ ���ڿ� ������ ������ ���մϴ�. <br>4) �ڵ��� ���� : SMS(���ڸ޽���)�� 6�ڸ� ���ڸ� �����Ͽ� �ڵ����� ���ŵ� ������ȣ�� ����Ʈ�� ����ϵ��� �����ν� ȸ�� ������ �ϴ� ��<br><br><br>�� 3 �� (����� ȿ�� �� ����)<br>1) �� ����� �̿��ڰ� ȸ���� �����԰� ���ÿ� ȿ���� �߻��ϸ�, ������ɿ� ������� �ʴ� ���� �ȿ��� ������ �� �ֽ��ϴ�. ������ ����� �¶��ο��� ���������ν� ȿ���� �߻��ϸ�, �̿����� �Ǹ� �Ǵ� �ǹ� �� �߿��� ������ ������ ������ �����մϴ�.<br>2) �� ����� �����ϴ� ���� ���������� ���� �湮�Ͽ� ����� ��������� Ȯ���ϴ� �Ϳ� �������� �ǹ��մϴ�. ����� ����� ���� ������ ���� ���� �߻��ϴ� �̿����� ���ش� ȸ�翡�� å������ �ʽ��ϴ�.<br>3) ȸ���� ������ ����� �������� ���� ��� ȸ�� Ż�� ��û�� �� ������, ���񽺸� ��� ����ϴ� ���� ����� ������ �����ϰ� �����ϴ� ������ �����մϴ�.<br><br>�� 4 �� (��� �� ��Ģ)<br>1) �� ����� �ش����Ʈ���� �����ϴ� �������� Ȥ�� ȸ���� ��å�� ���� �������� �ȳ������� ���񽺾ȳ�(��������ũ �� ���� ���� �޴�, �� �޴� �� ���� ȭ�鿡 ������ ����, ����Ʈ�� �Խ��ϴ� ���� ���� �����ϸ� ȸ�簡 �¶��ο��� �����ϴ� ���񽺿� ���� ���� �� ������, ȸ���� �ǹ�, å�� ���� ����� ���� ���� "���񽺾ȳ�"�� �մϴ�)���� ���� ���� �����ϰų�, ��Ÿ �� ������� ������� �ƴ��� ���׿� ���Ͽ��� ���񽺾ȳ��� ���� �ٿ� ������� �մϴ�.<br>2) ���񽺾ȳ��� ���� �� ���濡 ���� ���ǿ� �־�� ��3�� ��2�� �� ��3���� ������ �����մϴ�.<br><br>�� 5 �� (ȸ������)<br>1) ����Ʈ ȸ���� �ǰ��� �ϴ� �ڴ� ȸ�簡 ���� ���Ծ�Ŀ� ���� ȸ�������� �����ϰ� "����� �����մϴ�" �� "ȸ������" ���߸� ������ ������� ȸ�������� ��û�մϴ�.<br>2) ȸ���� �ݵ�� �����������񽺸� ���� ����Ȯ���� �ؾ� �ϸ�, ȸ�簡 ���� ���Ծ�Ŀ� �����ϴ� ��� ������ ������ ������ ���ֵ˴ϴ�. ������ ����(����, ��Ǹ� �� ����)�̰ų�, �׷��ϴٰ� �ǽ��Ҹ��� �ո����� ������ �߻��� ��� ȸ��� ���Խ�û�� �� ȸ���� ��� ID�� �����ϰ� �� ���� ������ �Ϻ� �Ǵ� ���θ� ������ �� ������, �̷� ���� �߻��ϴ� ��� �����Ϳ� ���Ͽ� å������ �ʽ��ϴ�. ȸ��� �̸� ���Ͽ� �ʿ��� ��� �������� �䱸�� �� �ֽ��ϴ�.<br>3) ȸ���� ȸ���� ����Ʈ ȸ������ �����ϴ� ���� ���񽺿� ���õ� ��ȭ, �̸���(E-MAIL)�� �����ϴ� ���� �����ϴ� ������ �����մϴ�. ��, �̸��� ���� �ź����� ��� �̸��� �߼۴�󿡼� ���ܵǸ�, ���Ŀ��� ȸ���� �ǻ翡 ���� ���ſ��θ� ������ �� �ֽ��ϴ�.<br>4) ȸ��� ȸ���� ����� ���� ������� ������ ���� �� ������, ȸ���� �� ��޿� ���� ���� �̿뿡 ������ ���� �� �ֽ��ϴ�. ȸ�� ��޿� ���� �ڼ��� ������ �ش� ���񽺾ȳ����� ���� �ٿ� �����ϴ�. �̴� ȸ���� ��å�� ���� ����� �� ������, ����� ������ ���� ��� ȿ���� �߻��մϴ�. <br>5) ȸ��� ��1�װ� ���� ������� ȸ�������� ��û�� �ڰ� ���� �� ȣ�� �ش���� �ʴ� �� ��û�� �ڸ� ȸ������ ����մϴ�. �׷��� ���� �� ȣ�� �ش��ϴ� �ڿ��Դ� ȸ������ �³��� �����ϰų� ����Ʈ �̿��� ������ �� ������, ���Խ�û�� ������ ���� �ֽ��ϴ�.<br>1. ��ϳ����� ����(����, ��Ǹ� �� ����)�� ������ �Ǹ�ǰų�, �׷��ϴٰ� �ǽ��� ���� �ո����� ������ �߻��� ���<br>2. ���� ��û�ڰ� �� ��� �� ���񽺾ȳ�, ��Ÿ ��������� �����Ͽ� �ش� ���ͳ� ����Ʈ�� ȸ���ڰ��� ����� ���� �ִ� ���<br>3. ����� ������ �ִ� ���<br>4. ��ȸ���� �� ��ǳ��ӿ� ���� ����� �ִٰ� �����Ǵ� ���<br>5. ������ �߱��� �������� �� ���񽺸� �̿��ϰ��� �ϴ� ���<br>6. ��Ÿ ȸ���� ������ �̿�³��� ����ϰų� ȸ�簡 ���� �̿��û����� �̺� �Ǿ��� ���<br>6) ȸ�����԰���� �����ñ�� ȸ���� �³��� ���Խ�û�ڿ��� ������ �������� �մϴ�.<br>7) ȸ�簡 ��ϴ� ��� ����Ʈ�� ȸ�� DB�� ���յǾ� ��ǹǷ� �� ����� �������� ȸ�簡 ��ϴ� ��� ����Ʈ(www.duo.co.kr, www.duowed.com, www.duoremarry.com ��)�� ȸ���� �ʿ� �������� �ǹ��մϴ�.<br><br><br>�� 6 �� (ȸ���� �ǹ�)<br>1) ȸ��� �������̰�, ���������� ���񽺸� �����ϱ� ���ؼ� ����մϴ�.<br>2) ȸ��� ���� ������ �����ؼ� �˰� �ִ� ȸ���� �Ż������� ������ �³� ���� ��3�ڿ��� ����, �������� �ʽ��ϴ�. ��, ������ �³��� ���, ������ű⺻�� �� ������ ������ ���� ��������� �䱸�� �ִ� ���, ���˿� ���� ������� ������ �ְų� ������� ���� ����ȸ�� ��û�� �ִ� ��� �Ǵ� ��Ÿ ������ɿ��� ���� ������ ���� ��û�� �ִ� ���, ���޻� �Ǵ� �ܺ� �������� ���� ���� ���� ���񽺸� �����ϱ� ���� ȸ�簡 ��û�� �ϰ� �̿� ȸ�� ������ ���Ǹ� �� ���, ȸ���� ��翡 ������ ���������� ������ ������ ��쿡�� �׷����� �ʽ��ϴ�.<br>3) 2)���� ���� ������ ȸ��� ������ �����Ͽ� ȸ�� ��ü �Ǵ� �Ϻ��� ���������� ���� ��� �ڷḦ �ۼ��Ͽ� �̸� ����� �� �ְ�, ���񽺸� ���Ͽ� ȸ���� ��ǻ�Ϳ� ��Ű�� ������ �� �ֽ��ϴ�. �� ��� ȸ���� ��Ű�� ������ �ź��ϰų� ��Ű�� ���ſ� ���Ͽ� ����ϵ��� ����ϴ� ��ǻ���� �������� ������ ������ �� �ֽ��ϴ�.<br>4) ȸ��� ȸ���� ���� �̿� �� �ʿ䰡 �ִٰ� �����Ǵ� �پ��� ���� �� ���� ���ڿ����̳� ���� Ȥ�� ��/���� ��ȭ������ �����մϴ�.<br>5) ȸ��� ȸ�����κ��� ����Ǵ� �Ҹ��� �����ϴٰ� ������ ��쿡�� ���������� ó������ ��Ģ���� �մϴ�.<br><br>�� 7 �� (ȸ���� �ǹ�)<br>1) ȸ�� ���� �ÿ� �䱸�Ǵ� ȸ�� �ڽ��� ������ �����ϰ� ��Ȯ�Ͽ��� �մϴ�. ���� �̹� ������ ȸ���� ���� ������ �����ϰ�, ��Ȯ�� ������ �ǵ��� ����, �����Ͽ��� �ϸ� �׷����� �ƴ��Ͽ� �߻��ϴ� ������ å���� ȸ������ ������ ȸ��� å���� ���� �ʽ��ϴ�. �̸�, ���̵�, �ֹι�ȣ ���ڸ�, ���� ���� ������ �� �����ϴ�.<br>2) ȸ���� ������ �������� ���� ������ ��Ÿ �� ��� �Ǵ� ���񽺾ȳ��� ����� ������ ���� å���� ȸ�� ���ο��� ������, �̷� ���Ͽ� ȸ�翡 ���ذ� �߻��� ��� ȸ��� ȸ������ ��,������� å���� ���� �� �ֽ��ϴ�.<br>3) ȸ��� ȸ���� �ſ��� ���� ������ ���� �ʽ��ϴ�. ���� ȸ�� ������ ����Ʈ�� ���� ��,���������� �������� ȸ������ �߻��� ��� ������ ���ؼ��� �������� ȸ�����ο��� å���� ������, ȸ��� å���� ���� �ʽ��ϴ�. �׷��Ƿ� � ������ �����̵� ȸ�������� ������ �Ǵ��� �ʿ��մϴ�. <br>4) ȸ���� ȸ�簡 ���� �Ǵ� �����ϴ� ������ �ݵ�� Ȯ��, �ؼ��Ͽ��� �ϸ� �׷��� �ƴ��Ͽ� �߻��� ������ ȸ���� ���ؿ� ���ؼ��� ȸ�簡 å���� ���� �ʽ��ϴ�.<br>5) ȸ���� �� ���񽺸� ���Ͽ� �Խ�, ����, �Լ��Ͽ��ų� ���ڸ��� ��Ÿ �ٸ� ���ܿ� ���Ͽ� �Խ�, ���� �Ǵ� �Լ��� ��� ������ ������ ���Ͽ��� �ش�ȸ���� ��� å���� �δ��ϸ� ���� ��� å�ӵ� �δ����� �ƴ��մϴ�.<br>6) ȸ���� ���� �� ȣ�� �ش��ϴ� ������ ���� �ʾƾ� �Ѵ�.<br>1. Ÿ���� ID�� ��й�ȣ, ������ �����ϴ� ���� �� �ڽ��� ID�� ��й�ȣ�� �����ϴ� ����<br>2. ���Խ�û �Ǵ� �������� ����� ���� ������ ����ϴ� ����<br>3. �������� �� ��ǳ����� ������ ���� ����, ����, �����, �������̰ų� Ÿ���� �����̹��ø� ħ���� �� �ִ� ������ ����, �Խ�, ����, ���ڸ��� �Ǵ� ��Ÿ�� ������� �����ϴ� ����<br>4. ���񽺸� ���Ͽ� ���� Ȥ�� �Խõ� ������ ��ó�� �����ϴ� ����<br>5. Ÿ���� Ư��, ��ǥ, �������, ���۱�, ��Ÿ ���������� ħ���ϴ� ������ �Խ�, ����, ���ڸ��� �Ǵ� ��Ÿ�� ������� �����ϴ� ����<br>6. ȸ���� ������ ���� �ƴ��� �ҹ����ſ, ����, ���˹�, ��ũ����, ����, ����� ����, �Ƕ�̵� ���� ��Ÿ �ٸ� ������ ������ �Խ�, ����, ���ڸ��� �Ǵ� ��Ÿ�� ������� �����ϰų� ����ϴ� ����<br>7. �ٸ� ������� ���������� ���� �Ǵ� �����ϴ� ����<br>8. ������ ������ �, ���� ���� �����ϰų� ������Ű�� ����<br>9. ������ż����� ���۵��̳� ���� ���� �ı��� ���߽�Ű�� ��ǻ�� ���̷��� ���α׷� ���� �����ϴ� ����<br>10. ȸ���� ���� ���� ȸ�� ���ͳ� ����Ʈ�� ���� ���� �Ǵ� ���������� ���� �Ǵ� �����Ű�ų� ��������� �̿� �Ǵ� Ÿ�ο��� �����ϴ� ����<br>11. ���񽺸� �̿��Ͽ� �ҹ� ��ǰ�� �Ǹ��ϴµ� ���� Ȱ���� �ϴ� ����<br>12. ��ŷ, ��������Ʈ�� ���� �������, ��� S/W �ҹ� ���� ���� �ϴ� ����<br>13. ���˿� �����ִٰ� ���������� �Ǵ��� �� �ִ� ����<br>14. ȸ���� ���, ������ �Ǵ� �����ڸ� ��Ī�ϴ� ����<br>15. ȸ�� ���α׷����� ���׸� �ǿ��ϰų� ���������� �ƴ��� ������� ���̹� �ڻ��� ����ϴ� ����<br>16 ȸ��κ��� Ư���� �Ǹ��� �ο� ���� �ʰ� ȸ���� Ŭ���̾�Ʈ ���α׷��� �����ϰų�, ȸ���� ������ ��ŷ �ϰų�, ������Ʈ �Ǵ� �Խõ� ������ �Ϻκ� �Ǵ� ��ü�� ���Ƿ� �����ϴ� ����<br>17. �� ����� �����Ͽ� ��Ÿ ȸ�簡 ���� ��å �� ��Ÿ ��������� ������ ����<br>18 �ٸ� �̿��� �Ǵ� ��3�ڸ� ����ϰų� ���� �Ѽ��ϴ� ����<br>7) ȸ���� ȸ�簡 ��������� �������� �ʴ� �� ���� �̿����, ��Ÿ �̿���� ������ Ÿ�ο��� �絵, ������ �� ������, �̸� �㺸�� ������ �� �����ϴ�.<br>8) �� ����� �����ϰų� �Ǵ� ��Ÿ�� ������ Ÿȸ�����κ��� ����Ż�� �Ǵ� �ҷ�ȸ������ �Ϲݿ� ������ ���� �䱸 �޴� ���, �Ű� ���� ȸ���� Ȱ���� �����Ǹ�, ȸ��� ���Ȯ�� �۾��� ���ϴ�. �Ű��� ������ �����ߴٰ� �ǴܵǸ� ����Ʈ �����ڴ� ��,������ ���� ��Ȱ�� ȸ��Ȱ���� �ǰ��ϰ� �Ǹ�, �̴� 1�� �ҷ�ȸ�� ��� �ش��մϴ�. �ǰ� �Ŀ��� �̿� ���� ���� 3ȸ �̻� ��ӵ� ������ ����Ż�� ó������ ��Ģ���� �մϴ�.<br><br>�� 8 �� (�Խù� �� ȸ���� ��ų����� ����)<br>1) ȸ���� �Խ��� �Խù�(ȸ�� ������ �������� ����)�� ���뿡 ���� �Ǹ��� å���� ȸ������ ������, ��, ȸ��� ���� �������� �Խñ��� ������ ���� ȫ������ �������� ����� �� �ֽ��ϴ�. ȸ���� ������ ��� ������ ���Ͽ� ���� �� ȣ�� ���� ��쳪 �ո����� ���� �߻��� ���Ƿ� �̸� ����, �̵�, ������ �� �ֽ��ϴ�.<br>1. �Խõ� ������ �� ����� ����Ǵ� ���<br>2. �������� �� ��ǳ����� �����ϴ� ������ ���<br>3. �ٸ� ȸ�� �Ǵ� ��3�ڸ� ����ϰų� ���� �Ѽ��ϴ� ������ ���<br>4. ���� ������ ���� �ִٰ� �����Ǵ� ������ ���<br>5. ���� ���ݿ� �������� ���� ������ ���<br>6. ȸ���� ���۱�, ��3�� ���۱ǵ� ��Ÿ �Ǹ��� ħ���ϴ� ������ ���<br>7. ����� �Ǵ� �ҹ�, ����, �����ϴٰ� �ǴܵǴ� ������ ���<br>8. ��Ÿ ������ɿ� ���ݵȴٰ� �ǴܵǴ� ���<br>2) ȸ��� ȸ���� �Խù��� �����ϰ� �����ϸ� ����,�Ѽ�,�������� �ʵ��� �ּ��� ���ϰ�, ȸ���� ��� ���뿡 ���� ������������ �ּ��� ���մϴ�. <br>3) ����Ʈ(���� �Ż��ڷ� �� ����)�� ��ϵ� �Խù��� ���� ������ �ǹ��� ȸ�� ������ ������ �� ������ å���� ȸ�簡 ���� �ʽ��ϴ�.<br><br>�� 9 �� (���� ������ ���� �� ����)<br>1) ȸ��� ���� �� ȣ�� �ش��ϴ� ��� ������ ���� �Ǵ� �Ϻθ� �����ϰų� ������ �� �ֽ��ϴ�.<br>1. ȸ���� ��9���� ������ ȸ���� �ǹ��� �����ϰų� ��Ÿ �� ��� �� ���񽺾ȳ�, ������ɿ� ������ ���<br>2. ��ǳ����� �����ϴ� ����� ID �� �г��ӻ��<br>3. Ÿ�� �Ǵ� ��3�ڳ� �̿��ڿ��� ���� ��� �Ǵ� �������� �ְų�, ���� �̿��� ������ ���<br>4. ȸ���� ���� ��� ���Ƿ� �����ϰų� ȸ���� ���, ����, �����ڸ� ��Ī�ϴ� ���<br>5. ȸ�� ���Խ�û �Ǵ� �������� ����� ���� ������ ����� ���<br>6. ȸ�� ���� ������ �̿��Ͽ� ���� ������ ȸ�� ���� �³����� ���� �Ǵ� �����ϰų� ��������� �̿��ϴ� ���<br>7. ������ ���� ��� �����ϰų� ������ �������� �ٷ� ������ �����ϰų� ���� ������ �����ϴ� ���<br>8. ȸ��, �ٸ� �̿��� �Ǵ� �� 3���� ���������� ħ���ϴ� ���<br>9. ���� ���α׷����� ���׸� �ǿ��Ͽ� ���������� �ƴ��� ������� ���̹��ڻ��� ����ϰų� ���̹��ڻ��� Ÿ�ΰ� �ŷ��ϴ� ������ �� ���<br>10. �������� ���� ��� ���ذ� �� ���<br>11. ������� ��������ȸ �� ���� ��������� ���� �䱸�� �ִ� ���<br>12. ���񽺿� ������ ���� �� ����� ���� �ε����� ��� (��������, �����ġ ��)<br>13. ����������, õ������, ����, ���� ������ ��� �Ǵ� �̿뷮�� ���� ������ �������� ���� �̿뿡 ������ �ִ� ��<br>14. ���ο� ���񽺷� ��ü �� ���񽺸� ������ �� ���� ���� �߻���<br>15. ȸ���� ���� ������ ���� ȸ�� ��å �� �Ұ����� ���<br>16. ��Ÿ �Ұ��׷��� ������ �ִ� ���<br>2) �� ��11�� ��1�׿� ���Ͽ� ȸ��� ���񽺸� �̿��ϴ� ȸ������ ���� �̿뿡 ���Ͽ� ���� ���� ���� ���� �̿��� �Ͻ�����, �ʱ�ȭ, �̿��� ���� ���� �� �� �ִ�.<br><br>�� 10 �� (�̿����� ID, ��й�ȣ �� �������ῡ ���� �ǹ�)<br>1) ȸ���� ID�� ��й�ȣ�� ���� ��� ����å���� ȸ�����ο��� �ֽ��ϴ�.<br>2) ȸ���� ������ ID �� ��й�ȣ�� ��3�ڿ��� �̿��ϰ� �ؼ��� �ȵ˴ϴ�.<br>3) ȸ���� ������ ID �� ��й�ȣ�� ���� ���ϰų� ��3�ڰ� ����ϰ� ������ ������ ��쿡�� �ٷ� ȸ�翡 �뺸�ϰ� ȸ���� �ȳ��� �ִ� ��쿡�� �׿� ����� �մϴ�.<br>4) ȸ���� �� ������ �� ��� ���� �ø��� ��Ȯ�� ������ �����ϵ��� �Ͽ��� �ϸ�, ��Ȯ�� ���� ���� �ƴ������ν� ��3�ڰ� ���Ͽ� ���� ������ �̿��ϰ� �Ǵ� ���� ����� ���Ͽ� ���Ͽ��� �߻��ϴ� ���� �� �սǿ� ���Ͽ��� ȸ��� å���� �δ����� �ƴ��մϴ�. <br><br>�� 11 �� (�̿����� ����)<br>1) ȸ���� �̿����� �����ϰ��� �� ��� ȸ�簡 �ȳ��ϴ� ������� ȸ�� ������ ȸ�翡�� ���� ��û�� �ϰ�, ȸ��� Ȯ�������� ���� �̿����� �����մϴ�. ���� ó���� �ϴ� �������� �ý����� ������ �ҷ�ȸ�� ��� Ȯ�� ������ ������ �ð��� �ʿ��ϴٰ� �Ǵܵ� ���� ȸ������ ������ �����ϰ� ���Ŀ� ���� ó���ϰ� �˴ϴ�.<br>2) ȸ��� ȸ���� �� ��� �Ǵ� ���񽺾ȳ� ��Ÿ ������ɿ� ����Ǵ� ������ �Ͽ��� ���, ���� ������ �Ϻ� �Ǵ� ��ü�� ���� �̿������ ���� ���� ���� ���� �� �� �ֽ��ϴ�.<br><br>�� 12 �� (��å����) <br>1) ȸ��� õ������ �Ǵ� �̿� ���ϴ� �Ұ��׷����� ���Ͽ� ���񽺸� ������ �� ���� ��쿡�� ���� ������ ���� å���� �����˴ϴ�.<br>2) ȸ��� �Ⱓ��� ����ڰ� ������� ���񽺸� �����ϰų� ���������� �������� �ƴ��Ͽ� ���ذ� �߻��� ��� å���� �����˴ϴ�.<br>3) ȸ��� ȸ���� ��å������ ���� ���� �̿� ��ֿ� ���Ͽ� å���� ���� �ʽ��ϴ�.<br>4) ȸ��� ȸ���� ȸ���� ���� �������κ��� ���Ǵ� ������ ���� ���Ͽ��ų�, ���� �ڷῡ ���� ��� ���� �Ǵ� �̿����� ���� �߻��ϴ� ���� � ���ؼ��� å���� �����˴ϴ�.<br>5) ȸ��� ȸ���� ����Ʈ�� ������ �������� �� ������ ����, �ڷ�, ����� �ŷڵ�, ��Ȯ�� �� �� ���뿡 ���ؼ� å���� �����˴ϴ�.<br>6) ȸ��� ȸ���� �Խù� ���� �ڷ�����, �ļ� � ���� ���ؿ� ���� å������ ������, ���� ȸ���� �ڷ� � ���Ͽ� �׽� ���� ���� ��ġ�� ���ؾ� �մϴ�.<br>7) ȸ��� ���񽺿� ������ ����, ��ü, ��������, ���� �� �ε����� ������ �߻��� ���ؿ� ���� å���� �����˴ϴ�.<br>8) ȸ��� �̿����� ��ǻ�� ������ ���� ���ذ� �߻��� ���, �Ǵ� ȸ���� �Ż����� �� ���ڿ��� �ּҸ� �ν��ϰ� �����Ͽ� ���ذ� �߻��� ��� å���� ���� �ʽ��ϴ�.<br>9) ȸ��� ȸ���� ���񽺸� �̿��ϸ鼭 ���� �ڷ�� ���� ���ؿ� ���Ͽ� å���� ���� �ʽ��ϴ�. <br>10) ȸ��� ȸ���� �ſ��� ���� ������ ���� �ʽ��ϴ�. ���� ȸ��� ȸ���� ���񽺸� �̿��ϸ� Ÿȸ������ ���� �԰� �Ǵ� ������, ������ ���ؿ� ���Ͽ� ������ å���� ���� �ʽ��ϴ�.<br>11) ȸ��� �̿��� ��ȣ�� �� �̿��ڿ� ��3�� ��ȣ���� ���񽺸� �Ű��� �߻��� ���￡ ���� ������ �ǹ��� ������, �̷� ���� ���ظ� ����� å�ӵ� �����ϴ�.<br>12) ȸ��� ȸ������ ����� �����ϴ� ������ �̿�� �����ؼ��� ��� ���ص� å���� ���� �ʽ��ϴ�.<br>13) �� ����Ʈ�� ����Ǿ� ��3�ڿ� ���Ͽ� �����Ǵ� �ٸ� ���ͳ� ����Ʈ���� ����鿡 ���Ͽ� ȸ��� �ƹ��� ���������� �����ϴ�. ���� �ٸ� ���ͳ� ����Ʈ�� ���Ե� ������ ��Ȯ���� �ŷڼ��� ���Ͽ� ȸ��� �ƹ��� ���� å���� ���� �ʽ��ϴ�.<br>14) ȸ��� ȸ���� �� ��� ������ �����Ͽ� �߻��� �սǿ� ���Ͽ��� å���� ���� �ʽ��ϴ�.<br>15) ȸ���� ������ ����� �ڷῡ ���Ͽ� �߻��� ������ ���Ͽ����� å���� �����˴ϴ�.<br>16) ȸ��� ȸ���� �����ϰų� Ÿ�ΰ� ����ϴ� ����, �ڷ�, ��ǿ� ���� �ŷڵ�, ��Ȯ�� �� �� ���뿡 ���Ͽ� ���� ���ϸ�, �׷� ���� ��ȸ��, ������, �������� ������ �߻� �� �� å���� ���� �ʽ��ϴ�.<br>17) ȸ���� ȸ�簡 �����ϴ� ���޼��� �̿�� �����̿��� �ʿ信 ���� ���޻翡 �����ϴ� ���������� ���ؼ��� ������ �����Ͽ� ������ ������ �����ϰ� ������ ���������� ���� �߻��� ������ ���ؼ� ȸ��� å���� ���� �ʽ��ϴ�.<br>18) ȸ��� ��簡 ������ ���񽺰� �ƴ� ������ �Ǵ� ��Ÿ ���޻簡 �����ϴ� ������ ������� ��Ȯ��, ������ �� ���� ���Ͽ� �������� �ʽ��ϴ�. ���� ȸ��� ȸ���� �� ������ �̿������� ���Ͽ� �԰� �� ��� ������ �ս��̳� ���ؿ� ���Ͽ� å���� �δ����� �ƴ��մϴ�.<br><br>�� 13 ��(ȸ���� ���� ���� �� ��������)<br>1) ȸ���� ���� ���� �� ����� ����Ʈ�� �Խ��ϰų� ����, ��ȭ, ������� �Ǵ� ���ڿ���(e-mail)�� ������� �� �� �ֽ��ϴ�<br>2) ȸ��� ȸ���� ���� �̿� �� �ʿ��ϴٰ� �����Ǵ� �پ��� ����, ����, ����, �����ڷῡ ���ؼ� ����Ʈ�Խ�, ���ڿ���, ��ȭ, ����ϼ���, �������� ������ ȸ������ ������ �� �ֽ��ϴ�.<br>3) ȸ��� ȸ���鿡�� ���� ���� ���񽺸� �����ϰų� ȸ���� ���ο� ��ǰ�� �����ϱ� ���ؼ� ���ڿ���, ��ȭ, SMS, ���� ���� ������� ȸ���� ������ �������� �� ��� �� ���������� �� �� �ֽ��ϴ�.<br>4) ȸ��� ���� ���� �� ȸ�� ����� ���� �Ұ� ���� �������� ȸ���� ���� �Ͽ� �߰����� ���������� �䱸�� �� �ֽ��ϴ�.<br><br>�� 14 �� (������� �� �����ֿ��� �ŷ�)<br>1) ȸ�簡 ȸ������ ���񽺸� ������ �� �ִ� ���� ���ڱ���� �Ϻδ� ������縦 ���� �������κ��� ���ɴϴ�. ȸ���� ���� �̿�� ����Ǵ� ������� �� ���ۿ� ���� �����մϴ�.<br>2) ȸ��� ���񽺻� ����Ǿ� �ְų� �� ���񽺸� ���� �������� ����Ȱ���� ȸ���� �����ϰų� ���� �Ǵ� �ŷ��� �����ν� �߻��ϴ� �սǰ� ���ؿ� ���� å���� ���� �ʽ��ϴ�.<br><br>�� 15 �� (����� �ؼ�)<br>�� ��� �� ���񽺾ȳ����� ������ �ƴ��� ���װ� �� ��� �� ���񽺾ȳ��� �ؼ��� ������� �� ������� �����ϴ�.<br><br>�� 16 �� (�����ذ�)<br>1) ȸ��� ȸ�����κ��� ����Ǵ� �Ҹ����� �� �ǰ��� �켱������ �� ������ ó���ϵ��� ����մϴ�. <br>2) ȸ���� ���� �̿�� �����Ͽ� ����� ���� ������ �߻��� ��� ������� ���Ƿ� ó���ϵ� ���Ǽ����� ��Ģ�� ���� ������ �ذ����� ��Ģ���� �մϴ�.<br><br>�� 17 �� (���ҹ��� �� �ذŹ�)<br>1) ���� �̿�� �����Ͽ� ȸ��� ȸ������ �߻��� ���￡ ���� �Ҽ��� ��� ���� �������� �����ϴ� ������ ���ҹ������� �մϴ�.<br>2) �� ���� �̿�� �����Ͽ� ȸ��� ȸ������ ����� �Ҽۿ��� �ѱ� ���� �����մϴ�.<br><br><br>[��Ģ]   (������) �� ����� 2002�� 07�� 01�Ϻ��� �����մϴ�<br>[��Ģ]   (������) �� ����� 2002�� 09�� 09�Ϻ��� �����մϴ�<br>[��Ģ]   (������) �� ����� 2003�� 09�� 01�Ϻ��� �����մϴ�<br>[��Ģ]   (������) �� ����� 2004�� 10�� 18�Ϻ��� �����մϴ�<br>[��Ģ]   (������) �� ����� 2006�� 02�� 01�Ϻ��� �����մϴ�<br>[��Ģ]   (������) �� ����� 2007�� 04�� 27�Ϻ��� �����մϴ�<br>[��Ģ]   (������) �� ����� 2013�� 02�� 18�Ϻ��� �����մϴ�.<br><br><br></div>
							</td>
						</tr>
						<tr>
							<td class="ip_agree-3">
								<div style="float:left; width:262px;">									
									<div class="box"><label><input type="checkbox" title="�������� ���� �� �̿� ����" name="join_agree2" value="Y" class="agree_chk"/>&nbsp;�������� ���� �� �̿� ����</label></div>
									<div class="ip_textarea" style="width:250px;">
		&lt;�������� ���� �� �̿뵿�� &gt;<br/><br/>

		���� '����������ȣ��' �� ���� ������ ���������� ������ ���� ����.�̿��ϰ��� �մϴ�.<br/><br/>

		���������� ����.�̿� ����<br/>
		- ȸ�������� ���� ����(�¶��� ������, �����ʼҰ� �� ��ȥ���� ����) �̿�<br/>
		- ��ȥ���� ���� ��� �� �̿� ����, ������� �� ���� ���� �ȳ�, �̺�Ʈ ���� �ȳ�, ���� ���縦 ���� ���� Ȯ��<br/><br/>

		�����ϴ� ���������� �׸�<br/>
		- ����, ���̵�, ��й�ȣ, �������, ����, �̸���, ����ó �� �޴�����ȣ, �ּ�, ��ȥ���, �з�, ��������<br/><br/>

		���������� ���� �� �̿�Ⱓ<br/>
		- ��ȥ�߰����� ���� 5�� �Ǵ� �������� ���� �� Żȸ�� ��û�� ������ ����.�̿��մϴ�.<br/>
		- ��ȥȸ�� ������ ��� ���������� ���� ȸ�� ���� ��ħ�� ���� ���������� �����մϴ�.<br/> 
		- ��, ������ ������ ���ؼ��� �Ʒ��� ������ ����� �Ⱓ ���� �����մϴ�.<br/><br/>
		��. ȸ�� ���� ��ħ�� ���� �������� ����<br/><br/>

		-�������� ���� �� ȸ��Ż�� ��û��� <br/>
		������ ���� : ���� �̿� ���� <br/>
		������ �Ⱓ : ����� ȸ�� Ż���Ϻ��� 2�� <br/>
		������ �׸� : ���̵�, �̸�, �ֹι�ȣ ���ڸ�, �̸��� <br/><br/>

		-ä�뿡 ���� �Ի����� ��� <br/>
		������ ���� : ���ä���� ���� ���� <br/>
		�������Ⱓ : �������� ������ ��û�ϱ� ������<br/><br/>

		��. ���ù��ɿ� ���� �������� ���� <br/><br/>

		���, ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� �� ��������� ������ ���Ͽ� ������ �ʿ䰡 �ִ� ��� ȸ��� ������ɿ��� ���� ������ �Ⱓ ���� ȸ�������� �����մϴ�. �� ��� ȸ��� �����ϴ� ������ �� ������ �������θ� �̿��ϸ� �����Ⱓ�� �Ʒ��� �����ϴ�.<br/><br/>

		- ��� �Ǵ� û��öȸ � ���� ��� <br/>
		������ ���� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� <br/>
		������ �Ⱓ : 5�� <br/><br/>

		- ��ݰ��� �� ��ȭ ���� ���޿� ���� ���<br/> 
		������ ���� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� <br/>
		������ �Ⱓ : 5�� <br/><br/>

		- ���ڱ��� �ŷ��� ���� ��� <br/>
		������ ���� : ���ڱ����ŷ��� <br/>
		������ �Ⱓ : 5�� <br/><br/>

		- �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ��� <br/>
		������ ���� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� <br/>
		������ �Ⱓ : 3�� <br/><br/>

		- ���� Ȯ�ο� ���� ��� <br/>
		������ ���� : ������� �̿����� �� ������ȣ � ���� ���� <br/>
		������ �Ⱓ : 6���� <br/><br/>

		- ������Ʈ �湮��� <br/>
		������ ���� : ��ź�к�ȣ�� <br/>
		������ �Ⱓ : 3����<br/><br/>

		�� �������ǽ� ���Ի���� ���� �ּ����� ������ ����.�̿��ϰ� �Ǹ�, �� ���Ǹ� �ź��Ͻô� ��쿡�� �ش� �����̿� �� ���Ի�� �� �������� ���� ������ �Ұ��� �� �� �ֽ��ϴ�. <br/><br/><br/>


		<���� �������� ���� �� �̿뵿�� ����(2013�� 1�� 7��~2013�� 10�� 27��)><br/><br/>
		���������� ����.�̿� ����<br/>
		- ȸ�������� ���� ����(�¶��� ������, �����ʼҰ� �� ���� �� ��ȥ���� ����) �̿� <br/>
		- ��ȥ���� ���� �� ���������� ���, ������� �� ���� ���� �ȳ�, �̺�Ʈ ���� �ȳ�, ���� ���縦 ���� ���� Ȯ�� <br/><br/>

		�����ϴ� ���������� �׸�<br/>
		- ����, ���̵�, ��й�ȣ, �ֹι�ȣ ���ڸ�, ����, �̸���, ���� ���ſ���, ��ȭ��ȣ, �ּ�, ��ȥ�������, �з�, �����, �������, ��ȥ������ ��<br/><br/>

		���������� ���� �� �̿�Ⱓ<br/>
		- �������� ���� �� Żȸ�� ��û�� ������ �������̿��մϴ�. <br/>
		- ��ȥȸ�� ������ ��� ���������� ���� ȸ�� ���� ��ħ�� ���� ���������� �����մϴ�. <br/>
		- �ҷ�ȸ�� ���� �� �Һ��ں�ȣ�� ���� ���� �� Ÿ ������ ���� �����ؾ� �� �ʿ䰡 �ִ� ��쿡�� �����Ⱓ �����մϴ� <br/><br/><br/>

		<���� �������� ���� �� �̿뵿�� ����(2008�� 6�� 25��~2013�� 1�� 6��)><br/><br/>
		���������� ����.�̿� ����<br/>
		- ȸ�������� ���� ����(�¶��� ������, �����ʼҰ� �� ���� �� ��ȥ���� ����) �̿� <br/>
		- ��ȥ���� ���� �� ���������� ���, ������� �� ���� ���� �ȳ�, �̺�Ʈ ���� �ȳ�, ���� ���縦 ���� ���� Ȯ�� <br/><br/>

		�����ϴ� ���������� �׸�<br/>
		- ����, ���̵�, ��й�ȣ, �ֹε�Ϲ�ȣ, ����, �̸���, ���� ���ſ���, ��ȭ��ȣ, �ּ�, ��ȥ�������, �з�, �����, �������, ��ȥ������ ��<br/><br/>

		���������� ���� �� �̿�Ⱓ<br/>
		- �������� ���� �� Żȸ�� ��û�� ������ �������̿��մϴ�. <br/>
		- ��ȥȸ�� ������ ��� ���������� ���� ȸ�� ���� ��ħ�� ���� ���������� �����մϴ�. <br/>
		- �ҷ�ȸ�� ���� �� �Һ��ں�ȣ�� ���� ���� �� Ÿ ������ ���� �����ؾ� �� �ʿ䰡 �ִ� ��쿡�� �����Ⱓ �����մϴ� <br/><br/>


		</div>
								</div>
								<div style="float:right; width:262px;">
									<div class="box"><label><input type="checkbox" title="������ Ȱ�� ����" name="join_agree3" value="Y" class="agree_chk"/>&nbsp;������ Ȱ�� ����</label></div>
									<div class="ip_textarea" style="width:250px;">
		&lt;���������� ������ ���� ����&gt;<br/><br/>

		[�Һ��� ���� ��ȣ�� ���� ����]<br/><br/>
		�ּ����� ����ó�� �� ���ǰźο� ���� �ȳ� : �������ǽ� ���Ի�� �� ������ ���� ���� �ּ����� ������ ����.�̿��ϰ� �Ǹ�, �� ���Ǹ� �ź��Ͻô� ��쿡�� �ش� ������ �̿� �� ���Ի�� �� �������� ���� ������ �Ұ����� �� ������ �˷� �帳�ϴ�.<br/><br/>
		�������� �������� öȸ : �������� �������̿뿡 ������ ���Ŀ��� ��ȭ[��ǥ��ȣ], ����, ���� ���� ���� ������ ���� � ���� �������� ó�� ������ ��û�� �� �ֽ��ϴ�.<br/><br/>

		��ǰ���� ����û��(Do-Not Call) : �������� ���� �� �̿뿡 ������ ���Ŀ��� ��ȭ[��ǥ��ȣ], ���� ���� ���� ������Ȱ���� ���� ������ ��û�� �� �ֽ��ϴ�.<br/><br/>

		[�������� ������ ���� ����]<br/><br/>
		1.	���������� �����޴� �� : ��� Ŀ�øŴ��� �� �̺�Ʈ/������ ���<br/><br/>
		2.	���������� �����޴� ���� �̿� ����<br/>
		- ȸ�������� ���� ����(�¶��� ������, �����ʼҰ� �� ��ȥ���� ����) �̿� <br/>
		- ��ȥ���� ���� ��� �� �̿� ����, ������� �� ���� ���� �ȳ�, �̺�Ʈ ���� �ȳ�, ���� ���縦 ���� ���� Ȯ��<br/><br/>

		3.	������ ���������� ����<br/>
		- ���νĺ����� (����, ���̵�, �������, ����, �̸���, ����ó �� �޴�����ȣ, �ּ�, ��ȥ���, �з�, ��������)<br/><br/>

		4.	�����޴� ���� �������� ���� �� �̿�Ⱓ<br/>
		- ��ȥ�߰����� ���� 5�� �Ǵ� �������� ���� �� Żȸ�� ��û�� ������ ����.�̿��մϴ�.<br/>
		- ��ȥȸ�� ������ ��� ���������� ���� ȸ�� ���� ��ħ�� ���� ���������� �����մϴ�.<br/>
		- ��, ������ ������ ���ؼ��� �Ʒ��� ������ ����� �Ⱓ ���� �����մϴ�.<br/><br/>
		��. ȸ�� ���� ��ħ�� ���� �������� ����<br/><br/>

		-�������� ���� �� ȸ��Ż�� ��û��� <br/>
		������ ���� : ���� �̿� ���� <br/>
		������ �Ⱓ : ����� ȸ�� Ż���Ϻ��� 2�� <br/>
		������ �׸� : ���̵�, �̸�, �ֹι�ȣ ���ڸ�, �̸��� <br/><br/>

		-ä�뿡 ���� �Ի����� ��� <br/>
		������ ���� : ���ä���� ���� ���� <br/>
		�������Ⱓ : �������� ������ ��û�ϱ� ������<br/><br/>

		��. ���ù��ɿ� ���� �������� ���� <br/><br/>

		���, ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� �� ��������� ������ ���Ͽ� ������ �ʿ䰡 �ִ� ��� ȸ��� ������ɿ��� ���� ������ �Ⱓ ���� ȸ�������� �����մϴ�. �� ��� ȸ��� �����ϴ� ������ �� ������ �������θ� �̿��ϸ� �����Ⱓ�� �Ʒ��� �����ϴ�.<br/><br/>

		- ��� �Ǵ� û��öȸ � ���� ��� <br/>
		������ ���� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� <br/>
		������ �Ⱓ : 5�� <br/><br/>

		- ��ݰ��� �� ��ȭ ���� ���޿� ���� ���<br/> 
		������ ���� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� <br/>
		������ �Ⱓ : 5�� <br/><br/>

		- ���ڱ��� �ŷ��� ���� ��� <br/>
		������ ���� : ���ڱ����ŷ��� <br/>
		������ �Ⱓ : 5�� <br/><br/>

		- �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ��� <br/>
		������ ���� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� <br/>
		������ �Ⱓ : 3�� <br/><br/>

		- ���� Ȯ�ο� ���� ��� <br/>
		������ ���� : ������� �̿����� �� ������ȣ � ���� ���� <br/>
		������ �Ⱓ : 6���� <br/><br/>

		- ������Ʈ �湮��� <br/>
		������ ���� : ��ź�к�ȣ�� <br/>
		������ �Ⱓ : 3����<br/><br/>

		5. ���� �ȳ���� : SMS, Email, ��ȭ <br/><br/>
		</div>
								</div>
								

								<!--���, ������Ÿ� �߰� �����׸� ���� (ppt ����)-->
								
								<div class="ip_duo_check"><label><input type="checkbox" title="������� �������� ���� ������Ƽ ����/��ǰ �̺�Ʈ �ȳ��� �̸��� �Ǵ� �޴��� ���ڷ� ���� ����" name="u_agree_event" value="Y" class="agree_chk"/>&nbsp;������� �������� ���� ������Ƽ ����/��ǰ �̺�Ʈ �ȳ��� �̸��� �Ǵ� �޴��� ���ڷ� ���� ����</label></div>
								<!--���, ������Ÿ� �߰� �����׸� �� (ppt ����)-->
								
							</td>
						</tr>
						<tr>
							<td class="td_submit" align="center">
								<a href="javascript:check_join();" class="start_bt"><img src="/com_member/img/btn_01.png" /></a>
								<a class="ing_bt" style="display:none;"><img src="/com_member/img/loader.gif" /></a>	
							</td>
						</tr>
					</tbody>
				</table>
				</form>
			</div>
		</div>
	</div>
	<div id="footer">
	<div style="margin:0 auto; width:554px; padding:40px 0; overflow:hidden;">
		<span class="menu">
			<a href="/com_member/privacy_01.asp?site=duo">�̿���</a><span class="line">|</span>
			<a href="/com_member/privacy_02.asp?site=duo">��������ó����ħ</a><span class="line">|</span>
			<a href="#" onclick="window.open('https://www.duo.co.kr/html/common/notice_content.asp?no=579','message','width=650,height=421');return false;" onkeypress="this.onclick()">���ع��û������</a>
		</span>
		<span class="st-footer-1">
			<br />���� ������ ������� 406 (���ﵿ 820-9 �۶�Ÿ��) 11,12,16�� (06134)<br />�������(��) / ��ǥ��:�ڼ��� / ����ڵ�Ϲ�ȣ : 214-86-28824<br />
			����Ǹž��Ű� : ���� - 3259ȣ <a href="#">[����ڵ��Ȯ��]</a>
		</span>
		<span class="st-footer-1" style="padding-top:7px;">copyright 1995~2017 @<span style="color:#ff433c;">duoinfo</span> corp. all right reserved.</span>
	</div>
</div>
<!-- 2014-10-29 | google ga start -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-55116372-1', 'auto');
  ga('send', 'pageview');

</script>
<!-- 2014-10-29 google ga end -->


</div>
</body>
</html>