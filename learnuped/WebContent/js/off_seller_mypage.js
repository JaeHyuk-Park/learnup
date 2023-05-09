//  각 상품 이미지 5장 슬라이드 기능영역
$(function(){        
    var slideCount = $('.slider1 ul li').length;
    var slideWidth = $('.slider1 ul li').width();
    var slideHeight = $('.slider1 ul li').height();
    var sliderUlWidth = slideCount * slideWidth;
    
    $('.slider1').css({ width: slideWidth, height: slideHeight });
    
    $('.slider1 ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });
    
    $('.slider1 ul li:last-child').prependTo('slider1 ul');

    function moveLeft(a) {
        var slideWidth1 = $(a+' ul li').width();
        $(a +' ul').stop().animate({
            left: + slideWidth1
        }, 500, function () {
            $(a + ' ul li:last-child').prependTo(a+' ul');
            $(a + ' ul').css('left', '');
        });
    };

    function moveRight(a) {
        var slideWidth1 = $(a+' ul li').width();
        $(a +' ul').stop().animate({
            left: - slideWidth1
        }, 500, function () {
            $(a + ' ul li:first-child').appendTo(a+' ul');
            $(a + ' ul').css('left','');
        });
    };

    //버튼 보이기 안보이기
    $(".control_next").hide();
    $(".control_prev").hide();

    //호버기능
    $(".imgSection").children().hover(function () { 
        var hover_in = "#"+$(this).closest('div').attr('id');


        $(this).css("scale","calc(1.05)")
        $(this).css("transition","all ease 1s")
        $(this).css("transform","translate(0px, -10px)")

        $(this).children(".control_next").show(function () {
            var hover_in = "#"+$(this).closest('div').attr('id');
            $(hover_in).children(".control_next").stop().click(function () {
                moveRight(hover_in);
            });
        });

        $(this).children(".control_prev").show(function()
        {
            var hover_in = "#"+$(this).closest('div').attr('id');
            $(hover_in).children(".control_prev").stop().click(function () {
                moveLeft(hover_in);
            });
        });  

            
        }, function() {
            $(this).css("scale","calc(1)","z-index","1")
            $(this).css("transform","translate(0px, 0px)")
            $(this).css("transition","all ease 1s")
            $(this).children(".control_next").hide();
            $(this).children(".control_prev").hide();
        }
    );	 
});


$(function($){
		
    $("#datepicker").datepicker({
        changeMonth:true,
        changeYear:true,
        buttonImageOnly:true,
        dateFormat: 'yy-mm-dd',
        showOtherMonths: true,
        selectOtherMonths: true,
        showMonthAfterYear: true,
        dayNamesMin: ['일','월', '화', '수', '목', '금', '토'],
        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        monthNames: ['년 1월','년 2월','년 3월','년 4월','년 5월','년 6월','년 7월','년 8월','년 9월','년 10월','년 11월','년 12월'],
        nextText: '다음 달',
        prevText: '이전 달',
    });
});


$(function(){
	$("#time1").hide();
	
	$("#timepicker1").focusin(function(){
		$("#time1").fadeIn();
	})
	$("#timepicker1").focusout(function(){
		$("#time1").fadeOut();
	})
});

$(function(){
	$("#time2").hide();
	
	$("#timepicker2").focusin(function(){
		$("#time2").fadeIn();
	})
	$("#timepicker2").focusout(function(){
		$("#time2").fadeOut();
	})
});

$(function(){
	$("#time3").hide();
	
	$("#timepicker3").focusin(function(){
		$("#time3").fadeIn();
	})
	$("#timepicker3").focusout(function(){
		$("#time3").fadeOut();
	})
});

$(function(){
	$("#time4").hide();
	
	$("#timepicker4").focusin(function(){
		$("#time4").fadeIn();
	})
	$("#timepicker4").focusout(function(){
		$("#time4").fadeOut();
	})
});


$(document).ready(function(){
	 $("#popup").fadeOut();
	
    $("#contents").click(function(){
        $("#popup").fadeIn();
    });
    $("#closebtn").click(function(){
        $("#popup").fadeOut();
    });
});

$(document).ready(function(){
	 $("#popup").fadeOut();
	
   $("#contents1").click(function(){
       $("#popup").fadeIn();
   });
   $("#closebtn").click(function(){
       $("#popup").fadeOut();
   });
});