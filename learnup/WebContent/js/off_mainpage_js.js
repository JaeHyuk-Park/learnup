
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

<<<<<<< HEAD
$(function(){
//  이미지 클릭시 해당 이미지 모달
    $(".imgC").click(function(){
        $(".modal").show();
        // 해당 이미지 가겨오기
        var imgSrc = $(this).children("img").attr("src");
        var imgAlt = $(this).children("img").attr("alt");
        $(".modalBox img").attr("src", imgSrc);
        $(".modalBox img").attr("alt", imgAlt);
        
        // 해당 이미지 텍스트 가져오기
        // var imgTit =  $(this).children("p").text();
        // $(".modalBox p").text(imgTit);
        
   // 해당 이미지에 alt값을 가져와 제목으로
        //$(".modalBox p").text(imgAlt);
    });
    
    //.modal안에 button을 클릭하면 .modal닫기
    $(".modal button").click(function(){
        $(".modal").hide();
    });
    
    //.modal밖에 클릭시 닫힘
    $(".modal").click(function (e) {
	    if (e.target.className != "modal") {
	      return false;
	    } else {
	      $(".modal").hide();
	    }
 	});
});


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
    $(".product_image").children().hover(function () { 
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



=======
>>>>>>> branch 'woo' of https://github.com/JaeHyuk-Park/learnup.git
