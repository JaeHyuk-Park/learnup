/*placeholder 애니메이션*/
var phrases = [
  "배우고싶은 강의를 검색해주세요.",
  "보컬 트레이닝",
  "필라테스",
  "요리교실",
  "메이크업"
];
var currentPhrase = 0;
var timeOut;
var txtLen = phrases[currentPhrase].length;
var char = 0;
$('.main-search').attr('placeholder', '');

function typeIt() {
    var humanize = Math.round(Math.random() * (200 - 30)) + 30;
    timeOut = setTimeout(function () {
        char++;
        var type = phrases[currentPhrase].substring(0, char);
        var placeholder = type + '|';
        $('.main-search').attr('placeholder', placeholder);

        if (char == txtLen) {
            setTimeout(function() {
                clearInterval(interval);
                interval = setInterval(erase, 50);
            }, 1000);
        } else {
            typeIt();
        }
    }, humanize);
}

var interval;
function erase() {
    var placeholder = $('.main-search').attr('placeholder');
    var len = placeholder.length;

    if (len > 1) {
        var newPlaceholder = placeholder.substring(0, len - 2) + '|';
        $('.main-search').attr('placeholder', newPlaceholder);
    } else {
        clearInterval(interval);
        currentPhrase++;
        if (currentPhrase >= phrases.length) {
            currentPhrase = 0;
        }
        txtLen = phrases[currentPhrase].length;
        char = 0;
        setTimeout(typeIt, 1000);
    }
}
typeIt();

/*배너 슬라이드*/
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