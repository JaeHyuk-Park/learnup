
$(function()
{        
    var slideCount = $('.slider ul li').length;
    var slideWidth = $('.slider ul li').width();
    var slideHeight = $('.slider ul li').height();
    var sliderUlWidth = slideCount * slideWidth;
    
    $('.slider').css({ width: slideWidth, height: slideHeight });
    
    $('.slider ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });
    
    $('.slider ul li:last-child').prependTo('slider ul');

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
    //$(".control_next").hide();
    //$(".control_prev").hide();

    //호버기능
    $(".product_image imgList").children().hover(function () { 
        var hover_in = "#"+$(this).closest('div').attr('id');

		    $(".box-0-1").hover(function () { 
				
			        $(this).css("scale","calc(1.1)")
			        $(this).css("transition","all ease 1s")
			        $(this).css("transform","translate(0px, -20px)")
		           
		            
		        }, function() {
		            $(this).css("scale","calc(1)","z-index","1")
		            $(this).css("transform","translate(0px, 0px)")
		            $(this).css("transition","all ease 1s")
		 
		        }
		  
		    );
       

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
          
            $(this).children(".control_next").hide();
            $(this).children(".control_prev").hide();
           
        }
  
    );
 
});





$(function(){
	$(".banner_sec2").slick({
		slide:'div',
		infinite:true,
		slidesToShow :1,
		slidesToScroll:1,
		speed:100,
		arrows:true,
		dots : true,
		autoplay: true,
		autoplaySpeed : 3000,
		pauseOnHover :true,
		vertical :false,
	})
});

/*찜하기*/
$(function(){
    var $likeBtn =$('.icon.heart');

	    $likeBtn.click(function(){
	    $likeBtn.toggleClass('active');

	    if($likeBtn.hasClass('active')){          
	       $(this).find('img').attr({
	        'src': 'image/heart2.png',
	        alt:'찜하기 완료'
	    	});
	    }else{
	        $(this).find('i').removeClass('fas').addClass('far')
	       	$(this).find('img').attr({
	          'src': 'image/heart1.png',
	          alt:"찜하기"
	      	});
	    }
    })
});

