<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=euc-kr'>
	<meta http-equiv="X-UA-Compatible" content="IE=9,chrome=1">
		<meta name="naver-site-verification"
			content="9fab0a0cdc321d5be40004ead9b3f0cf4837c8d0" />
		<meta name='Subject' content='��ȥ����ȸ�� ��� - �ѱ���ǥ��ȥ����ȸ��'>
			<meta name='Title'
				content='��ȥ����ȸ�� ��� - �ѱ���ǥ��ȥ����ȸ��, ��ȥ, ��ȥ, ��ȥ, �����, ��ȥ����ȸ��'>
				<meta name='Keywords'
					content='��ȥ����ȸ��, ��ȥ����, ��ȥ, ��ȥ�ص��, ���,��ȥ������ü, ��� ��ȥ'>
					<meta name='Description'
						content='��ȥ����ȸ��,��ȥ,��ȥ,�������ȥ,���� �̻���ã��,�¼�,�߸�,�����ּ�,������Ƽ,���׶� Ŀ�øŴ���,�����ִ� ������,�������ִ� ���,100%�ſ�����,���Ժ�������,�������켱,ȯ�ұ����ؼ�,2012 �Һ��ڰ� ���� ���� �ŷ��ϴ� �귣����'>
						<title>���-�ѱ���ǥ��ȥ����ȸ��</title>
						<link href="/duo/common/css/common.css" rel="stylesheet"
							type="text/css" />
						<link href="/duo/common/css/sub_layout.css" rel="stylesheet"
							type="text/css" />
						<link href="/duo/common/css/sub_top_20151002.css" rel="stylesheet"
							type="text/css" />

						<link href="/duo/common/css/serviceResult.css" rel="stylesheet"
							type="text/css" />
						<script type="text/javascript"
							src="/duo/common/js/jquery-1.11.0.min.js"></script>
						<script language="javascript" type="text/javascript"
							src="/duo/common/isValidType.js"></script>
						<script language="javascript" type="text/javascript"
							src="/duo/common/flashshow.js"></script>
						<script type="text/javascript"
							src="/duo/common/js/include_ex_script.js"></script>
						<script type="text/javascript">
							function check_scroll(now_position) {
								var marry_position = $(".marry_fee1")
										.position();

								/* var remarry_position = $(".remarry_fee").position(); */
								var noble_position = $(".noble_fee1")
										.position();

								//alert(marry_position.top +"/"+ remarry_position.top +"/"+ noble_position.top);

								//$(".tab_nav").eq(0).html(marry_position.top +"/"+ remarry_position.top +"/"+ noble_position.top +"/"+now_position);

								/* if (now_position > 0 && now_position < (remarry_position.top-100))
								{
									$(".tab_nav").removeClass("on");
									$(".tab_nav").removeClass("other");
									$(".tab_nav").addClass("other");
									$(".tab_nav").eq(0).removeClass("other");
									$(".tab_nav").eq(0).addClass("on");
									return;
								} */

								if (now_position > (marry_position.top - 50)
										&& now_position < (noble_position.top - 100)) {
									$(".tab_nav").removeClass("on");
									$(".tab_nav").removeClass("other");
									$(".tab_nav").addClass("other");

									$(".tab_nav").eq(1).removeClass("other");
									$(".tab_nav").eq(1).addClass("on");
									return;
								}

								/* if (now_position > (noble_position.top-100))
								{
									$(".tab_nav").removeClass("on");
									$(".tab_nav").removeClass("other");
									$(".tab_nav").addClass("other");
									
									$(".tab_nav").eq(2).removeClass("other");
									$(".tab_nav").eq(2).addClass("on");	
									return;
								} */
							}

							function tab_scroll_move(obj) {
								var now_position = $("." + obj).position();
								now_position = now_position.top + 80;

								$("body,html").stop().animate({
									"scrollTop" : now_position + "px"
								}, 500);
							}

							$(document)
									.ready(
											function() {
												$(".left_radio")
														.click(
																function() {
																	var now_position = $(
																			".left_radio")
																			.index(
																					this);

																	$(
																			".left_radio")
																			.removeClass(
																					"radio_off");
																	$(
																			".left_radio")
																			.removeClass(
																					"radio_on");
																	$(
																			".left_radio")
																			.addClass(
																					"radio_off");

																	$(
																			".left_radio")
																			.eq(
																					now_position)
																			.removeClass(
																					"radio_off");
																	$(
																			".left_radio")
																			.eq(
																					now_position)
																			.addClass(
																					"radio_on");
																});

												$(window)
														.scroll(
																function() {
																	if ($(this)
																			.scrollTop() > 187) {
																		$(
																				".fee_tab")
																				.css(
																						"top",
																						"0");
																		$(
																				".fee_tab_sub")
																				.css(
																						"position",
																						"fixed");
																		$(
																				".fee_tab_sub")
																				.css(
																						"top",
																						"10px");

																		$(
																				".tab_nav")
																				.removeClass(
																						"other");
																		$(
																				".tab_nav")
																				.removeClass(
																						"on");
																		$(
																				".tab_nav")
																				.addClass(
																						"other");
																		$(
																				".tab_nav")
																				.eq(
																						0)
																				.removeClass(
																						"other");
																		$(
																				".tab_nav")
																				.eq(
																						0)
																				.addClass(
																						"on");
																	} else {
																		$(
																				".fee_tab")
																				.css(
																						"top",
																						"187px");
																		$(
																				".fee_tab_sub")
																				.css(
																						"position",
																						"static");
																		$(
																				".fee_tab_sub")
																				.css(
																						"top",
																						"10px");

																		$(
																				".tab_nav")
																				.removeClass(
																						"other");
																		$(
																				".tab_nav")
																				.removeClass(
																						"on");
																		$(
																				".tab_nav")
																				.eq(
																						0)
																				.removeClass(
																						"other");
																		$(
																				".tab_nav")
																				.eq(
																						0)
																				.addClass(
																						"on");
																	}

																	check_scroll($(
																			this)
																			.scrollTop());
																});

											});
						</script>
</head>

<body>
	<div id="subArea">
		<h1>���</h1>
		<!--��ܿ���-->
		<div id="nw_header">
			<div class="menu-wrapper">
				<div class="main-menu">
					<div style="float: left; width: 230px; overflow: hidden;">
						<h1 class="logo">
							<a href="/"><img
								src="/duo/include/header/img/sub_logo_new.jpg" alt="���" /></a>
						</h1>
						<div
							style="float: left; margin: 47px 0 0 15px; width: 120px; font-family: 'Malgun Gothic', '�������'; font-size: 11px; color: #8d8d8d;">
							�ѱ���ǥ��ȥ����ȸ��<br />
							<span style="font-size: 12px; color: #5d5d5d;">��ȥȸ����
								35,918��</span>
						</div>
					</div>

					<ul class="menu-list">
						<li class="menu-01 root_menu" style="margin: 0;"><a
							href="/duo/duostory/main.asp">����̾߱�</a></li>
						<li class="menu-02 root_menu"><a href="/duo/service/main.asp">���Ծȳ�</a></li>
						<li class="menu-03 root_menu"><a href="/duo/member/main.asp">ȸ���˻�</a></li>
						<li class="menu-04 root_menu"><a
							href="/duo/duo_couple/main.asp">��ȥĿ��</a></li>
						<li class="menu-05 root_menu"><a
							href="/duo/love_test/main.asp">�����׽�Ʈ</a></li>
						<li class="menu-06 root_menu"><a
							href="/duo/meetguide/main.asp">���ð��̵�</a></li>
						<li class="menu-07 root_menu"><a href="/duo/event/main.asp">�̺�Ʈ</a></li>
						<li class="menu-08 root_menu"><a
							href="http://www.duoremarry.com/" target="_blank">��ȥ</a></li>
						<li class="menu-09 root_menu"><a
							href="http://www.duowed.com/" target="_blank">����</a></li>
					</ul>

					<div class="gnb-menu">
						<ul class="gnb">
							<!--<li><a href="/Duo/duostory/humanlife.asp">����޸ն�����������</a></li>-->

							<li><a href="/duo/membership/logout.asp">�α׾ƿ�</a></li>
							<li><a href="/duo/mypage/mypage.asp">����������</a></li>

							<li><a href="/duo/helpdesk/main.asp">��������ũ</a></li>
							<li style="color: #000000; font-weight: bold;"><a
								href="http://english.duo.co.kr/" target="_blank">DUO USA</a></li>
						</ul>
					</div>


				</div>
				<div class="depth-menu">
					<div class="common-wrapper-2 depth2">
						<div class="d-left">
							<h2 class="t-menu" style="position: static; visibility: visible;">
								���ȥ��ȭâ��<br />
								<span class="menu-01">����̾߱�</span>
							</h2>
							<a href="/duo/duostory/main.asp" class="go">�ٷΰ���</a>
							<p class="tel">
								��������ȭ<br />
								<span>1577-8333</span>
							</p>
						</div>
						<ul class="depth-list">
							<li class="menu-01"><a href="/duo/duostory/ceo_greeting.asp">CEO�Ұ�</a></li>
							<li class="menu-01"><a
								href="/duo/duostory/manager_intro.asp">Ŀ�øŴ��� �Ұ�</a></li>
							<li class="menu-01"><a href="/duo/duostory/ad_tv.asp">����
									������</a></li>
							<li class="menu-01"><a href="/duo/duostory/media_main.asp">��п�
									��ģ ���</a></li>
							<li class="menu-01"><a href="/duo/duostory/video.asp">������
									�̾߱�</a></li>
							<!--<li class="menu-01"><a href="/Duo/duostory/humanlife.asp">����޸ն�����������</a></li>-->
							<li class="menu-01"><a href="/duo/duostory/browse.asp">���
									�ѷ�����</a></li>
							<li class="menu-01"><a href="/duo/duostory/campaign.asp">�Ƹ��ٿ�
									ķ����</a></li>
						</ul>
						<div class="d-right">
							<h3 class="thumb" style="position: static; visibility: visible;">
								<a href="/Duo/duostory/video.asp" class="menu-01">�� ����
									����ϴ°�_1��] '����'</a>
							</h3>
							<ul class="bn-list">
								<li><a href="/duo/service/program01.asp" class="bn-1">���
										���Ծȳ�</a></li>
								<li><a href="/duo/member/matching_main.asp" class="bn-2">��
										�̻����� ���?</a></li>
								<li><a href="/duo/service/know.asp" class="bn-3">WHY
										����ϱ��?</a></li>
							</ul>
						</div>
					</div>
					<div class="common-wrapper-2 depth2">
						<div class="d-left">
							<h2 class="t-menu" style="position: static; visibility: visible;">
								��� ����<br />
								<span class="menu-02">���Ծȳ�</span>
							</h2>
							<a href="/duo/service/main.asp" class="go">�ٷΰ���</a>
							<p class="tel">
								��������ȭ<br />
								<span>1577-8333</span>
							</p>
						</div>
						<ul class="depth-list"
							style="float: left; margin: 21px 0 0 25px; width: 215px; font-size: 14px; color: #5d5d5d; line-height: 33px;">
							<li class="menu-02"><a href="/duo/service/know.asp">��
									����ϱ��?</a></li>
							<li class="menu-02"><a href="/duo/service/number_duo.asp">���ڷ�
									���� ���</a></li>
							<li class="menu-02"><a href="/duo/service/program01.asp">��������</a></li>
							<li class="menu-02"><a href="/duo/service/service.asp">���Ժ�
									�ȳ�</a></li>
							<li class="menu-02"><a href="/duo/service/matching_01.asp">����
									�� Ȱ������</a></li>
							<!--<li class="menu-02"><a href="/Duo/service/consult.asp">�����&�ڷ��û</a></a></li>-->
							<li class="menu-02"><a href="/duo/service/matching_02.asp">��Ī�ý���</a></li>
							<li class="menu-02"><a
								href="/duo/service/free_service/201611_main_01.asp">���� ����ü��</a></li>
							<li class="menu-02"><a href="/duo/service/members.asp">�����Ŭ��
									�˾ƺ���</a></li>
							<li class="menu-02"><a
								href="/duo/service/marriage_consult.asp">�ڳ��ȥ ������</a></li>
						</ul>
						<div class="d-right">
							<h3 class="thumb" style="position: static; visibility: visible;">
								<a href="/duo/service/members.asp" class="menu-02">��ȥ Ȯ��
									�����ִ� �����Ŭ���� ���� 4����!</a>
							</h3>
							<ul class="bn-list">
								<li><a href="/duo/service/program01.asp" class="bn-1">���
										���Ծȳ�</a></li>
								<li><a href="/duo/member/matching_main.asp" class="bn-2">��
										�̻����� ���?</a></li>
								<li><a href="/duo/service/know.asp" class="bn-3">WHY
										����ϱ��?</a></li>
							</ul>
						</div>
					</div>
					<div class="common-wrapper-2 depth2">
						<div class="d-left">
							<h2 class="t-menu" style="position: static; visibility: visible;">
								�ŷ��� �� �ִ� ���<br />
								<span class="menu-03">ȸ���˻�</span>
							</h2>
							<a href="/duo/member/main.asp" class="go">�ٷΰ���</a>
							<p class="tel">
								��������ȭ<br />
								<span>1577-8333</span>
							</p>
						</div>
						<ul class="depth-list">
							<li class="menu-03"><a
								href="/duo/member/photo_interview.asp">���ȸ�����ͺ�</a></li>
							<li class="menu-03"><a
								href="/duo/member/member_search01.asp">��ȥȸ���˻�</a></li>
							<li class="menu-03"><a href="/duo/member/matching_main.asp">�̻���ã��</a></li>
							<li class="menu-03"><a href="/duo/member/data_marry.asp">���ȸ����Ȳ</a></li>
							<li class="menu-03"><a href="/duo/member/customer_voice.asp">ȸ��ü���ı�</a></li>
						</ul>
						<div class="d-right">
							<h3 class="thumb" style="position: static; visibility: visible;">
								<a href="/duo/member/matching_main.asp" class="menu-03">DUO
									MATCHING TEST! ������ �̻��� ã��</a>
							</h3>
							<ul class="bn-list">
								<li><a href="/duo/service/program01.asp" class="bn-1">���
										���Ծȳ�</a></li>
								<li><a href="/duo/member/matching_main.asp" class="bn-2">��
										�̻����� ���?</a></li>
								<li><a href="/duo/service/know.asp" class="bn-3">WHY
										����ϱ��?</a></li>
							</ul>
						</div>
					</div>
					<div class="common-wrapper-2 depth2">
						<div class="d-left">
							<h2 class="t-menu" style="position: static; visibility: visible;">
								�������� �ǽð� ��ȥȸ�� ����<br />
								<span class="menu-04">��ȥĿ��</span>
							</h2>
							<a href="/duo/duo_couple/main.asp" class="go">�ٷΰ���</a>
							<p class="tel">
								��������ȭ<br />
								<span>1577-8333</span>
							</p>
						</div>
						<ul class="depth-list">
							<li class="menu-04"><a
								href="/duo/duo_couple/couple_interview.asp">��ȥĿ�� ���ͺ�</a></li>
							<li class="menu-04"><a
								href="/duo/duo_couple/couple_story.asp">��ȥĿ�� ���丮</a></li>
							<li class="menu-04"><a
								href="/duo/duo_couple/couple_list.asp">��ȥĿ�� ����Ʈ</a></li>
							<li class="menu-04"><a
								href="/duo/duo_couple/couple_assay_main.asp">��ȥĿ�� �м�</a></li>
						</ul>
						<div class="d-right">
							<h3 class="thumb" style="position: static; visibility: visible;">
								<a href="/duo/duo_couple/couple_assay_main.asp" class="menu-04">4�ð�����
									1�� ��ȥ ����� ��ȥ��������</a>
							</h3>
							<ul class="bn-list">
								<li><a href="/duo/service/program01.asp" class="bn-1">���
										���Ծȳ�</a></li>
								<li><a href="/duo/member/matching_main.asp" class="bn-2">��
										�̻����� ���?</a></li>
								<li><a href="/duo/service/know.asp" class="bn-3">WHY
										����ϱ��?</a></li>
							</ul>
						</div>
					</div>
					<div class="common-wrapper-2 depth2">
						<div class="d-left">
							<h2 class="t-menu" style="position: static; visibility: visible;">
								�پ��� �ɸ��׽�Ʈ<br />
								<span class="menu-05">�����׽�Ʈ</span>
							</h2>
							<a href="/duo/love_test/main.asp" class="go">�ٷΰ���</a>
							<p class="tel">
								��������ȭ<br />
								<span>1577-8333</span>
							</p>
						</div>
						<ul class="depth-list" style="margin: 23px 0 0 25px;">
							<li class="menu-05"><a
								href="/duo/love_test/loveclinic/loveclinic_main.asp">��������
									�׽�Ʈ</a></li>
							<li class="menu-05"><a
								href="/duo/love_test/love_tendency/love_tendency_main.asp">LOVE
									���� �׽�Ʈ</a></li>
							<li class="menu-05"><a
								href="/duo/love_test/partner_test2/partner_test_main.asp">��
									��ȥ��� ã��</a></li>
							<li class="menu-05"><a
								href="/duo/love_test/self_love/self_love_main.asp">���������˻�</a></li>
							<li class="menu-05"><a
								href="/duo/fortune2015/fortune_main.asp">���� ���ֿ� ����</a></li>
							<li class="menu-05"><a
								href="/duo/love_test/affinity/main.asp">��ȥģȭ�� �׽�Ʈ</a></li>
							<li class="menu-05"><a
								href="/duo/love_test/color_test/color_test_main.asp">�÷� ����
									�׽�Ʈ</a></li>
							<li class="menu-05"><a
								href="/duo/love_test/love_sense/love_sense.asp">���ְ��������׽�Ʈ</a></li>
							<li class="menu-05"><a
								href="/duo/love_test/talisman/main.asp">����� ���ֺ��� �ޱ�</a></li>
						</ul>
						<div class="d-right">
							<h3 class="thumb" style="position: static; visibility: visible;">
								<a href="/duo/love_test/affinity/main.asp" class="menu-05">����
									��ȥ ���ɼ��� �� ��? ��ȥģȭ�� �׽�Ʈ</a>
							</h3>
							<ul class="bn-list">
								<li><a href="/duo/service/program01.asp" class="bn-1">���
										���Ծȳ�</a></li>
								<li><a href="/duo/member/matching_main.asp" class="bn-2">��
										�̻����� ���?</a></li>
								<li><a href="/duo/service/know.asp" class="bn-3">WHY
										����ϱ��?</a></li>
							</ul>
						</div>
					</div>
					<div class="common-wrapper-2 depth2">
						<div class="d-left">
							<h2 class="t-menu" style="position: static; visibility: visible;">
								��հ� ������ TIP<br />
								<span class="menu-06">���ð��̵�</span>
							</h2>
							<a href="/duo/meetguide/main.asp" class="go">�ٷΰ���</a>
							<p class="tel">
								��������ȭ<br />
								<span>1577-8333</span>
							</p>
						</div>
						<ul class="depth-list"
							style="float: left; margin: 21px 0 0 25px; width: 215px; font-size: 14px; color: #5d5d5d; line-height: 33px;">
							<li class="menu-06"><a href="/duo/news/card_news.asp">ī�崺��</a></li>
							<li class="menu-06"><a
								href="/duo/meetguide/success_time.asp">���ü�������</a></li>
							<li class="menu-06"><a
								href="/duo/meetguide/love_qna_list.asp">���ְ��Q&A</a></li>
							<li class="menu-06"><a
								href="/duo/meetguide/love_column_list.asp">����Į��</a></li>
							<li class="menu-06"><a
								href="/duo/meetguide/cartoon_list.asp">����ī��</a></li>
							<li class="menu-06"><a href="/duo/meetguide/date_list.asp">��õ!
									����Ʈ �ڽ�</a></li>
							<li class="menu-06"><a
								href="/duo/meetguide/love_speech_list.asp">���ֽ���ġ</a></li>
							<li class="menu-06"><a
								href="/duo/meetguide/love_institute_list.asp">���ֿ�����</a></li>
							<li class="menu-06"><a
								href="/duo/meetguide/research_list.asp">����! ����ġ</a></li>
						</ul>
						<div class="d-right">
							<h3 class="thumb" style="position: static; visibility: visible;">
								<a href="/duo/meetguide/love_column_list.asp" class="menu-06">�˽��޽�
									���ֽɸ� �����÷�</a>
							</h3>
							<ul class="bn-list">
								<li><a href="/duo/service/program01.asp" class="bn-1">���
										���Ծȳ�</a></li>
								<li><a href="/duo/member/matching_main.asp" class="bn-2">��
										�̻����� ���?</a></li>
								<li><a href="/duo/service/know.asp" class="bn-3">WHY
										����ϱ��?</a></li>
							</ul>
						</div>
					</div>
					<div class="common-wrapper-2 depth2">
						<div class="d-left">
							<h2 class="t-menu" style="position: static; visibility: visible;">
								���� ��ȭ �׸��� ������Ƽ<br />
								<span class="menu-07">�̺�Ʈ</span>
							</h2>
							<a href="/duo/event/main.asp" class="go">�ٷΰ���</a>
							<p class="tel">
								��������ȭ<br />
								<span>1577-8333</span>
							</p>
						</div>
						<ul class="depth-list">
							<li class="menu-07"><a href="/duo/event/event_list.asp">�̺�Ʈ
									��ü����</a></li>
							<li class="menu-07"><a href="/duo/event/join_party.asp">���������Ƽ</a></li>
							<li class="menu-07"><a
								href="/duo/event/event_sketch_list.asp">��Ƽ���� ������</a></li>
							<li class="menu-07"><a
								href="/duo/event/event_spentry_list.asp">�ı�&�����Խ���</a></li>
							<li class="menu-07"><a href="/duo/event/event_qna_01.asp">�����Ƽ
									Q&A</a></li>
						</ul>
						<div class="d-right">
							<h3 class="thumb" style="position: static; visibility: visible;">
								<a href="/duo/event/event_list_view.asp?evt_no=4451"
									class="menu-07">���� ���̾� 3ź</a>
							</h3>
							<ul class="bn-list">
								<li><a href="/duo/service/program01.asp" class="bn-1">���
										���Ծȳ�</a></li>
								<li><a href="/duo/member/matching_main.asp" class="bn-2">��
										�̻����� ���?</a></li>
								<li><a href="/duo/service/know.asp" class="bn-3">WHY
										����ϱ��?</a></li>
							</ul>
						</div>
					</div>
					<div class="common-wrapper-2 depth2">
						<div class="d-left">
							<h2 class="t-menu" style="position: static; visibility: visible;">
								��ȥ�� ���� ���<br />
								<span class="menu-08">��ȥ</span>
							</h2>
							<a href="http://www.duoremarry.com/" class="go" target="_blank">�ٷΰ���</a>
							<p class="tel">
								��������ȭ<br />
								<span>1577-8333</span>
							</p>
						</div>
						<ul class="depth-list">
							<li class="menu-08"><a
								href="http://www.duoremarry.com/Duo/remarry/remarry.asp"
								target="_blank">�����ȥ�Ұ�</a></li>
							<li class="menu-08"><a
								href="http://www.duoremarry.com/Duo/service/program.asp"
								target="_blank">���Ծȳ�</a></li>
							<li class="menu-08"><a
								href="http://www.duoremarry.com/Duo/member/member_data.asp"
								target="_blank">��ȥȸ����Ȳ</a></li>
							<li class="menu-08"><a href="/Duo/member/matching_main.asp">��ȥ���ã��</a></li>
							<li class="menu-08"><a
								href="http://www.duoremarry.com/Duo/service/marriage_guide.asp"
								target="_blank">��ȥ������ ���</a></li>
							<li class="menu-08"><a
								href="/Duo/service/free_service/201611_main_01.asp">���� ����ü��</a></li>
						</ul>
						<div class="d-right">
							<h3 class="thumb" style="position: static; visibility: visible;">
								<a href="http://www.duoremarry.com/Duo/member/member_data.asp"
									class="menu-08" target="_blank">��� ��ȥȸ�� �м� Report</a>
							</h3>
							<ul class="bn-list">
								<li><a
									href="http://www.duoremarry.com/Duo/service/service.asp"
									class="bn-1" target="_blank">��� ���Ծȳ�</a></li>
								<li><a href="/Duo/member/matching_main.asp" class="bn-2">��
										�̻����� ���?</a></li>
								<li><a href="/Duo/service/know.asp" class="bn-3">WHY
										����ϱ��?</a></li>
							</ul>
						</div>
					</div>
					<div class="common-wrapper-2 depth2">
						<div class="d-left">
							<h2 class="t-menu" style="position: static; visibility: visible;">
								����� ���� ����������<br />
								<span class="menu-09">����</span>
							</h2>
							<a href="http://www.duowed.com/" class="go" target="_blank">�ٷΰ���</a>
							<p class="tel">
								��������ȭ<br />
								<span>1577-2229</span>
							</p>
						</div>
						<ul class="depth-list">
							<li class="menu-09"><a
								href="http://www.duowed.com/Duo/duowed/main.asp" target="_blank">�������Ұ�</a></li>
							<li class="menu-09"><a
								href="http://www.10weddinghall.com/Duo/search/hall_search.asp"
								target="_blank">����Ȧ �˻�</a></li>
							<li class="menu-09"><a
								href="http://www.10weddinghall.com/Duo/event/main.asp"
								target="_blank">����Ȧ �̺�Ʈ</a></li>
							<li class="menu-09"><a
								href="http://www.duowed.com/Duo/gallery/gallery_list.asp?pagemode=studio"
								target="_blank">����������</a></li>

							<li class="menu-09"><a
								href="http://www.duowed.com/Duo/couple/after_list.asp"
								target="_blank">Ŀ�ý��丮</a></li>
							<li class="menu-09"><a
								href="http://www.duowed.com/Duo/event/free_diary_consult.asp"
								target="_blank">�������̾��û</a></li>
						</ul>
						<div class="d-right">
							<h3 class="thumb" style="position: static; visibility: visible;">
								<a href="http://www.duowed.com/Duo/event/fair/fair_170823.asp"
									class="menu-09" target="_blank">�����귣�� �Ż� ������</a>
							</h3>
							<ul class="bn-list">
								<li><a href="http://www.duowed.com/Duo/gallery/self.asp"
									class="w-bn-1" target="_blank">������Ű�� ��������</a></li>
								<li><a
									href="http://www.10weddinghall.com/Duo/estimate/estimate.asp"
									class="w-bn-2" target="_blank">���ĺ�� ��������</a></li>
								<li><a
									href="http://www.duowed.com/Duo/guide/dress_choice.asp"
									class="w-bn-3" target="_blank">�巹�� ���� �׽�Ʈ</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="border"></div>
			</div>
		</div>
		<script type="text/javascript">
			$(document).mousemove(function(e) {
				if (e.pageY > 450) {
					$(".depth-menu").slideUp(300);
				}

			});

			$(".root_menu").mouseover(function() {
				var now_position = $(".root_menu").index(this);

				$(".depth-menu").slideDown(300);
				$(".depth2").hide();
				$(".depth2").eq(now_position).show();
			});

			$(".gnb").mouseover(function() {
				$(".depth-menu").slideUp(300);
			});

			$("#subcontentArea").mouseover(function() {
				$(".depth-menu").slideUp(300);
			});
		</script>
		<!--��ܿ���-->
		<!-- 2016-05-06 | �ӽ��˾�
	<script type="text/javascript">
	function popup20160510_close()
	{
		$("#popup20160510").hide();
	}
	</script>
	
	<div style="position:absolute; left:0; top:98px; width:417px; height:462px; z-index:300;" id="popup20160510">
		<div style="width:417px; height:462px; position:relative;">
			<img src="/Duo/popup/img/pop_img_20161208.jpg" />
			<a href="javascript:popup20160510_close();" style="position:absolute; right:10px; top:10px; display:block; width:18px; height:18px; background:url(/duo/popup/img/close_btn.png) no-repeat left top; font-size:0; line-height:0;">�˾��ݱ�</a>
		</div>
	</div>
	<!-- 2016-05-06 | �ӽ��˾� - startend-->
		<!--���뿵��-->
		<style>
#main_pop_bg {
	opacity: 0.8;
	filter: alpha(opacity : '80');
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 100000;
	background-color: rgb(0, 0, 0);
	display: none;
}

#main_consult_popup {
	opacity: 1;
	position: fixed;
	overflow: hidden;
	z-index: 100001;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	text-align: center;
	display: none;
}

#main_consult_popup .align {
	display: inline-block;
	vertical-align: middle;
	height: 100%;
}

#main_consult_popup .content {
	display: inline-block;
	opacity: 1;
	visibility: visible;
	outline: none;
	text-align: left;
	position: relative;
	vertical-align: middle;
	font-family: Malgun Gothic, ���� ���, Dotum, ����, Gulim, ����;
}

#main_consult_popup .view-wrapper {
	float: left;
	width: 100%;
	min-width: 1040px;
}

#main_consult_popup .view-wrapper span.close {
	display: block;
	float: left;
	width: 1040px;
	text-align: right;
	margin-bottom: 10px;
}

#main_consult_popup .view-wrapper span.st-1 {
	display: block;
	float: left;
	width: 520px;
	height: 580px;
	background: #5298ee url(/duo/main_img_2016/popup_01.gif) center center
		no-repeat;
}

#main_consult_popup .view-wrapper form {
	display: block;
	float: left;
	margin: 0;
	padding: 0;
	padding: 0 80px;
	width: 360px;
	height: 580px;
	padding-top: 40px;
	height: 540px;
	background-color: #ffffff;
}

#main_consult_popup .view-wrapper form a.confirm {
	display: block;
	clear: both;
	float: left;
	width: 360px;
	height: 54px;
	background: #5298ee url(/Duo/main_img_2016/popup_02.gif) center center
		no-repeat;
	font-size: 0;
	line-height: 0;
}

#main_consult_popup .view-wrapper form table {
	width: 100%;
	font-family: Malgun Gothic, ���� ���, Dotum, ����, Gulim, ����;
}

#main_consult_popup .view-wrapper form table caption {
	display: block;
	margin-top: -1px;
	height: 0;
	color: transparent;
	line-height: 0;
	overflow: hidden;
}

#main_consult_popup .view-wrapper form table td {
	line-height: 36px;
	padding-bottom: 15px;
}

#main_consult_popup .view-wrapper form table .agree {
	height: 34px;
	vertical-align: middle;
}

#main_consult_popup .view-wrapper form table .submit {
	padding-top: 10px;
	height: 37px;
}

#main_consult_popup .view-wrapper form table input[type=text] {
	height: 43px;
	line-height: 43px;
	color: #535353;
	padding: 0 4px;
	font-family: Malgun Gothic, ���� ���, Dotum, ����, Gulim, ����;
	font-size: 16px;
	background-color: #ffffff;
	border: 1px solid #dedede;
}

#main_consult_popup .view-wrapper form table select {
	height: 44px;
	font-family: Malgun Gothic, ���� ���, Dotum, ����, Gulim, ����;
	font-size: 16px;
	color: #535353;
	background-color: #ffffff;
	border: 1px solid #dedede;
	line-height: 31px;
}

#main_consult_popup .view-wrapper form table select {
	height: auto;
	padding: 10px 0;
	\0
	/ie8+9;
}

#main_consult_popup .view-wrapper form table label {
	font-size: 14px;
	color: #535353;
}

#main_consult_popup .view-wrapper form table .field {
	margin-right: 5px;
}

#main_consult_popup .view-wrapper form table input[type=checkbox],
	#main_consult_popup .view-wrapper form table input[type=radio] {
	display: none;
	position: absolute;
	z-index: -1;
}

#main_consult_popup .view-wrapper form table textarea {
	height: 44px;
	line-height: 22px;
	color: #535353;
	padding: 0 4px;
	font-family: Malgun Gothic, ���� ���, Dotum, ����, Gulim, ����;
	font-size: 14px;
	background-color: #ffffff;
	border: 1px solid #dedede;
}

#main_consult_popup .view-wrapper form table label.sex {
	display: inline-block;
	width: 85px;
	height: 44px;
	position: relative;
	font-size: 0;
	line-height: 100%;
}

#main_consult_popup .view-wrapper form table .man {
	background: url(/duo/main_img_2016/popup_sex_m_off.gif) left top
		no-repeat;
}

#main_consult_popup .view-wrapper form table .man_on {
	background: url(/duo/main_img_2016/popup_sex_m_on.gif) left top
		no-repeat;
}

#main_consult_popup .view-wrapper form table .woman {
	margin-left: -1px;
	background: url(/duo/main_img_2016/popup_sex_w_off.gif) left top
		no-repeat;
}

#main_consult_popup .view-wrapper form table .woman_on {
	margin-left: -1px;
	background: url(/duo/main_img_2016/popup_sex_w_on.gif) left top
		no-repeat;
}

#main_consult_popup .view-wrapper form table label.marry {
	display: inline-block;
	width: 83px;
	height: 42px;
	font-size: 16px;
	text-align: center;
	line-height: 41px;
}

#main_consult_popup .view-wrapper form table .on {
	background: #6f7e91;
	border: 1px solid #6f7e91;
	color: #ffffff;
}

#main_consult_popup .view-wrapper form table .off {
	background: #ffffff;
	border: 1px solid #dbdbdb;
	color: #333333;
}

#main_consult_popup .view-wrapper form table .second {
	margin-left: -1px;
}

#main_consult_popup .view-wrapper form .privacy {
	display: block;
	position: absolute;
	padding: 10px;
	width: 480px;
	height: 104px;
	background: #ffffff;
	top: 0;
	border: 1px solid #e7e7e7;
	left: -520px;
}

#main_consult_popup .view-wrapper form .privacy img.close {
	display: block;
	position: absolute;
	width: 13px;
	height: 13px;
	right: -5px;
	top: -5px;
}

#main_consult_popup .view-wrapper form .privacy span.all {
	display: block;
	float: left;
	width: 100%;
	height: 16px;
	margin-bottom: 10px;
	font-size: 12px;
}

#main_consult_popup .view-wrapper form .privacy span.each {
	display: block;
	float: left;
	width: 100%;
	height: 16px;
	font-size: 12px;
}

#main_consult_popup .view-wrapper form .privacy span.agree-type {
	display: block;
	float: left;
	width: 230px;
	height: 50px;
	font-size: 11px;
	border: 1px solid #e2e2e2;
	overflow-x: auto;
	margin-bottom: 10px;
}
</style>
		<script type="text/javascript">
			function main_consult_popup_view(u_div) {
				$
						.ajax({
							url : "/duo/include/inc_service_consult_html.asp",
							data : "u_div=" + u_div,
							success : function(data) {
								$("#main_consult_popup").html(data);

								$(".mc_sex_input")
										.unbind()
										.bind(
												"click",
												function(e) {
													var now_position = $(
															".mc_sex_input")
															.index(this);

													if (now_position == 0) {
														$(".mc_sex_rd").eq(0)
																.removeClass(
																		"man");
														$(".mc_sex_rd")
																.eq(0)
																.removeClass(
																		"man_on");
														$(".mc_sex_rd")
																.eq(0)
																.addClass(
																		"man_on");

														$(".mc_sex_rd")
																.eq(1)
																.removeClass(
																		"woman");
														$(".mc_sex_rd")
																.eq(1)
																.removeClass(
																		"woman_on");
														$(".mc_sex_rd")
																.eq(1)
																.addClass(
																		"woman");
													} else {
														$(".mc_sex_rd").eq(0)
																.removeClass(
																		"man");
														$(".mc_sex_rd")
																.eq(0)
																.removeClass(
																		"man_on");
														$(".mc_sex_rd")
																.eq(0)
																.addClass("man");

														$(".mc_sex_rd")
																.eq(1)
																.removeClass(
																		"woman");
														$(".mc_sex_rd")
																.eq(1)
																.removeClass(
																		"woman_on");
														$(".mc_sex_rd")
																.eq(1)
																.addClass(
																		"woman_on");
													}

												});

								$(".mc_married_input").unbind().bind(
										"click",
										function(e) {
											check_label_base_radio(
													"mc_married_input", this,
													"mc_married_rd", "on",
													"off");
										});

								$(".mc_tx_content")
										.focus(
												function() {
													if ($(".mc_tx_content")
															.html() == "���ǻ��� �Է�") {
														$(".mc_tx_content")
																.html("")
													}
												});

								$("html").css("overflow", "hidden"); // �ٴڷ��̾� ��ũ�ѹ� ����

								$("body")
										.on(
												"keydown.disableScroll",
												function(e) {
													var eventKeyArray = [ 32,
															33, 34, 35, 36, 37,
															38, 39, 40 ];
													for (var i = 0; i < eventKeyArray.length; i++) {
														if (e.keyCode === eventKeyArray[i]) {
															e.preventDefault();
															return;
														}
													}
												});

								$("#main_pop_bg").show();
								$("#main_consult_popup").css("top", "0px");
								$("#main_consult_popup").css("left", "-1500px");

								$("#main_consult_popup").show();
								$("#main_consult_popup").animate({
									"left" : "0px"
								}, 600);
							},
							error : function(data) {
								alert("�˾��� �ҷ����� ���߽��ϴ�. �ٽ� �õ��� �ּ���.");
								return;
							}
						});
			}
			function main_consult_popup_close() {
				$("#main_consult_popup").hide();
				$("#main_pop_bg").hide();
				$("body").off(".disableScroll");
				$("html").css("overflow", ""); //�ٴڷ��̾� ��ũ�ѹ� ����
			}

			function mc_agree_view(v_type) {
				if (v_type == 1) {
					$(".mc_agree_area").eq(0).hide();
				} else {
					$(".mc_agree_area").eq(0).show();
				}
			}

			function check_label_base_radio(c_name, obj, rd_class, on_class,
					off_class) {
				var rd_index = $("." + c_name).index(obj);

				$("." + rd_class).removeClass(off_class);
				$("." + rd_class).removeClass(on_class);
				$("." + rd_class).addClass(off_class);

				$("." + rd_class).eq(rd_index).removeClass(off_class);
				$("." + rd_class).eq(rd_index).addClass(on_class);
			}

			function main_consult_popup_check() {
				var formnm = document.MCForm;
				formnm.action = "/duo/membership/marriage_guide_proc.asp";

				if (formnm.u_name.value == "�̸�" || formnm.u_name.value == "") {
					alert("�̸��� �Է��Ͽ� �ּ���.");
					formnm.u_name.focus();
					return;
				}

				if (!isValidType(formnm.u_name, 'text', '�̸��� �Է��Ͽ� �ּ���.')) {
					return;
				}
				if (checkstring(formnm.u_name.value) == true) {
					alert("�̸��Է¿� Ư�����ڴ� �Է��Ҽ� �����ϴ�.");
					return;
				}
				if (!check_input_byte(formnm.u_name.value, 10)) {
					alert("�Է� �� �� �ִ� ���ڱ��̸� �ʰ��Ͽ����ϴ�.");
					return;
				}

				if (!isValidType(formnm.u_ident1, 'select', '������� ������ �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_ident2, 'check', '������ �����Ͽ� �����Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_married, 'check', '��ȥ ����� �����Ͽ� �ּ���.')) {
					return;
				}

				if (!isValidType(formnm.u_work, 'select', '���������� �����Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_edu, 'select', '�з��� �����Ͽ� �ּ���.')) {
					return;
				}

				if (!isValidType(formnm.u_mtel1, 'select', '�ڵ��� ���ڸ��� �����Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_mtel2, 'number',
						'�ڵ��� �߰��ڸ��� �Է��Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_mtel3, 'number', '�ڵ��� ���ڸ��� �Է��Ͽ� �ּ���.')) {
					return;
				}

				if (!hp_chck_array(formnm.u_mtel2.value)
						&& !hp_chck_array(formnm.u_mtel3.value)) {
					alert("�ڵ��� ��ȣ�� �ùٸ��� �ʽ��ϴ�.");
					formnm.u_mtel3.focus();
					return;
				}

				if (checkEmail(formnm.u_email, formnm.u_email_domain,
						formnm.u_email_domain_select) == false) {
					return;
				}

				if (!isValidType(formnm.u_dwell, 'select', '���������� �����Ͽ� �ּ���.')) {
					return;
				}

				if (!agree_check('m_agree_all', 'm_agree1', 'm_agree2')) {
					$(".mc_agree_area").eq(0).show();
					return;
				}

				google_ga("send", "event", "PC����û", "��ưŬ��", "��������ȭ");

				formnm.submit();
			}
		</script>
		<div id="main_pop_bg"></div>
		<div id="main_consult_popup"></div>

		<div id="membershipfee">
			<div
				style="display: block; margin: 0 auto; width: 1120px; overflow: hidden;">
				<!--����-->
				<div class="left_box">
					<span class="menu"> <span class="st-1"><a
							href="/duo/service/main.asp">���Ծȳ�</a></span>
						<ul>
							<li><a href="/duo/service/know.asp">�� ����ϱ��?</a></li>
							<li><a href="/duo/service/number_duo.asp">���ڷ� ���� ���</a></li>
							<li><a href="/duo/service/program01.asp">���� ����</a></li>
							<li style="background: #5a6077; color: #ffffff;"><a
								href="/Duo/service/service.asp">���Ժ� �ȳ�</a></li>
							<li><a href="/duo/service/matching_01.asp">���� �� Ȱ������</a></li>
							<li><a href="/duo/service/matching_02.asp">��Ī�ý���</a></li>
							<li><a href="/duo/service/consult.asp">�����</a></li>
							<li><a href="/duo/service/members.asp">�����Ŭ�� �Ұ�</a></li>
							<li><a href="/duo/service/marriage_consult.asp">�ڳ��ȥ ������</a></li>
							<li><a href="/duo/service/free_service/201611_main_01.asp">����
									����ü��</a></li>
							<li><a href="/duo/service/duo_faq.asp">��ȥ! �ñ��ؿ�</a></li>
						</ul>
					</span> <a class="simulation" href="/Duo/service/simulation.asp">ȸ������
						�ùķ��̼�</a> <a class="freeconsult" href="/Duo/service/profile.asp">������
						������õ</a>
					<form class="freeservice">
						<span class="box"> <span class="st-1">�ȳ��ڷ�<br>����
									����</span> <span
							style="display: block; float: left; width: 120px; padding: 10px 20px;">
								<!--Ŭ���� ���游 �Ǹ� �˴ϴ�. radio_on radio_off--> <span
								class="left_radio radio_off">��ȥ</span> <span
								class="left_radio radio_off">��ȥ</span>
						</span> <a href="/Duo/membership/marriage_guide.asp" class="submit">��û�ϱ�</a>
						</span>
					</form>
					<style>
#membershipfee .left_box .network {
	display: block;
	float: left;
	width: 160px;
}

#membershipfee .left_box .network span.st-1 {
	display: block;
	float: left;
	width: 100%;
	height: 18px;
	font-size: 11px;
	color: #262626;
	text-align: center;
	line-height: 15px;
}

#membershipfee .left_box .network {
	display: block;
	float: left;
	width: 160px;
}

#membershipfee .left_box .network ul.jisa {
	display: block;
	float: left;
	width: 160px;
}

#membershipfee .left_box .network ul.jisa .jisa01 {
	display: block;
	float: left;
	width: 160px;
	height: 57px;
	margin: 0 0 15px 0;
	background: url(/duo/include/left/img/jisa_01.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa01:hover {
	display: block;
	float: left;
	width: 160px;
	height: 57px;
	margin: 0 0 15px 0;
	background: url(/duo/include/left/img/jisa_01_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa11 {
	display: block;
	float: left;
	width: 80px;
	height: 47px;
	background: url(/duo/include/left/img/jisa_11.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa11:hover {
	display: block;
	float: left;
	width: 80px;
	height: 47px;
	background: url(/duo/include/left/img/jisa_11_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa10 {
	display: block;
	float: left;
	width: 80px;
	height: 47px;
	background: url(/duo/include/left/img/jisa_10.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa10:hover {
	display: block;
	float: left;
	width: 80px;
	height: 47px;
	background: url(/duo/include/left/img/jisa_10_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa35 {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_35.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa35:hover {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_35_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa30 {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_30.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa30:hover {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_30_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa51 {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_51.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa51:hover {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_51_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa31 {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_31.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa31:hover {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_31_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa20 {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_20.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa20:hover {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_20_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa12 {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_12.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa12:hover {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_12_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa40 {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_40.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa40:hover {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_40_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa50 {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_50.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa50:hover {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_50_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa75 {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_75.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa75:hover {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_75_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa70 {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_70.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa .jisa70:hover {
	display: block;
	float: left;
	width: 80px;
	height: 46px;
	background: url(/duo/include/left/img/jisa_70_on.jpg) left top no-repeat;
}

#membershipfee .left_box .network ul.jisa li a {
	display: block;
	float: left;
	width: 100%;
	height: 100%;
	font-size: 0;
	line-height: 100%;
}
</style>
					<div class="network">
						<span class="st-1" style="margin: 23px 0 0 0;">DUO NETWORK</span>
						<span class="st-1" style="margin: 0 0 13px 0; color: #a4a4a4;">�����
							���� ����� �ֽ��ϴ�</span>
						<ul class="jisa">
							<li class="jisa01"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=01"></a></li>
							<li class="jisa11"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=11"></a></li>
							<li class="jisa10"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=10"></a></li>
							<li class="jisa35"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=35"></a></li>
							<li class="jisa30"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=30"></a></li>
							<li class="jisa51"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=51"></a></li>
							<li class="jisa31"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=31"></a></li>
							<li class="jisa20"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=20"></a></li>
							<li class="jisa12"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=12"></a></li>
							<li class="jisa40"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=40"></a></li>
							<li class="jisa50"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=50"></a></li>
							<li class="jisa75"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=75"></a></li>
							<li class="jisa70"><a target="_blank"
								href="/Duo/jisa/jisa_main.asp?n_type=70"></a></li>
						</ul>
					</div>
				</div>
				<!--����-->



				<div class="content_box">
					<!-- <div class="fee_tab" style="z-index: 99">
						<div class="fee_tab_sub">
							<a href="javascript:tab_scroll_move('marry_fee1');"><span
								class="tab_nav on">Ŭ���ļ���</span></a> <a
								href="javascript:tab_scroll_move('noble_fee1');"><span
								class="tab_nav">����� ����</span></a>
							<a href="javascript:tab_scroll_move('remarry_fee');"><span class="tab_nav remarry">����ȭ�� ����</span></a>
							<a href="javascript:purchase_view()"><span class="abc">����ȭ��
									����</span></a>
						</div>
						
				��ȥ ���� ���Ժ� �ȳ����� <span class="on"></span> 
				�ٸ� ���񽺴� <span class="other"></span> �� ���ּ���
				<div class="fee_tab_sub">
					<a href="#s1"><span class="on">��ȥ����</span></a>
					<a href="#s2"><span class="remarry other" style="margin:0 1px;">��ȥ����</span></a>
					<a href="#s3"><span class="other">����� ����</span></a>
				</div>
				
					</div> -->
					<div class="top_box">
						<span class="txt-type1">HOME / ���Ծȳ� / ���Ժ� �ȳ�</span>
						<h2 class="txt-type1">���Ծȳ�</h2>
						<h3 class="txt-type1">�����ڰ� �� ���Ժ�</h3>
						<span class="txt-type2">��� ���α׷��� ��ȥ ��ʺ�� �����ϴ�.</span>
					</div>
					<div class="marry_fee1">
						<h3 class="txt-type1">���� �Ϸ�</h3>
						<h3 class="txt-title">������ �Ϸ�Ǿ����ϴ�.</h3>
						<h3 class="txt-backmain">����ȭ������ ���ư���</h3>
						<!-- <span
							style="display: block; float: left; width: 918px; margin: 55px 0 0 0;"> -->
							<!-- <table>
								<tbody>
									<tr>
										<td width="50">&nbsp;</td>
										<td width="181"><span class="txt-type1">Ŭ���� ����</span></td>
										<td width="85"><img src="/duo/service/img/st_83.png" /><span
											class="hide">����</span></td>
																		<td width="266"><span class="txt-type2">39�� ����</span><span class="txt-type3">��� ȸ������ ���ؿ� ���ϴ� �з�<br />�̻��� �������� ������ ���� ��ȥ ��</span></td>

										<td width="85"><img src="/duo/service/img/st_84.png" /><span
											class="hide">����</span></td>
																		<td width="251"><span class="txt-type2">35�� ����</span><span class="txt-type3">��� ȸ������ ���ؿ� ���ϴ� �з�<br />�̻��� ��ȥ ��</span></td>

										<td width="120">&nbsp;</td>
										<td width="195" valign="top"><span class="txt-type1-1">�����
												����</span></td>
										<td width="85" valign="top"><img
											src="/duo/service/img/st_102.png" /><span class="hide">����</span></td>
										<td width="254" valign="top">
									<span class="txt-type2">������ ����� ������ ������<br />&nbsp;&nbsp;&nbsp;�ܱ��� ȸ�� �ٹ���</span>
									<span class="txt-type2">���ǻ� ��ȣ�� ȸ��� ���� <br />&nbsp;&nbsp;&nbsp;����հ��� �� ������ ������</span>
									<span class="txt-type2">�������� �ִ� ����� ��ǥ</span>
									<span class="txt-type2">�������, ������, �������,<br />&nbsp;&nbsp;&nbsp;�ӿ��̻��� �ڳ�� ��������<br />&nbsp;&nbsp;&nbsp;���� ������</span>
								</td>
										<td width="85" valign="top"><img
											src="/duo/service/img/st_103.png" /><span class="hide">����</span></td>
										<td width="274" valign="top">
									<span class="txt-type2">������ ����� ������ ������<br />&nbsp;&nbsp;&nbsp;�ܱ��� ȸ�� �ٹ���</span>
									<span class="txt-type2">������ ��� ȸ��� �ǻ� ��ȣ�� <br />&nbsp;&nbsp;&nbsp;����հ���</span>
									<span class="txt-type2">���Ƴ��, ��Ʃ���, ��������, <br />&nbsp;&nbsp;&nbsp;���δ�ȸ �����</span>
									<span class="txt-type2">���������� ǳ���� �����, ������,<br />&nbsp;&nbsp;&nbsp;�������, �ӿ��̻��� �ڳ� </span>
								</td>


									</tr>
								</tbody>
							</table>
						</span> <span class="fee-type1"> <span class="txt-type1">Ŭ����
								���� 1,400,000�� (vat ����)</span> <span class="box"> <span
								class="cell"> <span class="term">���� Ŀ�øŴ����� ���� 1:1
										����</span> <span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span> <span
									class="term">����� Ŭ�� ȸ���˻� ��������</span> <span class="term">�߰�
										���� ���� ����</span> <span class="term">��Ī ��� ���� ���� </span>
							</span>
						</span>
						</span> <span class="fee-type2"> <span class="txt-type1">�����
								���� 2,700,000�� (vat ����)</span> <span class="box"> <span
								class="cell"> <span class="term">���� Ŀ�øŴ����� ���� 1:1
										����</span> <span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span> <span
									class="term">����� Ŭ�� ȸ���˻� ��������</span> <span class="term"
									style="height: 66px; background: url(/duo/service/img/icon_08.gif) left 10px no-repeat;">ȸ��
										���� ����� ��Ƽ ���� ����<br />
									<span style="font-size: 12px;">(������ ������ ���� Ƚ���� 1ȸ ����)</span>
								</span> <span class="term">����� ��Ƽ ������ : �������� 1�� ����</span> <span
									class="term"
									style="height: 66px; background: url(/duo/service/img/icon_08.gif) left 10px no-repeat;">��Ƽ����
										Ŀ���� �ȵ� ��� ���� ȸ������<br />������ ��û ����
								</span> <span class="term">�߰� ���� ���� ����</span> <span class="term">��Ī
										��� ���� ����</span> <span class="term blank"></span>
							</span>
						</span> 
						<span class="txt-type1">Ŭ���� B ���� 1,200,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term">���� Ŀ�øŴ����� ���� 1:1 ����</span>
							<span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span>
							<span class="term">����� Ŭ�� ȸ���˻� ��������</span>
							<span class="term blank"></span>
							<span class="term blank"></span>
						</span>
					</span>
						</span> -->
						<!-- <span class="fee-type3">
					<span class="txt-type1">Ŭ���� ����� ���� 2,000,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term">���� Ŀ�øŴ����� ���� 1:1 ����</span>
							<span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span>
							<span class="term">����� Ŭ�� ȸ���˻� ��������</span>
							<span class="term">�߰� ���� ���� ����</span>
							<span class="term">��Ī ��� ���� ����</span>
							<span class="term">���� ���� ���α׷�</span>
						</span>
					</span>
				</span>   -->
					</div>
					
					 <!--  <div class="purchase">

						<span
							style="display: block; float: left; width: 918px; margin: 70px 0 0 0;">
							<table>
								<tbody>
									<tr>
										<td width="64">&nbsp;</td>
										<td width="157"><span class="txt-type1">���� ����</span></td>
										<td width="85"><img src="/duo/service/img/st_118.png" />
									</tr>
								</tbody>
							</table>
						</span> 
						<span class="fee-type1"> <span class="txt-type1">�������񽺾����� �ڸ�</span> 
						
						<span class="box"> -->
							<!--  <span class="cell">
								<ul>
									<li><label>��ǰ��</label> <input type='text' readonly /></li><br/><br/>
									<li><label>������ </label> <input type='text' readonly /></li><br/><br/>
									<li><label>�������</label> <select name="method">
											<option value="cash">������ �Ա�</option>
											<option value="card">���ݰ���</option>
									</select></li><br/><br/>
									<li><label>�Ⱓ </label> <input type='text' readonly /></li><br/><br/>
									<li><label>�ݾ�</label> <input type='text' readonly /></li>
								</ul>
							</span> -->
							
							<!-- <span class="purbtn">
							 	<img src="/duo/service/img/st_119.png" />
							</span>
						</span>  <span class="term">��Ī ��� ���� ����</span> 

						</span> 
					</div> -->





					<!-- <span style="display:block; float:left; width:918px;">
					<table>
						<tbody>
							<tr>
								<td width="50">&nbsp;</td>
								<td width="181"><span class="txt-type1">�ϸ�� ����</span></td>
								<td width="85"><img src="/duo/service/img/st_89.png" /><span class="hide">����</span></td>
								<td width="266"><span class="txt-type2">40�� �̻�</span><span class="txt-type3">��� ȸ������ ���ؿ� ���ϴ� �з�<br />�̻��� �������� ������ ���� ��ȥ ��</span></td>
								<td width="85"><img src="/duo/service/img/st_90.png" /><span class="hide">����</span></td>
								<td width="251"><span class="txt-type2">36�� �̻�</span><span class="txt-type3">��� ȸ������ ���ؿ� ���ϴ� �з�<br />�̻��� ��ȥ ��</span></td>
							</tr>
						</tbody>
					</table>
				</span>
				<span class="fee-type1">
					<span class="txt-type1">�ϸ�� ���� 1,600,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term">���� Ŀ�øŴ����� ���� 1:1 ����</span>
							<span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span>
							<span class="term">����� Ŭ�� ȸ���˻� ��������</span>
							<span class="term">�߰� ���� ���� ����</span>
							<span class="term">��Ī ��� ���� ���� </span>
						</span>
					</span>
				</span>
				<span class="fee-type2">
					<span class="txt-type1">�ϸ�� ����� ���� 2,000,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term">���� Ŀ�øŴ����� ���� 1:1 ����</span>
							<span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span>
							<span class="term">����� Ŭ�� ȸ���˻� ��������</span>
							<span class="term">�߰� ���� ���� ����</span>
							<span class="term">��Ī ��� ���� ����</span>
							<span class="term">���� ���� ���α׷�</span>
						</span>
					</span>
				</span>
				<span class="fee-type3">
					<span class="txt-type1">�ϸ�� ����� ���� 2,000,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term">���� Ŀ�øŴ����� ���� 1:1 ����</span>
							<span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span>
							<span class="term">����� Ŭ�� ȸ���˻� ��������</span>
							<span class="term">�߰� ���� ���� ����</span>
							<span class="term">��Ī ��� ���� ����</span>
							<span class="term">���� ���� ���α׷�</span>
						</span>
					</span>
				</span> -->
				</div>
				<!-- <div class="consult_box" style="height:254px;">
				<span>����� ��ȥ�� ������� å������ ������ �帮�ڽ��ϴ�.</span>
				<a href="javascript:main_consult_popup_view();" class="marry">��ȥ���� ����</a>
				<a href="/duo/membership/marriage_guide.asp" class="consult">�ȳ��ڷ� ��û</a>
			</div>  -->
				<!-- <div class="remarry_fee">
				<h3 class="txt-type1">��ȥ���� ���Ժ� �ȳ�</h3>
				<span style="display:block; float:left; width:918px; margin:55px 0 0 0;">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="��ȥ���� ���� �ڰ� �ȳ�">
						<caption>��ȥ���� ���� �ڰ� �ȳ�</caption>
						<tbody>
							<tr>
								<td width="49">&nbsp;</td>
								<td width="216"><span class="txt-type1">��ȥ �ϸ�� ����</span></td>
								<td width="85"><img src="/duo/service/img/st_96.png" /><span class="hide">����</span></td>
								<td width="260"><span class="txt-type2">���ȥ, �纰, ��ȥ ��<br />��ȥ ������ ������ ��</span></td>
								<td width="85"><img src="/duo/service/img/st_97.png" /><span class="hide">����</span></td>
								<td width="215"><span class="txt-type2">���ȥ, �纰, ��ȥ ��<br />��ȥ ������ ������ ��</span></td>
							</tr>
						</tbody>
					</table>
				</span>
				���� ��ȥ���Ժ�span class="fee-type1">
					<span class="txt-type1">�ϸ�� ���� ���Ժ� 1,600,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term">���� Ŀ�øŴ����� ���� 1:1 ����</span>
							<span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span>
							<span class="term">����� Ŭ�� ȸ���˻� ��������</span>
							<span class="term">�߰� ���� ���� ����</span>
							<span class="term">��Ī ��� ���� ���� </span>
						</span>
					</span>
				</span>
				<span class="fee-type2">
					<span class="txt-type1">�ϸ�� B ���� ���Ժ� 1,400,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term">���� Ŀ�øŴ����� ���� 1:1 ����</span>
							<span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span>
							<span class="term">����� Ŭ�� ȸ���˻� �������� </span>
							<span class="term blank"></span>
							<span class="term blank"></span>
						</span>
					</span>
				</span
				<span class="fee-type3">
					<span class="txt-type1">�ϸ�� ����� ���� ���Ժ� 2,000,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term">���� Ŀ�øŴ����� ���� 1:1 ����</span>
							<span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span>
							<span class="term">����� Ŭ�� ȸ���˻� ��������</span>
							<span class="term">�߰� ���� ���� ����</span>
							<span class="term">��Ī ��� ���� ����</span>
							<span class="term">���� ���� ���α׷�</span>
						</span>
					</span>
				</span>
			</div>
			<div class="consult_box">
				<span>����� ��ȥ�� ������� å������ ������ �帮�ڽ��ϴ�.</span>
				<a href="javascript:main_consult_popup_view();" class="remarry">��ȥ���� ����</a>
				<a href="/duo/membership/marriage_guide.asp" class="consult">�ȳ��ڷ� ��û</a>
			</div> -->
				<!-- <div class="noble_fee1">
				<h3 class="txt-type1">��������� ���Ժ� �ȳ�</h3>
				<span style="display:block; float:left; width:918px; margin:45px 0 0 0;">
					<table>
						<tbody>
							<tr>
								<td width="25">&nbsp;</td>
								<td width="195" valign="top"><span class="txt-type1">����� ����</span></td>
								<td width="85" valign="top"><img src="/duo/service/img/st_102.png" /><span class="hide">����</span></td>
								<td width="254" valign="top">
									<span class="txt-type2">������ ����� ������ ������<br />&nbsp;&nbsp;&nbsp;�ܱ��� ȸ�� �ٹ���</span>
									<span class="txt-type2">���ǻ� ��ȣ�� ȸ��� ���� <br />&nbsp;&nbsp;&nbsp;����հ��� �� ������ ������</span>
									<span class="txt-type2">�������� �ִ� ����� ��ǥ</span>
									<span class="txt-type2">�������, ������, �������,<br />&nbsp;&nbsp;&nbsp;�ӿ��̻��� �ڳ�� ��������<br />&nbsp;&nbsp;&nbsp;���� ������</span>
								</td>
								<td width="85" valign="top"><img src="/duo/service/img/st_103.png" /><span class="hide">����</span></td>
								<td width="274" valign="top">
									<span class="txt-type2">������ ����� ������ ������<br />&nbsp;&nbsp;&nbsp;�ܱ��� ȸ�� �ٹ���</span>
									<span class="txt-type2">������ ��� ȸ��� �ǻ� ��ȣ�� <br />&nbsp;&nbsp;&nbsp;����հ���</span>
									<span class="txt-type2">���Ƴ��, ��Ʃ���, ��������, <br />&nbsp;&nbsp;&nbsp;���δ�ȸ �����</span>
									<span class="txt-type2">���������� ǳ���� �����, ������,<br />&nbsp;&nbsp;&nbsp;�������, �ӿ��̻��� �ڳ� </span>
								</td>
							</tr>
						</tbody>
					</table>
				</span>
				<span class="fee-type1">
					<span class="txt-type1">����� ���� 2,700,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term">���� Ŀ�øŴ����� ���� 1:1 ����</span>
							<span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span>
							<span class="term">����� Ŭ�� ȸ���˻� ��������</span>
							<span class="term" style="height:66px; background:url(/duo/service/img/icon_08.gif) left 10px no-repeat;">ȸ�� ���� ����� ��Ƽ ���� ����<br /><span style="font-size:12px;">(������ ������ ���� Ƚ���� 1ȸ ����)</span></span>
							<span class="term">����� ��Ƽ ������ : �������� 1�� ����</span>
							<span class="term" style="height:66px; background:url(/duo/service/img/icon_08.gif) left 10px no-repeat;">��Ƽ���� Ŀ���� �ȵ� ��� ���� ȸ������<br />������ ��û ����</span>
							<span class="term">�߰� ���� ���� ����</span>
							<span class="term">��Ī ��� ���� ����</span>
							<span class="term blank"></span>
						</span>
					</span>
				</span> 
			 <span class="fee-type2">
					<span class="txt-type1">����� ����� ���� 3,600,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term">���� Ŀ�øŴ����� ���� 1:1 ����</span>
							<span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span>
							<span class="term">����� Ŭ�� ȸ���˻� ��������</span>
							<span class="term" style="height:66px; background:url(/duo/service/img/icon_08.gif) left 10px no-repeat;">ȸ�� ���� ����� ��Ƽ ���� ����<br /><span style="font-size:12px;">(������ ������ ���� Ƚ���� 1ȸ ����)</span></span>
							<span class="term">����� ��Ƽ ������ : �������� 1�� ����</span>
							<span class="term" style="height:66px; background:url(/duo/service/img/icon_08.gif) left 10px no-repeat;">��Ƽ���� Ŀ���� �ȵ� ��� ���� ȸ������<br />������ ��û ����</span>
							<span class="term">�߰� ���� ���� ����</span>
							<span class="term">��Ī ��� ���� ����</span>
							<span class="term">������ ���� ���� ���� ���� </span>
						</span>
					</span>
				</span>  
			</div> -->
				<!-- <div class="noble_fee2">
				<span style="display:block; float:left; width:918px; margin:70px 0 0 0;">
					<table>
						<tbody>
							<tr>
								<td width="64">&nbsp;</td>
								<td width="157"><span class="txt-type1">������ ����</span></td>
								<td width="85"><img src="/Duo/service/img/st_83.png" /><span class="hide">����</span></td>
								<td width="612"><span class="txt-type2">�����, �˻�, ����, ������, ��ȣ��, �ǻ�, ġ���ǻ�<br />���ǻ�, ȸ���, ���ߺ�����, ����հ��� �� ������ ������</span></td>
							</tr>
						</tbody>
					</table>
				</span>
		 	<span class="fee-type1">
					<span class="txt-type1">����� ������ ���� 1,800,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term">���� Ŀ�øŴ����� ���� 1:1 ����</span>
							<span class="term">�̺�Ʈ ��û��, �켱 �����ǰ� ��Ī����</span>
							<span class="term">����� Ŭ�� ȸ���˻� ��������</span>
							<span class="term" style="height:66px; background:url(/duo/service/img/icon_08.gif) left 10px no-repeat;">ȸ�� ���� ����� ��Ƽ ���� ����<br /><span style="font-size:12px;">(������ ������ ���� Ƚ���� 1ȸ ����)</span></span>
							<span class="term">����� ��Ƽ ������ : �������� 1�� ����</span>
							<span class="term">��Ƽ���� Ŀ���� �ȵ� ��� ���� ȸ������ ������ ��û ����</span>
							<span class="term">�߰� ���� ���� ����</span>
							<span class="term">��Ī ��� ���� ����</span>
						</span>
					</span>
				</span> 
			</div> -->
				<!-- <div class="noble_fee3">
				<h3 class="txt-type1">������, �÷�Ƽ�� ����</h3>
				<span class="fee-type1">
					<span class="txt-type1">������ ���� 5,400,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term">������,�÷�Ƽ�� ���α׷� ������ �����ڰ� �� ����<br />���α׷� ������ ���� ���� ���� �ȳ��� �帮�ڽ��ϴ�.</span>
						</span>
					</span>
				</span>
				<span class="fee-type2">
					<span class="txt-type1">�÷�Ƽ�� ���� 9,000,000�� (vat ����)</span>
					<span class="box">
						<span class="cell">
							<span class="term" style="letter-spacing:-0.7px; margin:0 0 7px 0;">��ȥ ���α׷����� �̼�ȥ�� �̼�ȥȯ�ޱ� 200����(VAT ����)</span>
							<span class="term">������,�÷�Ƽ�� ���α׷� ������ �����ڰ� �� ����<br />���α׷� ������ ���� ���� ���� �ȳ��� �帮�ڽ��ϴ�.</span>
						</span>
					</span>
				</span>
			</div> -->
				<!-- <div class="consult_box">
				<span>����� ��ȥ�� ������� å������ ������ �帮�ڽ��ϴ�.</span>
				<a href="javascript:main_consult_popup_view();" class="noble">��������� ����</a>
				<a href="/duo/membership/marriage_guide.asp" class="consult">�ȳ��ڷ� ��û</a>
			</div> -->
				<!-- <div class="notice_box">
				<h3 class="txt-type1">���԰��� �ȳ� ����</h3>
				<span style="display:block; float:left; width:900px; margin:55px 0 0 18px;">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="���԰��� �ȳ� ����">
						<caption>���԰��� �ȳ� ����</caption>
						<tbody>
							<tr>
								<td width="100" valign="top"><img src="/duo/service/img/st_111.png" /></td>
								<td width="300" valign="top" class="cell1">
									<span class="txt-type1">���Խ� ���� ����</span>
									<span class="txt-type2">ȥ�ΰ�������</span>
									<span class="txt-type2">������������</span>
									<span class="txt-type2">��������</span>
									<span class="txt-type2">��������(�Ǵ� �ǷẸ���� �纻)</span>
									<span class="txt-type2">�����</span>
									<span class="txt-type2">����1��(�ִ� 3�ű��� ��ϰ���)</span>
								</td>
								<td width="100" valign="top"><img src="/duo/service/img/st_112.png" /></td>
								<td width="400" valign="top" class="cell2">
									<span class="txt-type1">����� �ſ����� �ý����̶�?</span>
									<span class="txt-type2">����� ȸ������ �����ϰ�, ����ϰ� ���� �� �ֵ���<br />����,�з�,����,��ȥ���� ���� ���������� Ȯ���մϴ�.<br />�ſ������� Ŀ�øŴ����� ����ϸ�, ���� �Ⱓ�� 7~15�� ����<br />�ɸ��ϴ�.<br />����� ������ �ǻ簡 �ִ� ȸ���� ���ȥ ����� ���� ������<br />��Ÿ���� �ʴ� ������ �����ϰ� ������ּž� �ϸ�, �̿� ���� ��� å���� ȸ�� ����ڿ��� �ֽ��ϴ�.</span>
								</td>
							</tr>
							<tr>
								<td colspan="4" height="55"></td>
							</tr>
							<tr>
								<td width="100" valign="top"><img src="/duo/service/img/st_113.png" /></td>
								<td colspan="3" width="800" valign="top" class="cell3">									
									<span class="txt-type1">�������� ���񽺶�?</span>
									<span class="txt-type2">������ ȸ�������� ���� �ſ���������. ������ ȸ���� ���� ������ �غ��Ϸ��� �����ϰ���?<br />����� �̷� ȸ�� �������� ���ŷο��� �ּ�ȭ�ϱ� ���� ȥ�ΰ�������, �������� ����,���������� ��� �غ��� �帮��<br />�ֽ��ϴ�.<br />�系 '�ſ�������'���� �߱��ϰ� �������� ������ Ȯ�� �Ŀ� ������ ���� ����, ��ȥ�߰����� ������ ���� ������ �ǰ��Ͽ�<br />���������� �����մϴ�.<br />���� �Ⱓ ��� �Ŀ��� �м� �Ǵ� �Ұ�, ������ ���� ���·� ����� ���������� ����� ����� �� ���� ����� �������<br />����Ͽ� ���� �Ͽ��� �Ƚ��ϰ� �ñ�ñ� �ٶ��ϴ�.</span>
								</td>
							</tr>
							<tr>
								<td colspan="4" height="55"></td>
							</tr>
							<tr>
								<td width="100" valign="top"><img src="/duo/service/img/st_114.png" /></td>
								<td colspan="3" width="800" valign="top" class="cell4">
									<span class="txt-type1">��� ���� �� ȯ�ұ�</span>
									<span class="txt-type2">ȯ�ҿ� ���� ������ �����Ǵ� [����� ���� �� ȯ�ұ�] �ڷῡ ���Ͽ� ������� ����˴ϴ�.</span>
								</td>
							</tr>
						</tbody>
					</table>
				</span>
			</div> -->
			</div>
		</div>
	</div>
	<!--���뿵��-->
	<!--�ϴܿ���-->

	<script type="text/javascript">
		function footer_agree_view(vmode) {
			if (vmode == 0) {
				$("#footer_agree").show();
			} else {
				$("#footer_agree").hide();
			}
		}

		function footer_select_jisa(obj) {
			if ($(obj).val() == "14" || $(obj).val() == "11"
					|| $(obj).val() == "12") {
				$("#bottom_speed #f_mtel1").hide();
				$("#bottom_speed #f_mtel_text").hide();
				$("#bottom_speed #f_mtel").show();
			} else {
				$("#bottom_speed #f_mtel1").show();
				$("#bottom_speed #f_mtel_text").show();
				$("#bottom_speed #f_mtel").hide();
			}

		}

		//üũ�ڽ�,������ư üũǥ�� label class ����/ ���� üũ�ڽ� checked ���� ó��
		function check_class_togle(obj, addclass, removeclass, index) {
			var now_class;
			var this_obj;

			this_obj = $(obj);

			if (index >= 0) {
				now_class = this_obj.eq(index).attr("class");
			} else {
				now_class = this_obj.attr("class");
			}

			if (addclass.length > 0 && now_class.indexOf(addclass) < 0) {
				if (index >= 0) {
					this_obj.eq(index).addClass(addclass);
				} else {
					this_obj.addClass(addclass);
				}
			}

			if (removeclass.length > 0 && now_class.indexOf(removeclass) > 0) {
				if (index >= 0) {
					this_obj.eq(index).removeClass(removeclass);
				} else {
					this_obj.removeClass(removeclass);
				}
			}
		}

		function change_radio(obj, radioName, index) {
			var now_class;

			if (index >= 0) {
				now_class = $(obj).eq(index).attr("class");
			} else {
				now_class = $(obj).attr("class");
			}

			$(obj).each(function(index) {
				check_class_togle(obj, "r-off", "r-on", index);
			});

			if (now_class.indexOf("r-on") > 0) {
				check_class_togle(obj, "r-off", "r-on", index);
				$("#bottom_speed :radio[name='" + radioName + "']").eq(index)
						.prop("checked", false);
			} else {
				check_class_togle(obj, "r-on", "r-off", index);
				$("#bottom_speed :radio[name='" + radioName + "']").eq(index)
						.prop("checked", true);
			}

		}

		function footer_agree_check() {
			if (!$("#footer_agree").is(":visible")) {
				$("#footer_agree").show();
			}
		}

		function bottom_check_form() {
			var formnm;

			formnm = document.bottom_speed;

			if (!isValidType(formnm.u_sex, 'check_nofocus', '������ �����Ͽ� �ּ���.')) {
				return;
			}
			if (!isValidType(formnm.u_married, 'check_nofocus',
					'��ȥ ��ȥ�� �����Ͽ� �ּ���.')) {
				return;
			}
			if (!isValidType(formnm.u_jisa, 'select', '���������� �����Ͽ� �ּ���.')) {
				return;
			}
			if (!isValidType(formnm.u_edu, 'select', '�з��� �����Ͽ� �ּ���.')) {
				return;
			}

			if (formnm.u_name.value == '�̸�') {
				alert("�̸��� �Է��Ͽ� �ּ���.");
				formnm.u_name.focus();
				return;
			}

			if (!isValidType(formnm.u_name, 'text', '�̸��� �Է��Ͽ� �ּ���.')) {
				return;
			}
			if (!isValidType(formnm.u_birth, 'select', '����⵵�� �����Ͽ� �ּ���.')) {
				return;
			}

			if ($("select[name='u_jisa']").val() == "14"
					|| $("select[name='u_jisa']").val() == "11"
					|| $("select[name='u_jisa']").val() == "12") {
				if (formnm.u_mtel.value == "�ڵ���") {
					alert("�ڵ�����ȣ�� �Է��� �ּ���.");
					formnm.u_mtel.value = "";
					formnm.u_mtel.focus();
					return;
				}

				if (!isValidType(formnm.u_mtel, 'text', '����ó�� �Է��� �ּ���.')) {
					return;
				}

				if (!mtel_check_value(formnm.u_mtel.value)) {
					alert("������(-)�ܿ� �ٸ����ڴ� �Է��� �� �����ϴ�.");
					return;
				}
			} else {
				if (!isValidType(formnm.u_mtel1, 'select', '����ó ���ڸ��� �����Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_mtel2, 'number',
						'����ó �߰��ڸ��� �Է��Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_mtel3, 'number', '����ó ���ڸ��� �Է��Ͽ� �ּ���.')) {
					return;
				}

				if (!hp_chck_array(formnm.u_mtel2.value)
						&& !hp_chck_array(formnm.u_mtel3.value)) {
					alert("�ڵ��� ��ȣ�� �ùٸ��� �ʽ��ϴ�.");
					formnm.u_mtel3.focus();
					return;
				}

				formnm.u_mtel.value = "";
			}

			footer_agree_check();

			if (!agree_check('f_agree_all', 'f_agree1', 'f_agree2')) {
				return;
			}

			var formdata;

			formdata = ajax_setFormData("bottom_speed", "u_name");

			$.ajax({
				url : "/duo/common/right_speed_proc.asp",
				data : formdata,
				type : "POST",
				success : function(data) {
					if (data.indexOf("[[proc=success]]") > -1) {
						alert("����û�� �Ϸ� �Ǿ����ϴ�.");
						formnm.reset();
						$("#footer_agree").hide();
						$("#bottom_speed #f_mtel1").show();
						$("#bottom_speed #f_mtel_text").show();
						$("#bottom_speed #f_mtel").hide();

						$(".s_sex").each(function(index) {
							check_class_togle(this, "r-off", "r-on", -1);
						});

						$(".s_married").each(function(index) {
							check_class_togle(this, "r-off", "r-on", -1);
						});
					} else {
						alert("������ �߻��Ͽ����ϴ�. �ٽ� �õ��� �ּ���.." + "\n" + data);
					}
				},
				error : function(data) {
					alert("������ �߻��Ͽ����ϴ�. �ٽ� �õ��� �ּ���." + "\n" + data);
				}
			})
		}
	</script>
	<div id="n_footer">
		<div class="record-type1">
			<div class="contents-wrapper">
				<div class="speed-area">
					<h3 class="speed-txt">SPEED ���</h3>
					<form method="post" name="bottom_speed" id="bottom_speed">
						<input type="hidden" name="pg" value="bottom_speed" />
						<fieldset style="position: relative;">
							<legend class="hideTxt">���ǵ� ����� ���� �����Է�</legend>
							<div class="speed-row">
								<input type="radio" style="display: none;" name="u_sex"
									value="1" /> <label class="s_sex speed-label-3 r-off"
									title="����" onclick="change_radio('.s_sex','u_sex',0);">����</label>
								<input type="radio" style="display: none;" name="u_sex"
									value="2" /> <label class="s_sex speed-label-3 r-off"
									title="����" onclick="change_radio('.s_sex','u_sex',1);">����</label>
							</div>
							<div class="speed-row">
								<input type="radio" style="display: none;" name="u_married"
									value="5" /> <label class="s_married speed-label-3 r-off"
									onclick="change_radio('.s_married','u_married',0);">��ȥ</label>
								<input type="radio" style="display: none;" name="u_married"
									value="2" /> <label class="s_married speed-label-3 r-off"
									onclick="change_radio('.s_married','u_married',1);">��ȥ</label>
							</div>
							<div class="speed-row">
								<select
									style="display: block; margin: 3px 0 6px 0; width: 110px; height: 26px; border: 1px solid #dbdbdb; font-family: 'Malgun Gothic', '�������'; font-size: 14px;"
									name="u_jisa" onchange="footer_select_jisa(this)">
									<option value="">��������</option>
									<option value="01">����</option>
									<option value="02">��õ</option>
									<option value="03">����/ȭ��</option>
									<option value="13">õ��</option>
									<option value="04">����</option>
									<option value="05">����</option>
									<option value="06">����</option>
									<option value="07">�뱸</option>
									<option value="08">�λ�</option>
									<option value="09">���</option>
									<option value="10">â��</option>
									<option value="15">��� </option>
									<option value="32">����/����</option>
									<option value="22">�泲 </option>
									<option value="21">��� </option>
									<option value="16">���� </option>
									<option value="20">���� </option>
									<option value="19">���� </option>
									<option value="18">�泲 </option>
									<option value="24">����</option>
									<option value="23">���� </option>
									<option value="17">��� </option>
									<option value="14">����</option>
									<option value="11">LA</option>

								</select> <select
									style="display: block; margin: 3px 0 6px 0; width: 110px; height: 26px; border: 1px solid #dbdbdb; font-family: 'Malgun Gothic', '�������'; font-size: 14px;"
									name="u_edu">
									<option value="">�з�</option>
									<option value="02">����б� ����</option>
									<option value="05">����������</option>
									<option value="09">���б�����</option>
									<option value="11">���п�����</option>
									<option value="13">���п�����</option>
									<option value="14">�ڻ��̻�</option>
									<option value="15">��Ÿ</option>

								</select>
							</div>
							<div class="speed-row">
								<input type="text"
									style="display: block; margin: 3px 0 6px 0; width: 80px; height: 22px; border: 1px solid #dbdbdb; font-family: 'Malgun Gothic', '�������'; font-size: 14px;"
									name="u_name" maxlength="10" onclick="footer_agree_view(0);"
									value="�̸�"
									onfocus="footer_agree_view(0);if(this.value==this.defaultValue)this.value='';"
									onblur="if(this.value=='')this.value=this.defaultValue;" />
								<div style="display: block; margin: 3px 0 6px 0;">
									<!--
								<span>19</span>
								<input type="text" style="width:30px; height:22px; border:1px solid #dbdbdb; font-family:'Malgun Gothic','�������'; font-size:14px;" name="u_birth" maxlength="2" />
								<span>���</span>
								-->
									<select name="u_birth"
										style="display: block; margin: 3px 0 6px 0; width: 80px; height: 22px; border: 1px solid #dbdbdb; font-family: 'Malgun Gothic', '�������'; font-size: 14px;">
										<option value="">�����</option>
										<option value="1998">1998��</option>
										<option value="1997">1997��</option>
										<option value="1996">1996��</option>
										<option value="1995">1995��</option>
										<option value="1994">1994��</option>
										<option value="1993">1993��</option>
										<option value="1992">1992��</option>
										<option value="1991">1991��</option>
										<option value="1990">1990��</option>
										<option value="1989">1989��</option>
										<option value="1988">1988��</option>
										<option value="1987">1987��</option>
										<option value="1986">1986��</option>
										<option value="1985">1985��</option>
										<option value="1984">1984��</option>
										<option value="1983">1983��</option>
										<option value="1982">1982��</option>
										<option value="1981">1981��</option>
										<option value="1980">1980��</option>
										<option value="1979">1979��</option>
										<option value="1978">1978��</option>
										<option value="1977">1977��</option>
										<option value="1976">1976��</option>
										<option value="1975">1975��</option>
										<option value="1974">1974��</option>
										<option value="1973">1973��</option>
										<option value="1972">1972��</option>
										<option value="1971">1971��</option>
										<option value="1970">1970��</option>
										<option value="1969">1969��</option>
										<option value="1968">1968��</option>
										<option value="1967">1967��</option>
										<option value="1966">1966��</option>
										<option value="1965">1965��</option>
										<option value="1964">1964��</option>
										<option value="1963">1963��</option>
										<option value="1962">1962��</option>
										<option value="1961">1961��</option>
										<option value="1960">1960��</option>
										<option value="1959">1959��</option>
										<option value="1958">1958��</option>
										<option value="1957">1957��</option>
										<option value="1956">1956��</option>
										<option value="1955">1955��</option>
										<option value="1954">1954��</option>
										<option value="1953">1953��</option>
										<option value="1952">1952��</option>
										<option value="1951">1951��</option>
										<option value="1950">1950��</option>
										<option value="1949">1949��</option>
										<option value="1948">1948��</option>
										<option value="1947">1947��</option>
										<option value="1946">1946��</option>
										<option value="1945">1945��</option>
										<option value="1944">1944��</option>
										<option value="1943">1943��</option>
										<option value="1942">1942��</option>
										<option value="1941">1941��</option>
										<option value="1940">1940��</option>
										<option value="1939">1939��</option>
										<option value="1938">1938��</option>
										<option value="1937">1937��</option>
									</select>
								</div>
							</div>
							<div class="speed-row">
								<input type="text"
									style="display: none; margin: 3px 0 6px 0; width: 80px; height: 22px; border: 1px solid #dbdbdb; font-family: 'Malgun Gothic', '�������'; font-size: 14px;"
									name="u_mtel" id="f_mtel" />

								<!--<input type="text" style="display:block; margin:3px 0 6px 0; width:80px; height:22px; border:1px solid #dbdbdb; font-family:'Malgun Gothic','�������'; font-size:14px;" name="u_mtel1" maxlength="3" id="f_mtel1" />-->
								<select
									style="display: block; margin: 3px 0 6px 0; width: 80px; height: 26px; border: 1px solid #dbdbdb; font-family: 'Malgun Gothic', '�������'; font-size: 14px;"
									name="u_mtel1">
									<option value="">����ó</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								<div
									style="display: block; margin: 3px 0 6px 0; overflow: hidden;"
									id="f_mtel_text">
									<input type="text"
										style="width: 30px; height: 22px; border: 1px solid #dbdbdb; font-family: 'Malgun Gothic', '�������'; font-size: 14px;"
										name="u_mtel2" maxlength="4" /> <span>-</span> <input
										type="text"
										style="width: 30px; height: 22px; border: 1px solid #dbdbdb; font-family: 'Malgun Gothic', '�������'; font-size: 14px;"
										name="u_mtel3" maxlength="4" />
								</div>
							</div>
							<a href="javascript:bottom_check_form();" class="speed-btn">�����û</a>

							<div class="agree" id="footer_agree" style="display: none;">
								<div style="width: 100%; position: relative;">
									<div style="margin: 0 0 10px 0;" class="c_flow">
										<input type="checkbox" name="f_agree_all" value="Y"
											id="agree_f3"
											onclick="agree_click('f_agree_all','f_agree1','f_agree2',0);"
											class="a_input" /> <label class="a_label" for="agree_f3"
											style="width: 600px;">�������� ���� �� �̿�, ������ Ȱ�뿡 ��� ����</label>
									</div>
									<div class="c_flow">
										<div style="float: left; width: 300px;">
											<div class="a_con">

												&lt;�������� ���� �� �̿뵿�� &gt;<br />
												<br /> ���� '����������ȣ��'�� ���� ������ ���������� ������ ���� ����.�̿��ϰ��� �մϴ�.<br />
												<br /> ���������� ����.�̿� ����<br /> - ȸ������ �� ��ȥ���񽺿� ���� ��� �� �ڷ��û �ǻ�
												Ȯ��<br /> - ��ȥ���� ���� ��� �� �̿� ����, ���� ���� �� �̺�Ʈ �ȳ�<br /> - �׽�Ʈ
												����ȳ��� ���� ��������<br /> - �̺�Ʈ ������û, �������ɿ���, ��÷�ڹ�ǥ, ������׿� ���� ����
												����<br />
												<br /> �����ϴ� ���������� �׸�<br /> - ����, �ֹι�ȣ���ڸ�(�Ǵ� ��������) ����, ����ó ��
												�޴�����ȣ, ��ȥ���, �̸���, �з�(�Ǵ� ��������б�), �ְ�����(�Ǵ� �ּ�), ��������(�Ǵ� �����)<br />
												<br /> ���������� ���� �� �̿�Ⱓ<br /> - ��ȥ�߰����� ���� 5�� �Ǵ� �������� ���� �� Żȸ��
												��û�� ������ ����.�̿��մϴ�.<br /> - ��ȥȸ�� ������ ��� ���������� ���� ȸ�� ���� ��ħ�� ����
												���������� �����մϴ�.<br /> - ��, ������ ������ ���ؼ��� �Ʒ��� ������ ����� �Ⱓ ����
												�����մϴ�.<br />
												<br /> ��. ȸ�� ���� ��ħ�� ���� �������� ����<br />
												<br /> -�������� ���� �� ȸ��Ż�� ��û��� <br /> ���� ���� : ���� �̿� ���� <br />
												���� �Ⱓ : ����� ȸ�� Ż���Ϻ��� 2�� <br /> ���� �׸� : ���̵�, �̸�, �ֹι�ȣ ���ڸ�,
												�̸��� <br />
												<br /> -ä�뿡 ���� �Ի����� ��� <br /> ���� ���� : ���ä���� ���� ���� <br />
												�����Ⱓ : �������� ������ ��û�ϱ� ������<br />
												<br /> ��. ���ù��ɿ� ���� �������� ���� <br />
												<br /> ���, ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� �� ��������� ������ ���Ͽ� ������ �ʿ䰡
												�ִ� ��� ȸ��� ������ɿ��� ���� ������ �Ⱓ ���� ȸ�������� �����մϴ�. �� ��� ȸ��� �����ϴ� ������
												�� ������ �������θ� �̿��ϸ� �����Ⱓ�� �Ʒ��� �����ϴ�.<br />
												<br /> - ��� �Ǵ� û��öȸ � ���� ��� <br /> ���� ���� : ���ڻ�ŷ� �����
												�Һ��ں�ȣ�� ���� ���� <br /> ���� �Ⱓ : 5�� <br />
												<br /> - ��ݰ��� �� ��ȭ ���� ���޿� ���� ���<br /> ���� ���� : ���ڻ�ŷ� �����
												�Һ��ں�ȣ�� ���� ���� <br /> ���� �Ⱓ : 5�� <br />
												<br /> - ���ڱ��� �ŷ��� ���� ��� <br /> ���� ���� : ���ڱ����ŷ��� <br /> ���� �Ⱓ
												: 5�� <br />
												<br /> - �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ��� <br /> ���� ���� : ���ڻ�ŷ� �����
												�Һ��ں�ȣ�� ���� ���� <br /> ���� �Ⱓ : 3�� <br />
												<br /> - ���� Ȯ�ο� ���� ��� <br /> ���� ���� : ������� �̿����� �� ������ȣ � ����
												���� <br /> ���� �Ⱓ : 6���� <br />
												<br /> - ������Ʈ �湮��� <br /> ���� ���� : ��ź�к�ȣ�� <br /> ���� �Ⱓ : 3����<br />
												<br /> �� �������ǽ� ���Ի���� ���� �ּ����� ������ ����.�̿��ϰ� �Ǹ�, �� ���Ǹ� �ź��Ͻô�
												��쿡�� �ش� �����̿� �� ���Ի�� �� �������� ���� ������ �Ұ��� �� �� �ֽ��ϴ�.<br />
												<br />



											</div>
											<div style="margin: 5px 0 0 0;" class="c_flow">
												<input type="checkbox" name="f_agree1" value="Y"
													id="agree_f1"
													onclick="agree_click('f_agree_all','f_agree1','f_agree2',1);"
													class="a_input" /> <label class="a_label" for="agree_f1"
													style="width: 280px; font-weight: normal;">�������� ����
													�� �̿� ����</label>
											</div>
										</div>
										<div style="float: right; width: 300px;">
											<div class="a_con">

												&lt;���������� ������ ���� �ȳ�&gt;<br />
												<br /> [�Һ��� ���� ��ȣ�� ���� ����]<br />
												<br /> �ּ����� ����ó�� �� ���ǰźο� ���� �ȳ� : �������ǽ� ���Ի�� �� ������ ���� ����
												�ּ����� ������ ����.�̿��ϰ� �Ǹ�, �� ���Ǹ� �ź��Ͻô� ��쿡�� �ش� ������ �̿� �� ���Ի�� ��
												�������� ���� ������ �Ұ����� �� ������ �˷� �帳�ϴ�.<br />
												<br /> �������� �������� öȸ : �������� �������̿뿡 ������ ���Ŀ��� ��ȭ[��ǥ��ȣ], ����, ����
												���� ���� ������ ���� � ���� �������� ó�� ������ ��û�� �� �ֽ��ϴ�.<br />
												<br /> ��ǰ���� ����û��(Do-Not Call) : �������� ���� �� �̿뿡 ������ ���Ŀ���
												��ȭ[��ǥ��ȣ], ���� ���� ���� ������Ȱ���� ���� ������ ��û�� �� �ֽ��ϴ�. <br />
												<br /> �������� ������ ���� ����<br />
												<br /> 1. ���������� �����޴� �� : ��� Ŀ�øŴ��� �� �̺�Ʈ/������ ���<br />
												<br /> 2. ���������� �����޴� ���� �̿� ����<br /> - ȸ������ �� ��ȥ���񽺿� ���� ��� ��
												�ڷ��û �ǻ� Ȯ��<br /> - ��ȥ���� ���� ��� �� �̿� ����, ���� ���� �� �̺�Ʈ �ȳ�<br />
												- �׽�Ʈ ����ȳ��� ���� ��������<br /> - �̺�Ʈ ������û, �������ɿ���, ��÷�ڹ�ǥ, ������׿�
												���� ���� ����<br />
												<br /> 3. ������ ���������� ����<br />
												<br /> - ���νĺ����� (����, �ֹι�ȣ���ڸ�(�Ǵ� ��������) ����, ����ó �� �޴�����ȣ,
												��ȥ���, �̸���, �з�(�Ǵ� ��������б�), �ְ�����(�Ǵ� �ּ�), ��������(�Ǵ� �����))<br />
												<br /> 4. �����޴� ���� �������� ���� �� �̿�Ⱓ<br />
												<br /> - ��ȥ�߰����� ���� 5�� �Ǵ� �������� ���� �� Żȸ�� ��û�� ������ ����.�̿��մϴ�.<br />
												- ��ȥȸ�� ������ ��� ���������� ���� ȸ�� ���� ��ħ�� ���� ���������� �����մϴ�.<br /> - ��,
												������ ������ ���ؼ��� �Ʒ��� ������ ����� �Ⱓ ���� �����մϴ�.<br />
												<br /> ��. ȸ�� ���� ��ħ�� ���� �������� ����<br />
												<br /> -�������� ���� �� ȸ��Ż�� ��û��� <br /> ���� ���� : ���� �̿� ���� <br />
												���� �Ⱓ : ����� ȸ�� Ż���Ϻ��� 2�� <br /> ���� �׸� : ���̵�, �̸�, �ֹι�ȣ ���ڸ�,
												�̸��� <br />
												<br /> -ä�뿡 ���� �Ի����� ��� <br /> ���� ���� : ���ä���� ���� ���� <br />
												�����Ⱓ : �������� ������ ��û�ϱ� ������<br />
												<br /> ��. ���ù��ɿ� ���� �������� ���� <br />
												<br /> ���, ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� �� ��������� ������ ���Ͽ� ������ �ʿ䰡
												�ִ� ��� ȸ��� ������ɿ��� ���� ������ �Ⱓ ���� ȸ�������� �����մϴ�. �� ��� ȸ��� �����ϴ� ������
												�� ������ �������θ� �̿��ϸ� �����Ⱓ�� �Ʒ��� �����ϴ�.<br />
												<br /> - ��� �Ǵ� û��öȸ � ���� ��� <br /> ���� ���� : ���ڻ�ŷ� �����
												�Һ��ں�ȣ�� ���� ���� <br /> ���� �Ⱓ : 5�� <br />
												<br /> - ��ݰ��� �� ��ȭ ���� ���޿� ���� ���<br /> ���� ���� : ���ڻ�ŷ� �����
												�Һ��ں�ȣ�� ���� ���� <br /> ���� �Ⱓ : 5�� <br />
												<br /> - ���ڱ��� �ŷ��� ���� ��� <br /> ���� ���� : ���ڱ����ŷ��� <br /> ���� �Ⱓ
												: 5�� <br />
												<br /> - �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ��� <br /> ���� ���� : ���ڻ�ŷ� �����
												�Һ��ں�ȣ�� ���� ���� <br /> ���� �Ⱓ : 3�� <br />
												<br /> - ���� Ȯ�ο� ���� ��� <br /> ���� ���� : ������� �̿����� �� ������ȣ � ����
												���� <br /> ���� �Ⱓ : 6���� <br />
												<br /> - ������Ʈ �湮��� <br /> ���� ���� : ��ź�к�ȣ�� <br /> ���� �Ⱓ : 3����<br />
												<br /> 5. ���� �ȳ���� : SMS, Email, ��ȭ <br />
												<br />

											</div>
											<div style="margin: 5px 0 0 0;" class="c_flow">
												<input type="checkbox" name="f_agree2" id="agree_f2"
													value="Y"
													onclick="agree_click('f_agree_all','f_agree1','f_agree2',2);"
													class="a_input" /> <label class="a_label" for="agree_f2"
													style="width: 280px; font-weight: normal;">������ Ȱ��
													����</label>
											</div>
										</div>
									</div>
									<a href="javascript:footer_agree_view(1);"><img
										src="/Duo/common/img/closeBtn_02.gif" alt="�ݱ�" class="a_close" /></a>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
				<div class="video-area">
					<div style="float: left; margin: 30px 0 0 0; width: 100px;">
						<h3 class="video-txt">
							��� <br />
							<span style="color: #fe0000;">�������̾߱�</span>
						</h3>
						<a href="/duo/duostory/video.asp" class="detail-btn">�ڼ�������</a>
					</div>
					<div class="v-avi">
						<object type="application/x-shockwave-flash"
							data="/duo/duostory/img/movie_duostory.swf" width="150"
							height="110">
							<param name="movie" value="/duo/duostory/img/movie_duostory.swf" />
							<param name="quality" value="high" />
							<param name="wmode" value="transparent" />
							��� ������ �̾߱�
						</object>
					</div>
				</div>
			</div>
		</div>
		<div class="record-type2">
			<h3>��� �������</h3>
			<ul>
				<li class="record-first"><a
					href="/duo/company/company_prize_view.asp?CP_No=91"><span
						class="txt-type-1">2017 ���ѹα� ��ǥ�귣�� ���</span><span
						class="txt-type-2">8�� ���� ����!</span><span class="txt-type-3">��ȥ��������
							�ι�</span></a></li>
				<li class="record-second"><a
					href="/duo/company/company_prize_view.asp?CP_No=86"><span
						class="txt-type-3">2016 �Һ��� �߽� �濵</span><span class="txt-type-2">2ȸ����CCM����������</span><span
						class="txt-type-1">���� ���� �����ŷ�����ȸ ccm����</span></a> <span class="badge">��������</span>
				</li>
				<li class="record-third"><a
					href="/duo/company/company_prize_view.asp?CP_No=95"><span
						class="txt-type-1">2017 ������ �귣�� ��� </span><span class="txt-type-2">9��
							���� ����!</span><span class="txt-type-3">��ȥ�������� �ι�</span></a></li>
			</ul>
		</div>
		<div class="record-type3">
			<h3>��� �������</h3>
			<div class="contents-wrapper" style="height: 50px; overflow: hidden;">
				<!--ul �� �������� ���ư��� �˴ϴ�.-->
				<ul
					style="margin: 0; padding: 0; list-style: none; width: 5682px; height: 50px; overflow: hidden;"
					id="prize_items">
					<li><a href="/duo/company/company_prize_view.asp?CP_No=89"><img
							src="/duo/main_img/footerPrizeBn_89.jpg" alt="���ѹα� �۽�Ʈ �귣�� ���"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=89"><span
								class="title-type1">���ѹα� �۽�Ʈ �귣�� ���</span><span
								class="title-type2">��ȥ�������� �ι�</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=88"><img
							src="/duo/main_img/footerPrizeBn_88.jpg"
							alt="�Һ��ڰ� ���� ���� �ŷ��ϴ� �귣�� ���"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=88"><span
								class="title-type1">�Һ��ڰ� ���� ����</span><span class="title-type2">�ŷ��ϴ�
									�귣�� ���</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=87"><img
							src="/duo/main_img/footerPrizeBn_87.jpg" alt="�������濵���"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=87"><span
								class="title-type1">�������濵���</span><span class="title-type2">��ȥ��������
									�ι�</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=86"><img
							src="/duo/main_img/footerPrizeBn_86.jpg" alt="�Һ����߽ɰ濵(CCM) ������"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=86"><span
								class="title-type1">�Һ����߽ɰ濵(CCM)</span><span class="title-type2">������</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=83"><img
							src="/duo/main_img/footerPrizeBn_83.jpg" alt="���ѹα� ������� ���� ���� ���"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=83"><span
								class="title-type1">���ѹα� �������</span><span class="title-type2">����
									���� ���</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=81"><img
							src="/duo/main_img/footerPrizeBn_81.jpg" alt="���ѹα� ������ ��Ʈ��ǰ ���"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=81"><span
								class="title-type1">���ѹα� ������</span><span class="title-type2">��Ʈ��ǰ
									���</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=80"><img
							src="/duo/main_img/footerPrizeBn_80.jpg" alt="�Һ����� NO.1 �귣�� ���"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=80"><span
								class="title-type1">�Һ����� NO.1</span><span class="title-type2">�귣��
									���</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=79"><img
							src="/duo/main_img/footerPrizeBn_79.jpg" alt="���ѹα� �ŷڹ޴� ���� ���"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=79"><span
								class="title-type1">���ѹα� �ŷڹ޴� ���� ���</span><span
								class="title-type2">��ȥ�������� �ι�</span></a>
						</div></li>
					<li><a href="/Duo/company/company_prize_view.asp?CP_No=78"><img
							src="/Duo/main_img/footerPrizeBn_78.jpg" alt="���ѹα� ������ �귣�� ���"></a>
						<div class="textarea">
							<a href="/Duo/company/company_prize_view.asp?CP_No=78"><span
								class="title-type1">���ѹα� ������ �귣�� ���</span><span
								class="title-type2">��ȥ�������� �ι�</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=77"><img
							src="/duo/main_img/footerPrizeBn_77.jpg" alt="�������Ӱ��ɰ濵 ���"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=77"><span
								class="title-type1">�������Ӱ��ɰ濵 ���</span><span class="title-type2">��ȸ�����
									����</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=76"><img
							src="/duo/main_img/footerPrizeBn_76.jpg" alt="���ѹα� ��ǥ �귣�� ���"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=76"><span
								class="title-type1">���ѹα� ��ǥ �귣�� ���</span><span
								class="title-type2">��ȥ���� �ι�</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=75"><img
							src="/duo/main_img/footerPrizeBn_75.jpg"
							alt="�ѱ��� ���� ��� �޴� �귣�� ���"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=75"><span
								class="title-type1">�ѱ��� ����</span><span class="title-type2">���
									�޴� �귣�� ���</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=70"><img
							src="/duo/main_img/footerPrizeBn_70.jpg" alt="������� ��ȸ���� ���"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=70"><span
								class="title-type1">������� ��ȸ���� ���</span><span class="title-type2">�������â��ι�</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=66"><img
							src="/duo/main_img/footerPrizeBn_66.jpg" alt="�ѱ��濵��ȸ �ֿ�� �濵���"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=66"><span
								class="title-type1">�ѱ��濵��ȸ</span><span class="title-type2">�ֿ��
									�濵���</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=55"><img
							src="/duo/main_img/footerPrizeBn_55.jpg" alt="�ѱ��� 100�� �ູ������"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=55"><span
								class="title-type1">�ѱ��濵��ȸ</span><span class="title-type2">���ູ�濵�ι�</span></a>
						</div></li>
					<li><a href="/duo/company/company_prize_view.asp?CP_No=52"><img
							src="/duo/main_img/footerPrizeBn_52.jpg" alt="�����̾� �귣�� ���� 1��"></a>
						<div class="textarea">
							<a href="/duo/company/company_prize_view.asp?CP_No=52"><span
								class="title-type1">�����̾�</span><span class="title-type2">�귣��
									���� 1��</span></a>
						</div></li>

				</ul>
			</div>
		</div>
		<div id="n_footer_wrapper">
			<h2>�ϴ� ����</h2>
			<div id="footer-menu">
				<ul>
					<li style="margin-left: 0;"><a
						href="/duo/company/company_manage.asp">ȸ��Ұ�</a></li>
					<li class="policy"><a
						style="color: #fc4740; font-size: 1.2em; letter-spacing: -.5px;"
						href="/com_member/privacy_02.asp?site=duo" target="_blank">��������ó����ħ</a></li>
					<li><a href="/com_member/privacy_01.asp?site=duo"
						target="_blank">�̿���</a></li>
					<li><a href="javascript:notice_popup_view();">���ع��û������</a></li>
					<li><a href="/duo/duostory/partner.asp?tab=4">���޹���</a></li>
					<li><a href="http://recruit.duo.co.kr/Duo/index.asp"
						target="_blank">ä�����</a></li>
					<li><a href="/duo/duostory/browse.asp">ã�ƿ��ô±�</a></li>
					<li><a href="/duo/bottom/sitemap.asp">����Ʈ��</a></li>
				</ul>
				<form class="jisa_Form" target="_blank" name="jisa_form"
					id="jisa_form" method="post">
					<select class="select_jisa" name="u_jisa"
						onchange="jisa_select(this.value)">
						<option>����������</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=01">���ﺻ��</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=10">��õ���</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=11">�������</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=35">õ�ȵ��</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=12">�λ���</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=20">�뱸���</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=30">�������</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=31">���ֵ��</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=40">�����</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=50">â�����</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=51">���ֵ��</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=70">LA ���</option>
						<option value="/duo/jisa/jisa_main.asp?n_type=75">������</option>

					</select>
				</form>
			</div>
			<div id="footer-info">
				<div class="contents-wrapper"
					style="margin-top: 30px; overflow: hidden; position: relative;">
					<h3>��� ����</h3>
					<img src="/duo/main_img_2015/footer-logo.gif" alt="���, �ѱ���ǥ��ȥ����ȸ��"
						class="footerLogo">
						<div class="info" style="box-sizing: content-box !important;">
							<address style="font-style: normal;">���� ������ ������� 406
								(���ﵿ 820-9 �۶�Ÿ��) 11,12,16�� (06134)</address>
							<p>
								��ȣ�� : �������(��) / ��ǥ�� : �ڼ��� / ��ȥ�߰��� �Ű��ȣ : ���� 080031<br>��Ϲ�ȣ
									: ���� 080079 / ����ڵ�Ϲ�ȣ : 214-86-28824<br>����Ǹž� �Ű� : ���� -
										3259ȣ [<a
										href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp"
										target="_blank" style="color: #959595;">���������Ȯ��</a>]
							</p>
							<p class="contact" style="box-sizing: content-box !important;">
								<span class="tel">��������ȭ : <span>1577-8333</span></span> / Fax :
								02-550-6003 / Email : duo@duonet.com
							</p>
							<p class="copyright" style="box-sizing: content-box !important;">
								copyright <span>1995~2017</span> @duoinfo corp. all right
								reserved
							</p>
						</div>
						<div class="sns">
							<ul>
								<li><a href="https://twitter.com/duoepisode"
									class="twitter" target="_blank">Ʈ����</a></li>
								<li><a href="https://www.facebook.com/DuoEpisode"
									class="facebook" target="_blank">���̽���</a></li>
								<li><a href="https://www.instagram.com/duoepisode/"
									class="insta" target="_blank">�ν�Ÿ�׷�</a></li>
								<li><a href="https://story.kakao.com/ch/duo" class="quotes"
									target="_blank">īī�����丮</a></li>
								<li><a href="http://blog.naver.com/officialduo" class="b"
									target="_blank">���̹� ��α�</a></li>
								<li><a href="http://www.duoepisode.com/" class="t"
									target="_blank">Ƽ���丮</a></li>
								<li><a
									href="http://plus.kakao.com/home/@%EB%93%80%EC%98%A4"
									class="kakao" target="_blank">īī����</a></li>
							</ul>
						</div> <img src="/duo/main_img_2015/footer-securitymark.gif"
						class="security" alt="���ȸ�ũ">
				</div>
			</div>
		</div>

		<script type="text/javascript">
			var prize_one_step;
			var prize_page;
			var page_step;
			var check_step;
			var footer_prize_interval;

			function initprize() {
				prize_page = 6;
				prize_one_step = $("#prize_items li").css("width").replace(
						/[^-\d\.]/g, '');

				//alert(prize_one_step);

				page_step = prize_one_step * prize_page;

				//alert(page_step);

				check_step = prize_one_step * ($("#prize_items li").length - 3);

				//alert(check_step);

				var overlab_html;

				overlab_html = "";

				for (i = 0; i < 6; i++) {
					overlab_html = overlab_html + '<li>' + "\n";
					overlab_html = overlab_html
							+ $("#prize_items li").eq(i).html() + "\n";
					overlab_html = overlab_html + '</li>' + "\n";
				}

				//alert(overlab_html);

				$("#prize_items").append(overlab_html);

				var contener_width;

				contener_width = prize_one_step * $("#prize_items li").length;

				$("#prize_items").css("width", contener_width + "px");

				//alert(contener_width);
			}

			function move_prize_list() {
				try {
					var now_position;

					now_position = $("#prize_items").css("margin-left")
							.replace(/[^-\d\.]/g, '');

					if ((parseInt(check_step) + parseInt(now_position)) == 0) {
						$("#prize_items").css("margin-left", "0px");
					} else {
						now_position = now_position - 1;
						$("#prize_items").css("margin-left",
								now_position + "px");
					}
				} catch (e) {
					return;
				}

			}

			function start_prize_list() {
				footer_prize_interval = setInterval(move_prize_list, 30);
			}

			function stop_prize_list() {
				clearInterval(footer_prize_interval);
			}

			initprize();
			start_prize_list();

			$("#prize_items").mouseover(function() {
				stop_prize_list();
			});

			$("#prize_items").mouseout(function() {
				start_prize_list();
			});
		</script>

		<script type="text/javascript">
			function jisa_select(strUrl) {

				if (strUrl != "") {
					$("#jisa_form").attr("action", strUrl);
					$("#jisa_form").submit();
				}
			}

			function notice_popup_view() {
				window
						.open("/duo/common/notice_content.asp?no=579",
								"iframe_scroll",
								"width=650,height=430,scrollbars=no,toolbar=no,menubar=no,resizable=no");
			}

			function purchase_view() {
				window
						.open("/duo/purchase_view.jsp", "iframe_scroll",
								"width=650,height=430,scrollbars=no,toolbar=no,menubar=no,resizable=no");
			}
		</script>

		<!--2013-11-04 | �ű� ���� ��� ����-->
		<!--2016-11-03 | �ű� ���� ��� ���� ����-->
		<link rel="stylesheet" type="text/css"
			href="/duo/common/css/inc_simple_consult.css" />
		<script type="text/javascript">
			var now = new Date();
			var year = now.getFullYear(); //���� �� 
			var month = now.getMonth(); //���� ��
			var day = now.getDate(); //���� ��

			var n_year = now.getFullYear(); //���� �� (����)
			var n_month = now.getMonth(); //���� �� (����)
			var n_day = now.getDate(); //���� ��(����)

			var Monthplus_count = 0; // ������ ī��Ʈ
			var isSelect = false;

			function reset_value() {
				now = new Date();
				year = now.getFullYear(); //���� �� 
				month = now.getMonth(); //���� ��
				day = now.getDate(); //���� ��

				n_year = now.getFullYear(); //���� �� (����)
				n_month = now.getMonth(); //���� �� (����)
				n_day = now.getDate(); //���� ��(����)

				Monthplus_count = 0; // ������ ī��Ʈ
				isSelect = false;

				$(".jisa_item").removeClass("select");
				$("#sc_jisa").val("");
				$("#sc_counsel_date").val("");
			}

			//��¥ �ڽ� ä��� step #1
			function makeDate() {
				var firstDay = new Date(year, month, 1);
				var yoil = firstDay.getDay(); //���� ���. 0~6(��~��)
				var nalsu = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31,
						30, 31);
				if ((year % 4 === 0) && (year % 100 !== 0)
						|| (year % 400 === 0)) {
					nalsu[1] = 29; //���� üũ
				}

				makeDateList(yoil, nalsu[month], year, month, day); //��¥�ڽ� ä��� step #2
			}

			//��¥ �ڽ� ä��� step #2
			function makeDateList(yoil, nalsu, year, month, day) {
				var firstDay = new Date(year, month, 1);
				var yoil = firstDay.getDay(); //���� ���. 0~6(��~��)

				var str = "";
				var no = 1;
				var currentCell = 0;
				var ju = Math.ceil((nalsu + yoil) / 7);

				for (var row = 1; row <= ju; row++) {
					//str += "<tr>"; //�� �Ʒ� 7������ ����
					for (var col = 1; col <= 7; col++) {
						if (no > nalsu)
							break; //1���� ���� ������  ���� ä���

						if (currentCell < yoil) {
							str += '<span class="date"></span>';
							currentCell++;
						} else {
							if (isSelect == false) {
								str += '<span class="date">' + no + '</span>';
							} else {
								if (no < day) {
									if (year == n_year) {
										if (month == n_month) {
											str += '<span class="date">' + no
													+ '</span>';
										} else if (month > n_month) {
											str += '<span class="date" id="' + no + '">'
													+ no + '</span>';
										}

									} else if (year > n_year) {
										str += '<span class="date" id="' + no + '">'
												+ no + '</span>';
									}

								} else if (no === day) {
									str += '<span class="date select" id="' + no + '">'
											+ no + '</span>';
								} else {
									str += '<span class="date" id="' + no + '">'
											+ no + '</span>';
								}
							}
							no++;
						}
					}
				}

				$("#day_box").html(str); //���� li html �Է�

				$("#tx_date_view").html(year + "." + (month + 1)); //�� ǥ��

				if (isSelect == false) {
					$("span.date").unbind('click');
				} else {
					//���� click function set
					$("span.date").click(
							function() {
								day = this.id;

								$("span.date").removeClass("select");
								$(this).addClass("select");

								$("#sc_counsel_date").attr("value",
										year + "-" + (month + 1) + "-" + day);

								//makeTime(year,month,day,n_day);

							});
				}
			}

			function Monthminus() {
				if (month == 0) {
					year--;
					month = 11;
				} else {
					month--;
				}

				if (month == n_month) {
					$(".sc_prev").hide();
				}

				Monthplus_count = Monthplus_count - 1;

				makeDate();
				makeTime(year, month, day, n_day);
			}

			function Monthplus() {
				if (Monthplus_count == 2) {
					alert("�湮��¥ ������ 3���������� �����մϴ�.");
					return;
				} else {
					if (month > 10) {
						year++;
						month = 0;
					} else {
						month++;
					}

					$(".sc_prev").show();

					Monthplus_count = Monthplus_count + 1;

					makeDate();
					makeTime(year, month, day, n_day);
				}
			}

			function set_event_jisa() {
				$(".jisa_item").unbind().bind(
						"click",
						function() {
							var now_index = $(".jisa_item").index(this);

							$(".jisa_item").removeClass("select");
							$(".jisa_item").eq(now_index).addClass("select");

							var srt_value = this.id;

							srt_value = srt_value.substring(srt_value.length,
									srt_value.length - 2);

							if (srt_value == "75" || srt_value == "70"
									|| srt_value == "80") {
								$("form#SMCForm #mtel_01").hide();
								$("form#SMCForm #mtel_02").hide();
								$("form#SMCForm #mtel_03").hide();
								$("form#SMCForm #mtel_04").show();
							} else {
								$("form#SMCForm #mtel_01").show();
								$("form#SMCForm #mtel_02").show();
								$("form#SMCForm #mtel_03").show();
								$("form#SMCForm #mtel_04").hide();
							}

							$("#sc_jisa").val(srt_value);

							isSelect = true;

							makeDate();
						});

				$(".sc_sex_input").unbind().bind("click", function(e) {
					var now_position = $(".sc_sex_input").index(this);

					if (now_position == 0) {
						$(".sc_sex_rd").eq(0).removeClass("man");
						$(".sc_sex_rd").eq(0).removeClass("man_on");
						$(".sc_sex_rd").eq(0).addClass("man_on");

						$(".sc_sex_rd").eq(1).removeClass("woman");
						$(".sc_sex_rd").eq(1).removeClass("woman_on");
						$(".sc_sex_rd").eq(1).addClass("woman");
					} else {
						$(".sc_sex_rd").eq(0).removeClass("man");
						$(".sc_sex_rd").eq(0).removeClass("man_on");
						$(".sc_sex_rd").eq(0).addClass("man");

						$(".sc_sex_rd").eq(1).removeClass("woman");
						$(".sc_sex_rd").eq(1).removeClass("woman_on");
						$(".sc_sex_rd").eq(1).addClass("woman_on");
					}

				});

				$(".sc_married_input").unbind().bind(
						"click",
						function(e) {
							check_label_base_radio("sc_married_input", this,
									"sc_married_rd", "on", "off");
						});

				$(".sc_agree_rd").unbind().bind(
						"click",
						function(e) {
							var now_index = $(".sc_agree_rd").index(this);
							label_case_agree_check("sc_agree_rd",
									"sc_agree_label", "agree_on", "agree",
									now_index);
						});
			}

			function ViewSimpleAppointment() {
				reset_value();

				$.ajax({
					url : "/duo/include/inc_simple_consult_html.asp",
					success : function(data) {
						if (data == "") {
							alert("�˾��� ������ �� �����ϴ�. �ٽ� �õ��� �ּ���.");
							return;
						}

						$("html").css("overflow", "hidden");
						$("#simple_consult_popup").html(data);

						set_event_jisa();

						makeDate();

						$("#simple_pop_bg").show();
						$("#simple_consult_popup").show();
					}
				});
			}

			function hideSimpleAppointment() {
				$("#simple_pop_bg").hide();
				$("#simple_consult_popup").hide();
				$("html").css("overflow", "auto");
			}

			function opms_script_run() {
				try {
					_trk_flashEnvView('_TRK_PI=RES', '_TRK_CN=�������û',
							'_TRK_RK=' + document.SMCForm.u_name.value);
				} catch (err) {
					var aa = 0;
				}

			}

			function label_case_agree_check(c_name, l_name, c_on, c_off, idx) {

				switch (idx) {
				case 0:

					if ($("." + c_name).eq(0).is(":checked")) {
						$("." + c_name).eq(0).prop("checked", true);
						$("." + c_name).eq(1).prop("checked", true);
						$("." + c_name).eq(2).prop("checked", true);

						$("." + l_name).removeClass(c_on);
						$("." + l_name).removeClass(c_off);
						$("." + l_name).addClass(c_on);
					} else {
						$("." + c_name).eq(0).prop("checked", false);
						$("." + c_name).eq(1).prop("checked", false);
						$("." + c_name).eq(2).prop("checked", false);

						$("." + l_name).removeClass(c_on);
						$("." + l_name).removeClass(c_off);
						$("." + l_name).addClass(c_off);
					}

					break;

				case 1:
					if ($("." + c_name).eq(1).is(":checked")) {
						if ($("." + c_name).eq(2).is(":checked")) {
							$("." + c_name).eq(0).prop("checked", true);
							$("." + c_name).eq(1).prop("checked", true);
							$("." + c_name).eq(2).prop("checked", true);

							$("." + l_name).removeClass(c_on);
							$("." + l_name).removeClass(c_off);
							$("." + l_name).addClass(c_on);
						} else {
							$("." + c_name).eq(0).prop("checked", false);

							$("." + l_name).eq(0).removeClass(c_off);
							$("." + l_name).eq(0).removeClass(c_on);
							$("." + l_name).eq(0).addClass(c_off);

							$("." + l_name).eq(1).removeClass(c_off);
							$("." + l_name).eq(1).removeClass(c_on);
							$("." + l_name).eq(1).addClass(c_on);
						}
					} else {
						$("." + c_name).eq(0).prop("checked", false);

						$("." + l_name).eq(0).removeClass(c_off);
						$("." + l_name).eq(0).removeClass(c_on);
						$("." + l_name).eq(0).addClass(c_off);

						$("." + l_name).eq(1).removeClass(c_off);
						$("." + l_name).eq(1).removeClass(c_on);
						$("." + l_name).eq(1).addClass(c_off);
					}

					break;

				case 2:
					if ($("." + c_name).eq(2).is(":checked")) {
						if ($("." + c_name).eq(1).is(":checked")) {
							$("." + c_name).eq(0).prop("checked", true);
							$("." + c_name).eq(1).prop("checked", true);
							$("." + c_name).eq(2).prop("checked", true);

							$("." + l_name).removeClass(c_on);
							$("." + l_name).removeClass(c_off);
							$("." + l_name).addClass(c_on);
						} else {
							$("." + c_name).eq(0).prop("checked", false);

							$("." + l_name).eq(0).removeClass(c_off);
							$("." + l_name).eq(0).removeClass(c_on);
							$("." + l_name).eq(0).addClass(c_off);

							$("." + l_name).eq(2).removeClass(c_off);
							$("." + l_name).eq(2).removeClass(c_on);
							$("." + l_name).eq(2).addClass(c_on);
						}
					} else {
						$("." + c_name).eq(0).prop("checked", false);

						$("." + l_name).eq(0).removeClass(c_off);
						$("." + l_name).eq(0).removeClass(c_on);
						$("." + l_name).eq(0).addClass(c_off);

						$("." + l_name).eq(2).removeClass(c_off);
						$("." + l_name).eq(2).removeClass(c_on);
						$("." + l_name).eq(2).addClass(c_off);
					}

					break;
				}
			}

			function check_simple_consult() {
				var formnm = document.SMCForm;

				formnm.action = "/duo/include/inc_simple_appointment_proc.asp";

				if (formnm.u_jisa.value == "") {
					alert('����Ͻ� ���縦 �Ͽ� �ּ���.');
					return;
				}

				if (formnm.u_counsel_date.value == "") {
					alert('�湮��¥�� ������ �ּ���.');
					return;
				}

				if ($("#day_box").find(".select").length == 0) {
					alert("�湮��¥ ������ ���� �ʾҰų� �߸��� ��¥�� ���õǾ����ϴ�.");
					return;
				}

				var tnow = new Date();
				var tyear = tnow.getFullYear();
				var tmonth = tnow.getMonth();
				var tday = tnow.getDate();
				var thour = tnow.getHours();
				var date_check = true;

				if (tyear < year) {
					date_check = false;
				} else if (tyear == year && tmonth == month && tday < day) {
					date_check = false;
				}

				if (date_check == false) {
					alert("���糯¥�� ����Ǿ����ϴ�. �湮��¥�� �ٽ� ������ �ּ���.");
					reset_value();
					makeDate();
					return;
				}

				if (formnm.u_name.value == "�̸�") {
					alert("�̸��� �Է��� �ּ���.");
					formnm.u_name.value = "";
					formnm.u_name.focus();
					return;
				}

				if (!isValidType(formnm.u_name, 'text', '�̸��� �Է��Ͽ� �ּ���.')) {
					return;
				}
				if (checkstring(formnm.u_name.value)) {
					alert("Ư�����ڸ� ����� �� �����ϴ�.");
					return;
				}
				if (!check_input_byte(formnm.u_name.value, 10)) {
					alert("�Է��� �� �ִ� ���̸� �ʰ��Ͽ����ϴ�.");
					return;
				}

				if (!isValidType(formnm.u_sex, 'check', '������ �����Ͽ� �����Ͽ� �ּ���.')) {
					return;
				}

				if (!isValidType(formnm.u_ident1, 'select', '����⵵�� ���õ��� �ʾҽ��ϴ�.')) {
					return;
				}

				if (!isValidType(formnm.u_edu, 'select', '�з��� �����Ͽ� �ּ���.')) {
					return;
				}

				if (!isValidType(formnm.u_married, 'check', '��ȥ ������ �����Ͽ� �ּ���.')) {
					return;
				}

				if ($("#sc_jisa").val() == "70" || $("#sc_jisa").val() == "75"
						|| $("#sc_jisa").val() == "80") {
					if (!isValidType(formnm.u_mtel, 'text', '����ó�� �Է��� �ּ���.')) {
						return;
					}

					if (!mtel_check_value(formnm.u_mtel.value)) {
						alert("������(-)�ܿ� �ٸ����ڴ� �Է��� �� �����ϴ�.");
						return;
					}
				} else {
					if (!isValidType(formnm.u_mtel1, 'select',
							'����ó ���ڸ��� �����Ͽ� �ּ���.')) {
						return;
					}
					if (!isValidType(formnm.u_mtel2, 'number',
							'����ó �߰��ڸ��� �Է��Ͽ� �ּ���.')) {
						return;
					}
					if (!isValidType(formnm.u_mtel3, 'number',
							'����ó ���ڸ��� �Է��Ͽ� �ּ���.')) {
						return;
					}

					if (!hp_chck_array(formnm.u_mtel2.value)
							&& !hp_chck_array(formnm.u_mtel3.value)) {
						alert("�ڵ��� ��ȣ�� �ùٸ��� �ʽ��ϴ�.");
						formnm.u_mtel3.focus();
						return;
					}
				}

				if (!agree_check('sc_agree_all', 'sc_agree_1', 'sc_agree_2')) {
					return;
				}

				var strdata;
				strdata = "";

				/*
				strdata += "u_ident1=" + formnm.u_ident1.value;
				strdata += "&u_sex=" + $(":radio[name='u_sex']:checked").val();
				strdata += "&u_edu=" + formnm.u_edu.value;
				strdata += "&u_married=" + $(":radio[name='u_married']:checked").val();
				strdata += "&u_mtel1=" + formnm.u_mtel1.value;
				strdata += "&u_mtel2=" + formnm.u_mtel2.value;
				strdata += "&u_mtel3=" + formnm.u_mtel3.value;
				if (formnm.u_mtel.value != "�ڵ���")
				{
					strdata += "&u_mtel=" + formnm.u_mtel.value;
				}
				strdata += "&u_counsel_date=" + formnm.u_counsel_date.value;
				strdata += "&u_counsel_time=" + formnm.u_counsel_time.value;
				strdata += "&u_jisa=" + formnm.u_jisa.value;
				strdata += "&u_div=" + formnm.u_div.value;
				strdata += "&u_name=" + escape(formnm.u_name.value);

				//alert(strdata);
				 */

				strdata = ajax_setFormData("SMCForm", "u_name,u_mtel")

				//alert(strdata);

				$.ajax({
					type : "post",
					url : "/duo/include/inc_simple_appointment_proc.asp",
					data : strdata,
					success : function(data) {
						if (data == "success") {
							opms_script_run();

							google_ga("send", "event", "PC����û", "��ưŬ��",
									"�����㿹��");

							alert("�����㿹�� ��û�� �Ϸ� �Ǿ����ϴ�.");
							hideSimpleAppointment();
						} else {
							if (data == "date_error") {
								alert("���೯¥�� �ùٸ��� �ʽ��ϴ�.\n�ٽ� ������ �ּ���." + data);
								return;
							} else {
								alert("��û�� ������ �߻��Ͽ����ϴ�. �ٽ� �õ��� �ּ���." + data);
								return;
							}
						}
					},
					error : function(request, status, error) {
						alert("��û�� ������ �߻��Ͽ����ϴ�. �ٽ� �õ��� �ּ���.2"
								+ request.responseText);
						return;
					}
				});
			}
		</script>
		<div id="simple_pop_bg"></div>
		<div id="simple_consult_popup"></div>

		<!--2016-11-03 | �ű� ���� ��� ���� ����-->
		<!--2013-11-04 | �ű� ���� ��� ����-->

		<link rel="stylesheet" type="text/css"
			href="/duo/common/css/inc_fast_consult.css" />
		<script type="text/javascript">
			function fast_consult_popup_view() {
				$
						.ajax({
							url : "/duo/include/inc_fast_consult_html.asp",
							success : function(data) {
								if (data == "") {
									alert("�˾��� �ҷ����� ���߽��ϴ�. �ٽ� �õ��� �ּ���.");
									return;
								} else {
									$("#fast_consult_popup").html(data);

									$(".fc_sex_input")
											.unbind()
											.bind(
													"click",
													function(e) {
														var now_position = $(
																".fc_sex_input")
																.index(this);

														if (now_position == 0) {
															$(".fc_sex_rd")
																	.eq(0)
																	.removeClass(
																			"m");
															$(".fc_sex_rd")
																	.eq(0)
																	.removeClass(
																			"m_on");
															$(".fc_sex_rd")
																	.eq(0)
																	.addClass(
																			"m_on");

															$(".fc_sex_rd")
																	.eq(1)
																	.removeClass(
																			"w");
															$(".fc_sex_rd")
																	.eq(1)
																	.removeClass(
																			"w_on");
															$(".fc_sex_rd")
																	.eq(1)
																	.addClass(
																			"w");
														} else {
															$(".fc_sex_rd")
																	.eq(0)
																	.removeClass(
																			"m");
															$(".fc_sex_rd")
																	.eq(0)
																	.removeClass(
																			"m_on");
															$(".fc_sex_rd")
																	.eq(0)
																	.addClass(
																			"m");

															$(".fc_sex_rd")
																	.eq(1)
																	.removeClass(
																			"w");
															$(".fc_sex_rd")
																	.eq(1)
																	.removeClass(
																			"w_on");
															$(".fc_sex_rd")
																	.eq(1)
																	.addClass(
																			"w_on");
														}

													});

									$(".fc_married_input").unbind().bind(
											"click",
											function(e) {
												check_label_base_radio(
														"fc_married_input",
														this, "fc_married_rd",
														"on", "off");
											});

									$("html").css("overflow", "hidden"); // �ٴڷ��̾� ��ũ�ѹ� ����

									$("body")
											.on(
													"keydown.disableScroll",
													function(e) {
														var eventKeyArray = [
																32, 33, 34, 35,
																36, 37, 38, 39,
																40 ];
														for (var i = 0; i < eventKeyArray.length; i++) {
															if (e.keyCode === eventKeyArray[i]) {
																e
																		.preventDefault();
																return;
															}
														}
													});

									$("#fast_pop_bg").show();
									$("#fast_consult_popup").show();

								}
							},
							error : function(data) {
								alert("�˾��� �ҷ����� ���߽��ϴ�. �ٽ� �õ��� �ּ���.");
								return;
							}
						});
			}

			function fast_consult_popup_close() {
				$("#fast_consult_popup").hide();
				$("#fast_pop_bg").hide();
				$("body").off(".disableScroll");
				$("html").css("overflow", ""); //�ٴڷ��̾� ��ũ�ѹ� ����
			}

			function fast_select_jisa(obj) {
				if ($(obj).val() == "14" || $(obj).val() == "11"
						|| $(obj).val() == "12") {
					$("#FFCForm #fc_mtel1").hide();
					$("#FFCForm #fc_mtel2").hide();
					$("#FFCForm #fc_mtel3").hide();
					$("#FFCForm #fc_mtel").show();
				} else {
					$("#FFCForm #fc_mtel1").show();
					$("#FFCForm #fc_mtel2").show();
					$("#FFCForm #fc_mtel3").show();
					$("#FFCForm #fc_mtel").hide();
				}
			}

			function fc_agree_view() {
				if ($("#fc_agree_content").is(":visible")) {
					$("#fc_agree_content").hide();
				} else {
					$("#fc_agree_content").show();
				}
			}

			function fast_consult_popup_check() {
				var formnm = document.FFCForm;

				formnm.u_name.value = formnm.u_name.value.replace("�̸�", "");

				if (!isValidType(formnm.u_name, 'text', '�̸��� �Է��Ͽ� �ּ���.')) {
					return;
				}
				if (checkstring(formnm.u_name.value) == true) {
					alert("�̸��Է¿� Ư�����ڴ� �Է��Ҽ� �����ϴ�.");
					return;
				}
				if (!check_input_byte(formnm.u_name.value, 10)) {
					alert("�Է� �� �� �ִ� ���ڱ��̸� �ʰ��Ͽ����ϴ�.");
					return;
				}

				formnm.u_birth.value = formnm.u_birth.value.replace(
						"�����(��1980)", "");

				if (!isValidType(formnm.u_birth, 'number', '����⵵�� �Է��Ͽ� �ּ���.')) {
					return;
				}

				if (!isValidType(formnm.u_sex, 'check', '������ �����Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_married, 'check', '��ȥ ��ȥ�� �����Ͽ� �ּ���.')) {
					return;
				}

				var v = $("#FFCForm select[name='u_jisa']").val();
				if (v == "11" || v == "12" || v == "14") {
					if (formnm.u_mtel.value == "����ó") {
						alert("����ó�� �Է��� �ּ���.");
						formnm.u_mtel.value = "";
						formnm.u_mtel.focus();
						return;
					}

					if (!isValidType(formnm.u_mtel, 'text', '����ó�� �Է��Ͽ� �ּ���.')) {
						return;
					}

				} else {
					if (!isValidType(formnm.u_mtel1, 'select',
							'����ó ���ڸ��� �����Ͽ� �ּ���.')) {
						return;
					}
					if (!isValidType(formnm.u_mtel2, 'number',
							'����ó �߰��ڸ��� �Է��Ͽ� �ּ���.')) {
						return;
					}
					if (!isValidType(formnm.u_mtel3, 'number',
							'����ó ���ڸ��� �Է��Ͽ� �ּ���.')) {
						return;
					}

					if (!hp_chck_array(formnm.u_mtel2.value)
							&& !hp_chck_array(formnm.u_mtel3.value)) {
						alert("�ڵ��� ��ȣ�� �ùٸ��� �ʽ��ϴ�.");
						formnm.u_mtel3.focus();
						return;
					}

					formnm.u_mtel.value = "";
				}

				if (!isValidType(formnm.u_jisa, 'select', '���縦 �����Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_edu, 'select', '�з��� �����Ͽ� �ּ���.')) {
					return;
				}

				if (!agree_check('fc_agree_all', 'fc_agree1', 'fc_agree2')) {
					return;
				}

				var formdata;

				formdata = ajax_setFormData("FFCForm", "u_name");

				$.ajax({
					url : "/duo/common/right_speed_proc.asp",
					data : formdata,
					type : "POST",
					success : function(data) {
						if (data.indexOf("[[proc=success]]") > -1) {
							google_ga("send", "event", "PC����û", "��ưŬ��",
									"������ȭ���");

							setTimeout(function() {
								alert("����û�� �Ϸ� �Ǿ����ϴ�.");
								formnm.reset();
								fast_consult_popup_close();
							}, 500);
						} else {
							alert("������ �߻��Ͽ����ϴ�. �ٽ� �õ��� �ּ���." + "\n" + data);
						}
					},
					error : function(data) {
						alert("������ �߻��Ͽ����ϴ�. �ٽ� �õ��� �ּ���." + "\n" + data);
					}
				});
			}
		</script>
		<div id="fast_pop_bg" style="display: none;"></div>
		<div id="fast_consult_popup" style="display: none;"></div>
		<style>
#main_pop_bg {
	opacity: 0.8;
	filter: alpha(opacity : '80');
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 100000;
	background-color: rgb(0, 0, 0);
	display: none;
}

#main_consult_popup {
	opacity: 1;
	position: fixed;
	overflow: hidden;
	z-index: 100001;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	text-align: center;
	display: none;
}

#main_consult_popup .align {
	display: inline-block;
	vertical-align: middle;
	height: 100%;
}

#main_consult_popup .content {
	display: inline-block;
	opacity: 1;
	visibility: visible;
	outline: none;
	text-align: left;
	position: relative;
	vertical-align: middle;
	font-family: Malgun Gothic, ���� ���, Dotum, ����, Gulim, ����;
}

#main_consult_popup .view-wrapper {
	float: left;
	width: 100%;
	min-width: 1040px;
}

#main_consult_popup .view-wrapper span.close {
	display: block;
	float: left;
	width: 1040px;
	text-align: right;
	margin-bottom: 10px;
}

#main_consult_popup .view-wrapper span.st-1 {
	display: block;
	float: left;
	width: 520px;
	height: 580px;
	background: #5298ee url(/duo/main_img_2016/popup_01.gif) center center
		no-repeat;
}

#main_consult_popup .view-wrapper form {
	display: block;
	float: left;
	margin: 0;
	padding: 0;
	padding: 0 80px;
	width: 360px;
	height: 580px;
	padding-top: 40px;
	height: 540px;
	background-color: #ffffff;
}

#main_consult_popup .view-wrapper form a.confirm {
	display: block;
	clear: both;
	float: left;
	width: 360px;
	height: 54px;
	background: #5298ee url(/duo/main_img_2016/popup_02.gif) center center
		no-repeat;
	font-size: 0;
	line-height: 0;
}

#main_consult_popup .view-wrapper form table {
	width: 100%;
	font-family: Malgun Gothic, ���� ���, Dotum, ����, Gulim, ����;
}

#main_consult_popup .view-wrapper form table caption {
	display: block;
	margin-top: -1px;
	height: 0;
	color: transparent;
	line-height: 0;
	overflow: hidden;
}

#main_consult_popup .view-wrapper form table td {
	line-height: 36px;
	padding-bottom: 15px;
}

#main_consult_popup .view-wrapper form table .agree {
	height: 34px;
	vertical-align: middle;
}

#main_consult_popup .view-wrapper form table .submit {
	padding-top: 10px;
	height: 37px;
}

#main_consult_popup .view-wrapper form table input[type=text] {
	height: 43px;
	line-height: 43px;
	color: #535353;
	padding: 0 4px;
	font-family: Malgun Gothic, ���� ���, Dotum, ����, Gulim, ����;
	font-size: 16px;
	background-color: #ffffff;
	border: 1px solid #dedede;
}

#main_consult_popup .view-wrapper form table select {
	height: 44px;
	font-family: Malgun Gothic, ���� ���, Dotum, ����, Gulim, ����;
	font-size: 16px;
	color: #535353;
	background-color: #ffffff;
	border: 1px solid #dedede;
	line-height: 31px;
}

#main_consult_popup .view-wrapper form table select {
	height: auto;
	padding: 10px 0;
	\0
	/ie8+9;
}

#main_consult_popup .view-wrapper form table label {
	font-size: 14px;
	color: #535353;
}

#main_consult_popup .view-wrapper form table .field {
	margin-right: 5px;
}

#main_consult_popup .view-wrapper form table input[type=checkbox],
	#main_consult_popup .view-wrapper form table input[type=radio] {
	display: none;
	position: absolute;
	z-index: -1;
}

#main_consult_popup .view-wrapper form table textarea {
	height: 44px;
	line-height: 22px;
	color: #535353;
	padding: 0 4px;
	font-family: Malgun Gothic, ���� ���, Dotum, ����, Gulim, ����;
	font-size: 14px;
	background-color: #ffffff;
	border: 1px solid #dedede;
}

#main_consult_popup .view-wrapper form table label.sex {
	display: inline-block;
	width: 85px;
	height: 44px;
	position: relative;
	font-size: 0;
	line-height: 100%;
}

#main_consult_popup .view-wrapper form table .man {
	background: url(/duo/main_img_2016/popup_sex_m_off.gif) left top
		no-repeat;
}

#main_consult_popup .view-wrapper form table .man_on {
	background: url(/duo/main_img_2016/popup_sex_m_on.gif) left top
		no-repeat;
}

#main_consult_popup .view-wrapper form table .woman {
	margin-left: -1px;
	background: url(/duo/main_img_2016/popup_sex_w_off.gif) left top
		no-repeat;
}

#main_consult_popup .view-wrapper form table .woman_on {
	margin-left: -1px;
	background: url(/duo/main_img_2016/popup_sex_w_on.gif) left top
		no-repeat;
}

#main_consult_popup .view-wrapper form table label.marry {
	display: inline-block;
	width: 83px;
	height: 42px;
	font-size: 16px;
	text-align: center;
	line-height: 41px;
}

#main_consult_popup .view-wrapper form table .on {
	background: #6f7e91;
	border: 1px solid #6f7e91;
	color: #ffffff;
}

#main_consult_popup .view-wrapper form table .off {
	background: #ffffff;
	border: 1px solid #dbdbdb;
	color: #333333;
}

#main_consult_popup .view-wrapper form table .second {
	margin-left: -1px;
}

#main_consult_popup .view-wrapper form .privacy {
	display: block;
	position: absolute;
	padding: 10px;
	width: 480px;
	height: 104px;
	background: #ffffff;
	top: 0;
	border: 1px solid #e7e7e7;
	left: -520px;
}

#main_consult_popup .view-wrapper form .privacy img.close {
	display: block;
	position: absolute;
	width: 13px;
	height: 13px;
	right: -5px;
	top: -5px;
}

#main_consult_popup .view-wrapper form .privacy span.all {
	display: block;
	float: left;
	width: 100%;
	height: 16px;
	margin-bottom: 10px;
	font-size: 12px;
}

#main_consult_popup .view-wrapper form .privacy span.each {
	display: block;
	float: left;
	width: 100%;
	height: 16px;
	font-size: 12px;
}

#main_consult_popup .view-wrapper form .privacy span.agree-type {
	display: block;
	float: left;
	width: 230px;
	height: 50px;
	font-size: 11px;
	border: 1px solid #e2e2e2;
	overflow-x: auto;
	margin-bottom: 10px;
}
</style>
		<script type="text/javascript">
			function main_consult_popup_view(u_div) {
				$
						.ajax({
							url : "/duo/include/inc_service_consult_html.asp",
							data : "u_div=" + u_div,
							success : function(data) {
								$("#main_consult_popup").html(data);

								$(".mc_sex_input")
										.unbind()
										.bind(
												"click",
												function(e) {
													var now_position = $(
															".mc_sex_input")
															.index(this);

													if (now_position == 0) {
														$(".mc_sex_rd").eq(0)
																.removeClass(
																		"man");
														$(".mc_sex_rd")
																.eq(0)
																.removeClass(
																		"man_on");
														$(".mc_sex_rd")
																.eq(0)
																.addClass(
																		"man_on");

														$(".mc_sex_rd")
																.eq(1)
																.removeClass(
																		"woman");
														$(".mc_sex_rd")
																.eq(1)
																.removeClass(
																		"woman_on");
														$(".mc_sex_rd")
																.eq(1)
																.addClass(
																		"woman");
													} else {
														$(".mc_sex_rd").eq(0)
																.removeClass(
																		"man");
														$(".mc_sex_rd")
																.eq(0)
																.removeClass(
																		"man_on");
														$(".mc_sex_rd")
																.eq(0)
																.addClass("man");

														$(".mc_sex_rd")
																.eq(1)
																.removeClass(
																		"woman");
														$(".mc_sex_rd")
																.eq(1)
																.removeClass(
																		"woman_on");
														$(".mc_sex_rd")
																.eq(1)
																.addClass(
																		"woman_on");
													}

												});

								$(".mc_married_input").unbind().bind(
										"click",
										function(e) {
											check_label_base_radio(
													"mc_married_input", this,
													"mc_married_rd", "on",
													"off");
										});

								$(".mc_tx_content")
										.focus(
												function() {
													if ($(".mc_tx_content")
															.html() == "���ǻ��� �Է�") {
														$(".mc_tx_content")
																.html("")
													}
												});

								$("html").css("overflow", "hidden"); // �ٴڷ��̾� ��ũ�ѹ� ����

								$("body")
										.on(
												"keydown.disableScroll",
												function(e) {
													var eventKeyArray = [ 32,
															33, 34, 35, 36, 37,
															38, 39, 40 ];
													for (var i = 0; i < eventKeyArray.length; i++) {
														if (e.keyCode === eventKeyArray[i]) {
															e.preventDefault();
															return;
														}
													}
												});

								$("#main_pop_bg").show();
								$("#main_consult_popup").css("top", "0px");
								$("#main_consult_popup").css("left", "-1500px");

								$("#main_consult_popup").show();
								$("#main_consult_popup").animate({
									"left" : "0px"
								}, 600);
							},
							error : function(data) {
								alert("�˾��� �ҷ����� ���߽��ϴ�. �ٽ� �õ��� �ּ���.");
								return;
							}
						});
			}
			function main_consult_popup_close() {
				$("#main_consult_popup").hide();
				$("#main_pop_bg").hide();
				$("body").off(".disableScroll");
				$("html").css("overflow", ""); //�ٴڷ��̾� ��ũ�ѹ� ����
			}

			function mc_agree_view(v_type) {
				if (v_type == 1) {
					$(".mc_agree_area").eq(0).hide();
				} else {
					$(".mc_agree_area").eq(0).show();
				}
			}

			function check_label_base_radio(c_name, obj, rd_class, on_class,
					off_class) {
				var rd_index = $("." + c_name).index(obj);

				$("." + rd_class).removeClass(off_class);
				$("." + rd_class).removeClass(on_class);
				$("." + rd_class).addClass(off_class);

				$("." + rd_class).eq(rd_index).removeClass(off_class);
				$("." + rd_class).eq(rd_index).addClass(on_class);
			}

			function main_consult_popup_check() {
				var formnm = document.MCForm;
				formnm.action = "/Duo/membership/marriage_guide_proc.asp";

				if (formnm.u_name.value == "�̸�" || formnm.u_name.value == "") {
					alert("�̸��� �Է��Ͽ� �ּ���.");
					formnm.u_name.focus();
					return;
				}

				if (!isValidType(formnm.u_name, 'text', '�̸��� �Է��Ͽ� �ּ���.')) {
					return;
				}
				if (checkstring(formnm.u_name.value) == true) {
					alert("�̸��Է¿� Ư�����ڴ� �Է��Ҽ� �����ϴ�.");
					return;
				}
				if (!check_input_byte(formnm.u_name.value, 10)) {
					alert("�Է� �� �� �ִ� ���ڱ��̸� �ʰ��Ͽ����ϴ�.");
					return;
				}

				if (!isValidType(formnm.u_ident1, 'select', '������� ������ �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_ident2, 'check', '������ �����Ͽ� �����Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_married, 'check', '��ȥ ����� �����Ͽ� �ּ���.')) {
					return;
				}

				if (!isValidType(formnm.u_work, 'select', '���������� �����Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_edu, 'select', '�з��� �����Ͽ� �ּ���.')) {
					return;
				}

				if (!isValidType(formnm.u_mtel1, 'select', '�ڵ��� ���ڸ��� �����Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_mtel2, 'number',
						'�ڵ��� �߰��ڸ��� �Է��Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_mtel3, 'number', '�ڵ��� ���ڸ��� �Է��Ͽ� �ּ���.')) {
					return;
				}

				if (!hp_chck_array(formnm.u_mtel2.value)
						&& !hp_chck_array(formnm.u_mtel3.value)) {
					alert("�ڵ��� ��ȣ�� �ùٸ��� �ʽ��ϴ�.");
					formnm.u_mtel3.focus();
					return;
				}

				if (checkEmail(formnm.u_email, formnm.u_email_domain,
						formnm.u_email_domain_select) == false) {
					return;
				}

				if (!isValidType(formnm.u_dwell, 'select', '���������� �����Ͽ� �ּ���.')) {
					return;
				}

				if (!agree_check('m_agree_all', 'm_agree1', 'm_agree2')) {
					$(".mc_agree_area").eq(0).show();
					return;
				}

				google_ga("send", "event", "PC����û", "��ưŬ��", "��������ȭ");

				formnm.submit();
			}
		</script>
		<div id="main_pop_bg"></div>
		<div id="main_consult_popup"></div>

		<!-- 2014-10-29 | google ga start -->
		<script>
			(function(i, s, o, g, r, a, m) {
				i['GoogleAnalyticsObject'] = r;
				i[r] = i[r] || function() {
					(i[r].q = i[r].q || []).push(arguments)
				}, i[r].l = 1 * new Date();
				a = s.createElement(o), m = s.getElementsByTagName(o)[0];
				a.async = 1;
				a.src = g;
				m.parentNode.insertBefore(a, m)
			})(window, document, 'script',
					'//www.google-analytics.com/analytics.js', 'ga');

			ga('create', 'UA-55116372-1', 'auto');
			ga('send', 'pageview');
		</script>
		<!-- 2014-10-29 google ga end -->

		<!-- 2014-12-18 | DDN script start -->
		<script type="text/javascript">
			var roosevelt_params = {
				retargeting_id : 'jOYpR31_m8ZRnNFGlzon8A00',
				tag_label : 'iAW4dsRsQBKzekdlKgghXQ'
			};
		</script>
		<script type="text/javascript"
			src="//adimg.daumcdn.net/rt/roosevelt.js"></script>
		<!-- 2014-12-18 | DDN script end -->

		<!-- 2016-12-23 | sk web -->
		<div id="ttdUniversalPixelTag09c0c0dd23a04a19b2938103f9848314"
			style="display: none">
			<script src="https://js.adsrvr.org/up_loader.1.1.0.js"
				type="text/javascript"></script>
			<script type="text/javascript">
				(function(global) {
					if (typeof TTDUniversalPixelApi === 'function') {
						var universalPixelApi = new TTDUniversalPixelApi();
						universalPixelApi
								.init("ij27x6r", [ "namjawl" ],
										"https://insight.adsrvr.org/track/up",
										"ttdUniversalPixelTag09c0c0dd23a04a19b2938103f9848314");
					}
				})(this);
			</script>
		</div>
		<!-- 2016-12-23 | sk web-->

		<!-- 2017-09-29 | ACECOUNTER -->
		<script type="text/javascript" src="//wcs.naver.net/wcslog.js">
			
		</script>
		<script type="text/javascript">
			if (!wcs_add)
				var wcs_add = {};
			wcs_add["wa"] = "s_1b6bff256195";
			if (!_nasa)
				var _nasa = {};
			wcs.inflow();
			wcs_do(_nasa);
		</script>
		<!-- 2017-09-29 | ACECOUNTER -->
	</div>
	<!--�ϴܿ���-->
	</div>


	<script type="text/javascript" src="/duo/common/isValidType.js"></script>
	<script type="text/javascript">
		function right_select_jisa(obj) {
			if ($(obj).val() == "14" || $(obj).val() == "11"
					|| $(obj).val() == "12") {
				$("#transform_sub_right #u_mtel1").hide();
				$("#mtel_text").hide();
				$("#transform_sub_right #u_mtel").show();
			} else {
				$("#transform_sub_right #u_mtel1").show();
				$("#mtel_text").show();
				$("#transform_sub_right #u_mtel").hide();
			}
		}

		function check_right_slide() {
			var formnm = document.RSForm;

			formnm.u_name.value = formnm.u_name.value.replace("�̸�", "");

			if (!isValidType(formnm.u_name, 'text', '�̸��� �Է��Ͽ� �ּ���.')) {
				return;
			}
			if (checkstring(formnm.u_name.value) == true) {
				alert("�̸��Է¿� Ư�����ڴ� �Է��Ҽ� �����ϴ�.");
				return;
			}
			if (!check_input_byte(formnm.u_name.value, 10)) {
				alert("�Է� �� �� �ִ� ���ڱ��̸� �ʰ��Ͽ����ϴ�.");
				return;
			}

			formnm.u_birth.value = formnm.u_birth.value.replace("�����(��1980)",
					"");

			if (!isValidType(formnm.u_birth, 'number', '����⵵�� �Է��Ͽ� �ּ���.')) {
				return;
			}

			if (!isValidType(formnm.u_married, 'check', '��ȥ ��ȥ�� �����Ͽ� �ּ���.')) {
				return;
			}

			if (!isValidType(formnm.u_edu, 'select', '�з��� �����Ͽ� �ּ���.')) {
				return;
			}
			if (!isValidType(formnm.u_jisa, 'select', '���縦 �����Ͽ� �ּ���.')) {
				return;
			}

			if (!isValidType(formnm.u_sex, 'check', '������ �����Ͽ� �ּ���.')) {
				return;
			}

			var v = $("#transform_sub_right select[name='u_jisa']").val();
			if (v == "11" || v == "12" || v == "14") {
				if (formnm.u_mtel.value == "����ó") {
					alert("����ó�� �Է��� �ּ���.");
					formnm.u_mtel.value = "";
					formnm.u_mtel.focus();
					return;
				}

				if (!isValidType(formnm.u_mtel, 'text', '����ó�� �Է��Ͽ� �ּ���.')) {
					return;
				}

			} else {
				if (!isValidType(formnm.u_mtel1, 'select', '����ó ���ڸ��� �����Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_mtel2, 'number',
						'����ó �߰��ڸ��� �Է��Ͽ� �ּ���.')) {
					return;
				}
				if (!isValidType(formnm.u_mtel3, 'number', '����ó ���ڸ��� �Է��Ͽ� �ּ���.')) {
					return;
				}

				if (!hp_chck_array(formnm.u_mtel2.value)
						&& !hp_chck_array(formnm.u_mtel3.value)) {
					alert("�ڵ��� ��ȣ�� �ùٸ��� �ʽ��ϴ�.");
					formnm.u_mtel3.focus();
					return;
				}

				formnm.u_mtel.value = "";
			}

			if (!agree_check('r_agree_all', 'r_agree1', 'r_agree2')) {
				return;
			}

			var formdata;

			formdata = ajax_setFormData("RSForm", "u_name");

			$.ajax({
				url : "/duo/common/right_speed_proc.asp",
				data : formdata,
				type : "POST",
				success : function(data) {
					if (data.indexOf("[[proc=success]]") > -1) {
						//callbackFlashAction(708, 1335, 0, 0, 0 ); // emforce script run | 2013-08-30 
						setTimeout(function() {
							alert("����û�� �Ϸ� �Ǿ����ϴ�.");
							formnm.reset();
							$("#transform_sub_right #u_mtel1").show();
							$("#mtel_text").show();
							$("#transform_sub_right #u_mtel").hide();

							agree_view(1);
						}, 500);
					} else {
						alert("������ �߻��Ͽ����ϴ�. �ٽ� �õ��� �ּ���." + "\n" + data);
					}
				},
				error : function(data) {
					alert("������ �߻��Ͽ����ϴ�. �ٽ� �õ��� �ּ���." + "\n" + data);
				}
			});
		}

		function agree_view(viewmode) {
			if (viewmode == 0) {
				$(".box-wrapper").show();
			} else {
				$(".box-wrapper").hide();
			}
		}

		function service_consult(viewmode) {
			if (viewmode == 0) {
				$("#main_pop_bg").show();
				$("#main_consult").show();
			} else {
				$("#main_pop_bg").hide();
				$("#main_consult").hide();
			}
		}
		function scroll_top() {
			$(window).scrollTop(0);
		}
	</script>
	<style>
/*fix-right s*/
#fix-right {
	width: 68px;
	height: 100%;
	position: fixed;
	top: 35%;
	right: 0;
	z-index: 70;
}

#fix-right ul.menu-list {
	font-size: 11px;
	color: #ffffff;
	text-align: center;
	line-height: 16px;
}

#fix-right ul.menu-list .speed {
	width: 68px;
	height: 98px;
	background: url(/duo/main_img_09/quick_menu_01.gif) no-repeat left top;
	font-size: 0;
	text-indent: -99999px;
}

#fix-right ul.menu-list .speed a {
	display: block;
	width: 68px;
	height: 98px;
}

#fix-right ul.menu-list .simple {
	width: 68px;
	height: 72px;
	background: url(/duo/main_img_09/quick_menu_02.gif) no-repeat left top;
	font-size: 0;
	text-indent: -99999px;
}

#fix-right ul.menu-list .simple a {
	display: block;
	width: 68px;
	height: 72px;
}

#fix-right ul.menu-list .event {
	width: 68px;
	height: 71px;
	background: url(/duo/main_img_09/quick_menu_03.gif) no-repeat left top;
	font-size: 0;
	text-indent: -99999px;
}

#fix-right ul.menu-list .event a {
	display: block;
	width: 68px;
	height: 71px;
}

#fix-right ul.menu-list .tel {
	width: 68px;
	height: 120px;
	background: url(/duo/main_img_09/quick_menu_04.gif) no-repeat left top;
	font-size: 0;
	text-indent: -99999px;
}

#fix-right ul.menu-list .tel a {
	display: block;
	width: 68px;
	height: 120px;
}

#fix-right ul.menu-list .top {
	width: 68px;
	height: 67px;
	background: url(/duo/main_img_09/quick_menu_05.gif) no-repeat left top;
	font-size: 0;
	text-indent: -99999px;
}

#fix-right ul.menu-list .top a {
	display: block;
	width: 68px;
	height: 67px;
}

#fix-right ul.menu-list .fast {
	width: 68px;
	height: 90px;
	background: url(/duo/main_img_09/quick_menu_07.jpg) no-repeat left top;
	font-size: 0;
	text-indent: -99999px;
}

#fix-right ul.menu-list .fast a {
	display: block;
	width: 68px;
	height: 90px;
}

#fix-right .box-wrapper {
	position: fixed;
	width: 393px;
	height: 394px;
	top: 35%;
	right: 68px;
	background: #656161;
	padding: 34px 24px 0 24px;
	text-align: left;
	display: none;
}

#fix-right .box-wrapper p.title {
	display: block;
	margin: 0 0 15px 0;
	font-size: 18px;
	color: #ffea00;
	line-height: 130%;
}

#fix-right .box-wrapper p.title span {
	font-size: 14px;
	color: #ffc000;
}

#fix-right table {
	width: 100%;
}

#fix-right table td {
	height: 44px;
	vertical-align: middle;
}

#fix-right table input[type=text] {
	float: left;
	height: 32px;
	line-height: 32px;
	color: #9f9f9f;
	padding: 0 4px;
	border: none;
	font-size: 12px;
}

#fix-right table select {
	display: block;
	float: left;
	height: 32px;
	color: #9f9f9f;
	border: none;
}

#fix-right table select {
	height: auto;
	padding: 7px 0;
	\0
	/ie8+9;
}

#fix-right table label {
	color: #ffffff;
}

#fix-right .radioBtn {
	float: left;
	padding: 8px 0 0 0;
	color: #ffffff;
}

#fix-right .radioBtn input {
	vertical-align: middle;
	margin: 0 2px 0 0;
}

#fix-right .radioBtn label {
	margin: 0 5px 0 0;
	font-size: 12px;
}

#fix-right .longfield {
	width: 120px;
	margin-right: 10px;
}

#fix-right .midfield {
	width: 96px;
	margin-right: 10px;
}

#fix-right .agreebox {
	width: 100%;
	clear: both;
	float: left;
	margin: 8px 0 0 0;
}

#fix-right .agreebox .box {
	float: left;
	width: 163px;
	margin: 0 8px 0 0;
}

#fix-right .agreebox .txtarea {
	width: 100%;
	height: 36px;
	margin-bottom: 5px;
	overflow: auto;
	color: #c2c2c2;
	font-size: 12px;
	line-height: 140%;
	padding: 2px;
	background: #837e7e;
}

#fix-right input[type=checkbox] {
	vertical-align: middle;
	border: none;
}

#fix-right tr.last td {
	padding: 14px 0 0 0;
}

#fix-right tr.last label {
	font-size: 12px;
}

#fix-right tr.last .box label {
	font-size: 12px;
}

#fix-right .submit_bt {
	display: block;
	width: 214px;
	height: 46px;
	background: #252525;
	color: #fff600;
	font-size: 12px;
	text-align: center;
	line-height: 46px;
	margin: 0 auto;
	margin-top: 30px;
}

#fix-right input[type=submit] {
	display: block;
	width: 214px;
	height: 46px;
	margin: 30px auto 0 auto;
	outline: 0;
	border: 0;
	background: #252525;
	color: #fff600;
	font-size: 12px;
}

#fix-right .box-wrapper a.btn-close {
	border: none;
	display: block;
	width: 15px;
	height: 14px;
	position: absolute;
	top: 10px;
	left: 10px;
	font-size: 0;
	text-indent: -9999px;
	background: url(/duo/main_img_2015/quickmenu-btn-close.gif) top left
		no-repeat;
}
/*fix-right e*/
</style>
	<div id="fix-right">
		<h2 class="hide" style="display: none;">������ ����</h2>
		<ul class="menu-list">
			<li class="speed"><a
				href="https://www.duo.co.kr/com_member/member_join.asp?site=duo">ȸ������</a></li>
			<li class="fast"><a href="/duo/service/duo_faq.asp">������ȭ���</a></li>
			<!--<a href="javascript:fast_consult_popup_view();">-->
			<li>
				<div class="box-wrapper">
					<p class="title">
						��� ���񽺿� ���� �ñ��ϽŰ���?<br><span>����� ���� �ڼ��� �ȳ��� ������ ģ���ϰ�
								����ص帳�ϴ�.</span>
					</p>
					<form class="speed_Form" name="RSForm" method="post"
						id="transform_sub_right">
						<input type="hidden" name="pg" value="index_right">
							<table cellspacing="0" cellpadding="0" summary="��� ���ǵ� ����û���Դϴ�.">
								<caption>��� ���ǵ� ��� ��û ��</caption>
								<tbody>
									<tr>
										<td><input type="text" class="longfield" placeholder="�̸�"
											name="u_name" title="�̸�" value="�̸�" maxlength="5"
											onfocus="if(this.value==this.defaultValue)this.value='';"
											onblur="if(this.value=='')this.value=this.defaultValue;">
												<select class="midfield" name="u_birth">
													<!-- 1996~1920������� ����ǰ�(������� �������� ������ ���� �������� ����� -->
													<option value="">�����</option>
													<option value="1998">1998��</option>
													<option value="1997">1997��</option>
													<option value="1996">1996��</option>
													<option value="1995">1995��</option>
													<option value="1994">1994��</option>
													<option value="1993">1993��</option>
													<option value="1992">1992��</option>
													<option value="1991">1991��</option>
													<option value="1990">1990��</option>
													<option value="1989">1989��</option>
													<option value="1988">1988��</option>
													<option value="1987">1987��</option>
													<option value="1986">1986��</option>
													<option value="1985">1985��</option>
													<option value="1984">1984��</option>
													<option value="1983">1983��</option>
													<option value="1982">1982��</option>
													<option value="1981">1981��</option>
													<option value="1980">1980��</option>
													<option value="1979">1979��</option>
													<option value="1978">1978��</option>
													<option value="1977">1977��</option>
													<option value="1976">1976��</option>
													<option value="1975">1975��</option>
													<option value="1974">1974��</option>
													<option value="1973">1973��</option>
													<option value="1972">1972��</option>
													<option value="1971">1971��</option>
													<option value="1970">1970��</option>
													<option value="1969">1969��</option>
													<option value="1968">1968��</option>
													<option value="1967">1967��</option>
													<option value="1966">1966��</option>
													<option value="1965">1965��</option>
													<option value="1964">1964��</option>
													<option value="1963">1963��</option>
													<option value="1962">1962��</option>
													<option value="1961">1961��</option>
													<option value="1960">1960��</option>
													<option value="1959">1959��</option>
													<option value="1958">1958��</option>
													<option value="1957">1957��</option>
													<option value="1956">1956��</option>
													<option value="1955">1955��</option>
													<option value="1954">1954��</option>
													<option value="1953">1953��</option>
													<option value="1952">1952��</option>
													<option value="1951">1951��</option>
													<option value="1950">1950��</option>
													<option value="1949">1949��</option>
													<option value="1948">1948��</option>
													<option value="1947">1947��</option>
													<option value="1946">1946��</option>
													<option value="1945">1945��</option>
													<option value="1944">1944��</option>
													<option value="1943">1943��</option>
													<option value="1942">1942��</option>
													<option value="1941">1941��</option>
													<option value="1940">1940��</option>
													<option value="1939">1939��</option>
													<option value="1938">1938��</option>
													<option value="1937">1937��</option>
											</select>
												<div class="radioBtn">
													<label><input type="radio" name="u_married"
														value="5">��ȥ</label> <label><input type="radio"
														name="u_married" value="2">��ȥ</label>
												</div></td>
									</tr>
									<tr>
										<td><select class="longfield" name="u_edu">
												<option value="">�з�</option>
												<option value="02">����б� ����</option>
												<option value="05">����������</option>
												<option value="09">���б�����</option>
												<option value="11">���п�����</option>
												<option value="13">���п�����</option>
												<option value="14">�ڻ��̻�</option>
												<option value="15">��Ÿ</option>

										</select> <select class="midfield" name="u_jisa" id="u_jisa"
											onchange="right_select_jisa(this)">
												<option value="">��������</option>
												<option value="01">����</option>
												<option value="02">��õ</option>
												<option value="03">����/ȭ��</option>
												<option value="13">õ��</option>
												<option value="04">����</option>
												<option value="05">����</option>
												<option value="06">����</option>
												<option value="07">�뱸</option>
												<option value="08">�λ�</option>
												<option value="09">���</option>
												<option value="10">â��</option>
												<option value="15">��� </option>
												<option value="32">����/����</option>
												<option value="22">�泲 </option>
												<option value="21">��� </option>
												<option value="16">���� </option>
												<option value="20">���� </option>
												<option value="19">���� </option>
												<option value="18">�泲 </option>
												<option value="24">����</option>
												<option value="23">���� </option>
												<option value="17">��� </option>
												<option value="14">����</option>
												<option value="11">LA</option>

										</select>
											<div class="radioBtn">
												<label><input type="radio" name="u_sex" value="1">����</label>
												<label><input type="radio" name="u_sex" value="2">����</label>
											</div></td>
									</tr>
									<tr>
										<td><select class="longfield" name="u_mtel1" id="u_mtel1">
												<option value="">�ڵ���</option>
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
										</select> <input type="text" class="midfield" name="u_mtel2"
											id="u_mtel2" maxlength="4"> <input type="text"
												class="midfield" name="u_mtel3" id="u_mtel3" maxlength="4">
													<input type="text" class="midfield" name="u_mtel"
													id="u_mtel" style="display: none;"></td>
									</tr>
									<tr class="last">
										<td><label><input type="checkbox"
												name="r_agree_all" value="Y"
												onclick="agree_click('r_agree_all','r_agree1','r_agree2',0);">
													�������� ���� �� �̿�, ������ Ȱ�뿡 ��� ����</label>
											<div class="agreebox">
												<div class="box">
													<div class="txtarea">
														&lt;�������� ���� �� �̿뵿�� &gt;<br />
														<br /> ���� '����������ȣ��'�� ���� ������ ���������� ������ ���� ����.�̿��ϰ��� �մϴ�.<br />
														<br /> ���������� ����.�̿� ����<br /> - ȸ������ �� ��ȥ���񽺿� ���� ��� �� �ڷ��û
														�ǻ� Ȯ��<br /> - ��ȥ���� ���� ��� �� �̿� ����, ���� ���� �� �̺�Ʈ �ȳ�<br /> -
														�׽�Ʈ ����ȳ��� ���� ��������<br /> - �̺�Ʈ ������û, �������ɿ���, ��÷�ڹ�ǥ, ������׿�
														���� ���� ����<br />
														<br /> �����ϴ� ���������� �׸�<br /> - ����, �ֹι�ȣ���ڸ�(�Ǵ� ��������) ����, ����ó
														�� �޴�����ȣ, ��ȥ���, �̸���, �з�(�Ǵ� ��������б�), �ְ�����(�Ǵ� �ּ�), ��������(�Ǵ�
														�����)<br />
														<br /> ���������� ���� �� �̿�Ⱓ<br /> - ��ȥ�߰����� ���� 5�� �Ǵ� �������� ���� ��
														Żȸ�� ��û�� ������ ����.�̿��մϴ�.<br /> - ��ȥȸ�� ������ ��� ���������� ���� ȸ�� ����
														��ħ�� ���� ���������� �����մϴ�.<br /> - ��, ������ ������ ���ؼ��� �Ʒ��� ������ ����� �Ⱓ
														���� �����մϴ�.<br />
														<br /> ��. ȸ�� ���� ��ħ�� ���� �������� ����<br />
														<br /> -�������� ���� �� ȸ��Ż�� ��û��� <br /> ���� ���� : ���� �̿� ���� <br />
														���� �Ⱓ : ����� ȸ�� Ż���Ϻ��� 2�� <br /> ���� �׸� : ���̵�, �̸�, �ֹι�ȣ ���ڸ�,
														�̸��� <br />
														<br /> -ä�뿡 ���� �Ի����� ��� <br /> ���� ���� : ���ä���� ���� ���� <br />
														�����Ⱓ : �������� ������ ��û�ϱ� ������<br />
														<br /> ��. ���ù��ɿ� ���� �������� ���� <br />
														<br /> ���, ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� �� ��������� ������ ���Ͽ� ������ �ʿ䰡
														�ִ� ��� ȸ��� ������ɿ��� ���� ������ �Ⱓ ���� ȸ�������� �����մϴ�. �� ��� ȸ��� �����ϴ�
														������ �� ������ �������θ� �̿��ϸ� �����Ⱓ�� �Ʒ��� �����ϴ�.<br />
														<br /> - ��� �Ǵ� û��öȸ � ���� ��� <br /> ���� ���� : ���ڻ�ŷ� �����
														�Һ��ں�ȣ�� ���� ���� <br /> ���� �Ⱓ : 5�� <br />
														<br /> - ��ݰ��� �� ��ȭ ���� ���޿� ���� ���<br /> ���� ���� : ���ڻ�ŷ� �����
														�Һ��ں�ȣ�� ���� ���� <br /> ���� �Ⱓ : 5�� <br />
														<br /> - ���ڱ��� �ŷ��� ���� ��� <br /> ���� ���� : ���ڱ����ŷ��� <br /> ����
														�Ⱓ : 5�� <br />
														<br /> - �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ��� <br /> ���� ���� : ���ڻ�ŷ� �����
														�Һ��ں�ȣ�� ���� ���� <br /> ���� �Ⱓ : 3�� <br />
														<br /> - ���� Ȯ�ο� ���� ��� <br /> ���� ���� : ������� �̿����� �� ������ȣ �
														���� ���� <br /> ���� �Ⱓ : 6���� <br />
														<br /> - ������Ʈ �湮��� <br /> ���� ���� : ��ź�к�ȣ�� <br /> ���� �Ⱓ :
														3����<br />
														<br /> �� �������ǽ� ���Ի���� ���� �ּ����� ������ ����.�̿��ϰ� �Ǹ�, �� ���Ǹ� �ź��Ͻô�
														��쿡�� �ش� �����̿� �� ���Ի�� �� �������� ���� ������ �Ұ��� �� �� �ֽ��ϴ�.<br />
														<br />


													</div>
													<label><input type="checkbox" name="r_agree1"
														value="Y"
														onclick="agree_click('r_agree_all','r_agree1','r_agree2',1);">
															�������� ���� �� �̿� ����</label>
												</div>
												<div class="box">
													<div class="txtarea">
														&lt;���������� ������ ���� �ȳ�&gt;<br />
														<br /> [�Һ��� ���� ��ȣ�� ���� ����]<br />
														<br /> �ּ����� ����ó�� �� ���ǰźο� ���� �ȳ� : �������ǽ� ���Ի�� �� ������ ���� ����
														�ּ����� ������ ����.�̿��ϰ� �Ǹ�, �� ���Ǹ� �ź��Ͻô� ��쿡�� �ش� ������ �̿� �� ���Ի�� ��
														�������� ���� ������ �Ұ����� �� ������ �˷� �帳�ϴ�.<br />
														<br /> �������� �������� öȸ : �������� �������̿뿡 ������ ���Ŀ��� ��ȭ[��ǥ��ȣ], ����,
														���� ���� ���� ������ ���� � ���� �������� ó�� ������ ��û�� �� �ֽ��ϴ�.<br />
														<br /> ��ǰ���� ����û��(Do-Not Call) : �������� ���� �� �̿뿡 ������ ���Ŀ���
														��ȭ[��ǥ��ȣ], ���� ���� ���� ������Ȱ���� ���� ������ ��û�� �� �ֽ��ϴ�. <br />
														<br /> �������� ������ ���� ����<br />
														<br /> 1. ���������� �����޴� �� : ��� Ŀ�øŴ��� �� �̺�Ʈ/������ ���<br />
														<br /> 2. ���������� �����޴� ���� �̿� ����<br /> - ȸ������ �� ��ȥ���񽺿� ���� ���
														�� �ڷ��û �ǻ� Ȯ��<br /> - ��ȥ���� ���� ��� �� �̿� ����, ���� ���� �� �̺�Ʈ �ȳ�<br />
														- �׽�Ʈ ����ȳ��� ���� ��������<br /> - �̺�Ʈ ������û, �������ɿ���, ��÷�ڹ�ǥ, ������׿�
														���� ���� ����<br />
														<br /> 3. ������ ���������� ����<br />
														<br /> - ���νĺ����� (����, �ֹι�ȣ���ڸ�(�Ǵ� ��������) ����, ����ó �� �޴�����ȣ,
														��ȥ���, �̸���, �з�(�Ǵ� ��������б�), �ְ�����(�Ǵ� �ּ�), ��������(�Ǵ� �����))<br />
														<br /> 4. �����޴� ���� �������� ���� �� �̿�Ⱓ<br />
														<br /> - ��ȥ�߰����� ���� 5�� �Ǵ� �������� ���� �� Żȸ�� ��û�� ������ ����.�̿��մϴ�.<br />
														- ��ȥȸ�� ������ ��� ���������� ���� ȸ�� ���� ��ħ�� ���� ���������� �����մϴ�.<br /> -
														��, ������ ������ ���ؼ��� �Ʒ��� ������ ����� �Ⱓ ���� �����մϴ�.<br />
														<br /> ��. ȸ�� ���� ��ħ�� ���� �������� ����<br />
														<br /> -�������� ���� �� ȸ��Ż�� ��û��� <br /> ���� ���� : ���� �̿� ���� <br />
														���� �Ⱓ : ����� ȸ�� Ż���Ϻ��� 2�� <br /> ���� �׸� : ���̵�, �̸�, �ֹι�ȣ ���ڸ�,
														�̸��� <br />
														<br /> -ä�뿡 ���� �Ի����� ��� <br /> ���� ���� : ���ä���� ���� ���� <br />
														�����Ⱓ : �������� ������ ��û�ϱ� ������<br />
														<br /> ��. ���ù��ɿ� ���� �������� ���� <br />
														<br /> ���, ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� �� ��������� ������ ���Ͽ� ������ �ʿ䰡
														�ִ� ��� ȸ��� ������ɿ��� ���� ������ �Ⱓ ���� ȸ�������� �����մϴ�. �� ��� ȸ��� �����ϴ�
														������ �� ������ �������θ� �̿��ϸ� �����Ⱓ�� �Ʒ��� �����ϴ�.<br />
														<br /> - ��� �Ǵ� û��öȸ � ���� ��� <br /> ���� ���� : ���ڻ�ŷ� �����
														�Һ��ں�ȣ�� ���� ���� <br /> ���� �Ⱓ : 5�� <br />
														<br /> - ��ݰ��� �� ��ȭ ���� ���޿� ���� ���<br /> ���� ���� : ���ڻ�ŷ� �����
														�Һ��ں�ȣ�� ���� ���� <br /> ���� �Ⱓ : 5�� <br />
														<br /> - ���ڱ��� �ŷ��� ���� ��� <br /> ���� ���� : ���ڱ����ŷ��� <br /> ����
														�Ⱓ : 5�� <br />
														<br /> - �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ��� <br /> ���� ���� : ���ڻ�ŷ� �����
														�Һ��ں�ȣ�� ���� ���� <br /> ���� �Ⱓ : 3�� <br />
														<br /> - ���� Ȯ�ο� ���� ��� <br /> ���� ���� : ������� �̿����� �� ������ȣ �
														���� ���� <br /> ���� �Ⱓ : 6���� <br />
														<br /> - ������Ʈ �湮��� <br /> ���� ���� : ��ź�к�ȣ�� <br /> ���� �Ⱓ :
														3����<br />
														<br /> 5. ���� �ȳ���� : SMS, Email, ��ȭ <br />
														<br />
													</div>
													<label><input type="checkbox" name="r_agree2"
														value="Y"
														onclick="agree_click('r_agree_all','r_agree1','r_agree2',2);">
															������ Ȱ�뿡 ����</label>
												</div>
											</div></td>
									</tr>
									<tr>
										<td><a href="javascript:check_right_slide();"><div
													class="submit_bt">
													<font style="font-size: 18px;">�������û</font>
												</div></a></td>
									</tr>
								</tbody>
							</table>
					</form>
					<a href="javascript:agree_view(1);" class="btn-close">�ݱ�</a>
				</div>
			</li>
			<li class="simple"><a href="javascript:ViewSimpleAppointment();">�����㿹��</a></li>
			<li class="event"><a href="javascript:agree_view(0);">���ǵ����û</a></li>
			<li class="tel"><a href="javascript:main_consult_popup_view();">����
					�����ȭ 1577-8333</a></li>
			<li class="top"><a href="javascript:scroll_top();">������</a></li>
		</ul>
	</div>

</body>
</html>