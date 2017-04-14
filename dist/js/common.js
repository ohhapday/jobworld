$(function(){

	$('#gnb > ul > li').mouseover(function(){
		$(this).addClass('on');
		$(this).siblings('li').removeClass('on')
	});

	$('.wrap_layerpop .btn_close').click(function(){
		$('.wrap_layerpop').hide();
	});

	clickev();
});

function clickev(){
	$('.box_chkt .txt_in .tit_top button').click(function(){
		$(this).toggleClass('on');
		$(this).parent().parent().siblings('.tes').toggleClass('on');
	});

	$('.bx_chk_list li button').click(function(){
		$(this).toggleClass('on');
	});

	$('.area_profile .ic').click(function(){
		$('.area_not').toggleClass('on');
	});

	$('.wrap_cont.viewall .box_searchtc .area_inp > button').click(function(){
		$(this).hide();
		$('.wrap_cont.viewall .box_searchtc .area_inp input').val('');
	});

	$('.listpo li div .btn_close').click(function(){
		$(this).parent().parent('li').remove();
	});

}
