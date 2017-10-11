<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=euc-kr'>

<link rel="stylesheet" type="text/css" href="/com_member/css/membership.css" />
<script type="text/javascript" src="/html/common/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="/com_member/common/isValidType.js"></script>

<script type="text/javascript">
var tcounter;
var t1;
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
									<option value="02">�����б� ����</option>
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
								<div class="ip_textarea">[��   ��]
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
		- ��ȥ���� ���� ��� �� �̿� ����, �������� �� ���� ���� �ȳ�, �̺�Ʈ ���� �ȳ�, ���� ���縦 ���� ���� Ȯ��<br/><br/>

		�����ϴ� ���������� �׸�<br/>
		- ����, ���̵�, ��й�ȣ, �������, ����, �̸���, ����ó �� �޴�����ȣ, �ּ�, ��ȥ���, �з�, ��������<br/><br/>

		���������� ���� �� �̿�Ⱓ<br/>
		- ��ȥ�߰����� ���� 5�� �Ǵ� �������� ���� �� Żȸ�� ��û�� ������ ����.�̿��մϴ�.<br/>
		- ��ȥȸ�� ������ ��� ���������� ���� ȸ�� ���� ��ħ�� ���� ���������� �����մϴ�.<br/> 
		- ��, ������ ������ ���ؼ��� �Ʒ��� ������ ������ �Ⱓ ���� �����մϴ�.<br/><br/>
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
		- ��ȥ���� ���� �� ���������� ���, �������� �� ���� ���� �ȳ�, �̺�Ʈ ���� �ȳ�, ���� ���縦 ���� ���� Ȯ�� <br/><br/>

		�����ϴ� ���������� �׸�<br/>
		- ����, ���̵�, ��й�ȣ, �ֹι�ȣ ���ڸ�, ����, �̸���, ���� ���ſ���, ��ȭ��ȣ, �ּ�, ��ȥ�������, �з�, �����, �������, ��ȥ������ ��<br/><br/>

		���������� ���� �� �̿�Ⱓ<br/>
		- �������� ���� �� Żȸ�� ��û�� ������ �������̿��մϴ�. <br/>
		- ��ȥȸ�� ������ ��� ���������� ���� ȸ�� ���� ��ħ�� ���� ���������� �����մϴ�. <br/>
		- �ҷ�ȸ�� ���� �� �Һ��ں�ȣ�� ���� ���� �� Ÿ ������ ���� �����ؾ� �� �ʿ䰡 �ִ� ��쿡�� �����Ⱓ �����մϴ� <br/><br/><br/>

		<���� �������� ���� �� �̿뵿�� ����(2008�� 6�� 25��~2013�� 1�� 6��)><br/><br/>
		���������� ����.�̿� ����<br/>
		- ȸ�������� ���� ����(�¶��� ������, �����ʼҰ� �� ���� �� ��ȥ���� ����) �̿� <br/>
		- ��ȥ���� ���� �� ���������� ���, �������� �� ���� ���� �ȳ�, �̺�Ʈ ���� �ȳ�, ���� ���縦 ���� ���� Ȯ�� <br/><br/>

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
		�ּ����� ����ó�� �� ���ǰźο� ���� �ȳ� : �������ǽ� ���Ի�� �� �������� ���� ���� �ּ����� ������ ����.�̿��ϰ� �Ǹ�, �� ���Ǹ� �ź��Ͻô� ��쿡�� �ش� ������ �̿� �� ���Ի�� �� �������� ���� ������ �Ұ����� �� ������ �˷� �帳�ϴ�.<br/><br/>
		�������� �������� öȸ : �������� �������̿뿡 ������ ���Ŀ��� ��ȭ[��ǥ��ȣ], ����, ���� ���� ���� �������� ���� � ���� �������� ó�� ������ ��û�� �� �ֽ��ϴ�.<br/><br/>

		��ǰ���� ����û��(Do-Not Call) : �������� ���� �� �̿뿡 ������ ���Ŀ��� ��ȭ[��ǥ��ȣ], ���� ���� ���� ������Ȱ���� ���� ������ ��û�� �� �ֽ��ϴ�.<br/><br/>

		[�������� ������ ���� ����]<br/><br/>
		1.	���������� �����޴� �� : ��� Ŀ�øŴ��� �� �̺�Ʈ/������ ���<br/><br/>
		2.	���������� �����޴� ���� �̿� ����<br/>
		- ȸ�������� ���� ����(�¶��� ������, �����ʼҰ� �� ��ȥ���� ����) �̿� <br/>
		- ��ȥ���� ���� ��� �� �̿� ����, �������� �� ���� ���� �ȳ�, �̺�Ʈ ���� �ȳ�, ���� ���縦 ���� ���� Ȯ��<br/><br/>

		3.	������ ���������� ����<br/>
		- ���νĺ����� (����, ���̵�, �������, ����, �̸���, ����ó �� �޴�����ȣ, �ּ�, ��ȥ���, �з�, ��������)<br/><br/>

		4.	�����޴� ���� �������� ���� �� �̿�Ⱓ<br/>
		- ��ȥ�߰����� ���� 5�� �Ǵ� �������� ���� �� Żȸ�� ��û�� ������ ����.�̿��մϴ�.<br/>
		- ��ȥȸ�� ������ ��� ���������� ���� ȸ�� ���� ��ħ�� ���� ���������� �����մϴ�.<br/>
		- ��, ������ ������ ���ؼ��� �Ʒ��� ������ ������ �Ⱓ ���� �����մϴ�.<br/><br/>
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