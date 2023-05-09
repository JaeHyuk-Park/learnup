$(document).ready(function() {
	$('#goahead').on('click', '.goelse', function() {
		var gofirst = $('.gofirst');
		var clicked = $(this);

		// gofirst를 클릭된 요소의 위치로 이동
		gofirst.animate({
			top : clicked.position().top
		}, 200);

		// gofirst와 clicked의 클래스를 바꿔줌
		gofirst.removeClass('gofirst').addClass('goelse');
		clicked.removeClass('goelse').addClass('gofirst');
	});
	
	$('#goahead').on('click', '.goelse, .gofirst', function() {
		  var id = $(this).attr('onclick').match(/#\w+/)[0]; // 클릭된 요소의 onclick 속성에서 id 값을 추출
		  var target = $(id); // 추출한 id 값을 가진 요소 선택
		  
		  scrollToTarget(target);
		});

	
	var goaheadTop = $('#goahead').offset().top - 170;
	  $(window).scroll(function() {
	    var currentScroll = $(window).scrollTop();
	    if (currentScroll >= goaheadTop) {
	      $('#goahead').css({
	        position: 'fixed',
	        top: '150px',
	        width:'732px'
	      });
	    } else {
	      $('#goahead').css({
	        position: 'relative',
	        top:'0px'
	      });
	    }
	  });
	  
	  var sectionTop = $('section').offset().top;
		var sectionBottom = sectionTop + $('section').height() - $('#vers').height()-220;
		var versWidth = $('#vers').width();
		  
		$(window).scroll(function() {
		  var scrollTop = $(window).scrollTop();
		    
		  if (scrollTop > sectionTop && scrollTop < sectionBottom) {
		    $('#vers').css({
		      'position': 'fixed',
		      'left': 'auto',
		    });
		  } else if (scrollTop >= sectionBottom) {
		    $('#vers').css({
		      'position': 'absolute',
		      'left': 'auto',
		    });
		  }
		});	  

	var $likeBtn = $('.icon.heart').parent().parent();

	$likeBtn.click(function() {
		$likeBtn.toggleClass('acti');

		if ($likeBtn.hasClass('acti')) {
			$(this).find('img').attr({
				'src' : 'image/heart2.png',
				alt : '찜하기 완료'
			});

		} else {
			$(this).find('i').removeClass('fas').addClass('far');
			$(this).find('img').attr({
				'src' : 'image/heart1.png',
				alt : "찜하기"
			})
		}
	});
	
	
	
	
});

function scrollToTarget(target) {
	$(window).scrollTop($(target).offset().top - 350);
}