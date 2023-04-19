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