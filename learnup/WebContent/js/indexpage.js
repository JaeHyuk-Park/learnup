$(function(){
	var $likeBtn =$('.icon.heart');

	        $likeBtn.click(function(){
	        $likeBtn.toggleClass('acti');

	        if($likeBtn.hasClass('acti')){          
	        	$(this).find('img').attr({
	              'src': 'image/heart2.png',
	               alt:'찜하기 완료'
	            });
	          
	          
	        }else{
	            $(this).find('i').removeClass('fas').addClass('far');
	           $(this).find('img').attr({
	              'src': 'image/heart1.png',
	              alt:"찜하기"
	           	})
	        }
	    });

        console.clear();
        
        for (let i = 1; i <= 32; i++) {

			$("#talent-" + i).mouseover(function() {

				var a = $(this).closest('span').attr('id');
				console.log(a);

				$(this).css("scale", "calc(1.1)")
				$(this).css("transition", "all ease 1s")
				$(this).css("transform", "translate(0px, -3px)")

			});
			$("#talent-" + i).mouseleave(function() {

				$(this).css("scale", "calc(1)", "z-index", "1")
				$(this).css("transform", "translate(0px, 0px)")

			});

		}

        // 기존 버튼형 슬라이더
        $('.slider-1 > .page-btns > div').click(function(){
            var $this = $(this);
            var index = $this.index();
            
            $this.addClass('active');
            $this.siblings('.active').removeClass('active');
            
            var $slider = $this.parent().parent();
            
            var $current = $slider.find(' > .slides > div.active');
            
            var $post = $slider.find(' > .slides > div').eq(index);
            
            $current.removeClass('active');
            $post.addClass('active');
        });

        // 좌/우 버튼 추가 슬라이더
        $('.slider-1 > .side-btns > div').click(function(){
            var $this = $(this);
            var $slider = $this.closest('.slider-1');
            
            var index = $this.index();
            var isLeft = index == 0;
            
            var $current = $slider.find(' > .page-btns > div.active');
            var $post;
            
            if ( isLeft ){
                $post = $current.stop().prev();
            }
            else {
                $post = $current.stop().next();
            };
            
            if ( $post.length == 0 ){
                if ( isLeft ){
                    $post = $slider.find(' > .page-btns > div:last-child');
                }
                else {
                    $post = $slider.find(' > .page-btns > div:first-child');
                }
            };
            
            $post.click();
        });

        setInterval(function(){
            $('.slider-1 > .side-btns > div').eq(1).click();
        }, 5000);

        
	});
function scrollToTarget(target) {
  $('html, body').animate({
    scrollTop: $(target).offset().top - 200
  }, 1000);
}

    

