$(function()
    {   
        //홈
        $(".css-1-1").mouseover(function()
        {
            $(".css-1-1-2").css("background-color","#ffd400")
    
        });
        $(".css-1-1").mouseout(function()
        {
            $(".css-1-1-2").css("background-color","white")
    
        });
        //장소 서비스 리스트
        $(".css-1-2").mouseover(function()
        {
            $(".css-1-2-2-1").css("background-color","#84c6ff")
    
        });
        $(".css-1-2").mouseout(function()
        {
            $(".css-1-2-2-1").css("background-color","white")
    
        });
    });
    
    // 탭바 스크립트
    $(document).ready(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})
    })
    // 탭바스크립트


    //찜
    //heart 좋아요 클릭시! 하트 뿅
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




/*상단메뉴기능 영역*/
$(function(){
	$("#tm5").mouseenter(function(){
		$("#tm5").css('background-color', '#8041D9');
		$("#tm5").css('width', '110px');
		$("#tm5").css('height', '40px');
		$("#tm5").css('border-radius', '5px');
	})
});
$(function(){
	$("#tm5").mouseleave(function(){
		$("#tm5").css('background-color', '#D1B2FF');
	})
});

$(function(){
	$("#tm6").mouseenter(function(){
		$("#tm6").css('background-color', '#D5D5D5');
		$("#tm6").css('width', '110px');
		$("#tm6").css('height', '40px');
		$("#tm6").css('border-radius', '5px');
	})
});
$(function(){
	$("#tm6").mouseleave(function(){
		$("#tm6").css('background-color', '#FFFFFF');
	})
});

$(function(){
	$("#tm7").mouseenter(function(){
		$("#tm7").css('background-color', '#D5D5D5');
		$("#tm7").css('width', '110px');
		$("#tm7").css('height', '40px');
		$("#tm7").css('border-radius', '5px');
	})
});
$(function(){
	$("#tm7").mouseleave(function(){
		$("#tm7").css('background-color', '#FFFFFF');
	})
});

