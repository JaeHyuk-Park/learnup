$(document).ready(function(){


//제이쿼리 스크립트 전체선택 해제
$(function(){
    var tt = 0;
    var tb = 0;
// 카테고리   늘어라  
     $('#ch').click(function()
     {   
        //[prop]: 속성 상태
       var ischecked = $('#ch').prop("checked");
        
        if ( ischecked == true) {
          $('input:checkbox[name=ch]').prop("checked",true);
          $('input:checkbox[name=keworld]').prop("checked",true);
          $('input:checkbox[name=keworld1]').prop("checked",true);
          $('input:checkbox[name=keworld2]').prop("checked",true);
          $('input:checkbox[name=keworld3]').prop("checked",true);
          $('input:checkbox[name=keworld4]').prop("checked",true);
          $('input:checkbox[name=keworld5]').prop("checked",true);
          $('input:checkbox[name=keworld6]').prop("checked",true);
          $('input:checkbox[name=keworld7]').prop("checked",true);
          $("#to1").show();
            tt = 1
            $('#chbu').html("▲")
        }
        else
        {
          $('input:checkbox[name=ch]').prop("checked",false);
          tt = 0;
        }
     });
     
       $('#ch2').click(function()
     {   
        //[prop]: 속성 상태
       var ischecked = $('#ch2').prop("checked");
        
        if ( ischecked == true) {
          $('input:checkbox[name=cho2]').prop("checked",true);
          $("#to2").show();
            tt = 1
            $('#chbu2').html("▲")
        }
        else
        {
          $('input:checkbox[name=cho2]').prop("checked",false);
          tt = 0;
        }
     });
     
     
     
     
    $("#to1").hide();
    $("#chbu").click(function()
    {
        if(tt == 0)
        {
            $('#chbu').html("▲")
            $("#to1").show();
            tt = 1;
        }
        else
        { 
            $('#chbu').html("▼")
            $("#to1").hide();
            tt = 0;
           
        }
       
    });
    
    
    
// 지역별 늘어라
    $('#ch2').click(function()
     {   
        //[prop]: 속성 상태
       var ischecked = $('#ch').prop("checked");
        
        if ( ischecked == true) {
          $('input:checkbox[name=cho]').prop("checked",true);
          $("#to1").show();
            tt = 1
            $('#chbu2').html("▲")
        }
        else
        {
          $('input:checkbox[name=cho]').prop("checked",false);
          tt = 0;
        }
     });

    var tb = 0;
    $("#to2").hide();
    $("#chbu2").click(function()
    {
        if(tb == 0)
        {
			$('#chbu2').html("▲")
            $("#to2").show();
            tb = 1;
        }
        else
        {
			 $('#chbu2').html("▼")
            $("#to2").hide();
            tb = 0;
        }
       
    });
});

// 체크박스 재출
const checkboxes = document.querySelectorAll('.checkbox_1'); 
checkboxes.forEach(checkbox => {
  checkbox.addEventListener('change', (event) => {
    
       // document.getElementById('frm').submit();
     
     
  });
});

 

//
//인원수 체크
  $(document).ready(function() {
    function InputNumber(element) {
      this.$el = $(element);
      this.$input = this.$el.find("[type=text]");
      this.$inc = this.$el.find("[data-increment]");
      this.$dec = this.$el.find("[data-decrement]");
      this.min = this.$el.attr("min") || false;
      this.max = this.$el.attr("max") || false;
      this.init();

    }

    InputNumber.prototype = {
      init: function () {
        this.$dec.on("click", $.proxy(this.decrement, this));
        this.$inc.on("click", $.proxy(this.increment, this));
      },

      increment: function (e) {
        var value = this.$input[0].value;
        value++;
        console.log(value, this.max);
        if (!this.max || value <= this.max) {
          this.$input[0].value = value++;
        }
      },

      decrement: function (e) {
        var value = this.$input[0].value;
        value--;
        if (!this.min || value >= this.min) {
          this.$input[0].value = value;
        }
      }
    };

    $.fn.inputNumber = function (option) {
      return this.each(function () {
        var $this = $(this),
          data = $this.data("inputNumber");

        if (!data) {
          $this.data("inputNumber", (data = new InputNumber(this)));
        }
      });
    };

    $.fn.inputNumber.Constructor = InputNumber;

    $(".input-number").inputNumber();
  });
  
  
  
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

  });
