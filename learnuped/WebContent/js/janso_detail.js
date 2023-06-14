$(document).ready(function(){
	
var datetsp = 0;
console.log(datetsp);
$('#myForm').submit(function(event) {
    event.preventDefault(); // 기본 제출 동작 막기
  
   var selectedDate = $('#datepicker1').val(); // 선택된 날짜 필드의 id를 사용하여 값을 가져옵니다.
    if (!selectedDate) {
      alert("날짜를 선택해야 합니다.");
      return; // 폼 제출 중지
    }
	
	 // 선택된 시간 가져오기
  var selectedTime = $('.timepicker').val();

  // 시간이 선택되지 않았을 경우 경고 표시 및 폼 제출 중지
  if (!selectedTime) {
    alert("시간을 선택해야 합니다.");
    return;
  }
  
   alert("결제가 완료되었습니다.");
  $(this).unbind('submit').submit(); // 이 줄의 주석을 해제하여 폼 제출 진행
  
});
 
var time1s =  time1 + ":00";
var time2s =  time2 + ":00";
var time3s =  time3 *60;


$('.timepicker').timepicker({
    timeFormat: 'H:mm',  // 24시간 형식으로 시간 표시 (예: 10:30)
    interval: time3s,
    minTime: time1s,  // 최소 시간 설정
    maxTime: time2s,  // 최대 시간 설정
    startTime: time1s,
    step: time3s, 
     disableTimeRanges: [
            ['3:00','6:00'],
        ],
});
	
	
//달력부	
const str = holiday;
var array = new Array();
var arraybuy = new Array();
// 쉼표(콤마)로 구분된 문자열을, 배열로 분리
array = str.split(',');

arraybuy = articleList;
var myDateCombined = ''; // 결과를 저장할 빈 문자열

for (var i = 0; i < arraybuy.length; i++) {
  myDateCombined += arraybuy[i].my_date; // 각 요소의 my_date 값을 빈 문자열에 추가
}
console.log(myDateCombined); // 10개 요소의 my_date 값이 합쳐진 문자열 출력


var array2 = new Array();
for (i = 0; i < array.length; i++)
{
	if(array[i] == '월')
	{
		array2.push(1);
		
	}
	else if(array[i] == '화')
	{
		array2.push(2);
		
	}
	else if(array[i] == '수')
	{
		array2.push(3);
		
	}
	else if(array[i] == '목')
	{
		array2.push(4);
		
	}
	else if(array[i] == '금')
	{
		array2.push(5);
		
	}
	else if(array[i] == '토')
	{
		array2.push(6);

	}
	else if(array[i] == '일')
	{
		array2.push(0);
		
	}
	else if(array[i] == '휴일없음')
	{
		
	}
	
	
}

//두개짜리 제어 연결된거 만들어주는 함수

var disabledDates = myDateCombined // 선택한 날짜를 저장할 변수
var disabledDays = array2; // 비활성화할 특정 요일 (0: 일요일, 1: 월요일, ..., 6: 토요일)	
	  $("#datepicker1").datepicker({
	    language: 'ko',
	    dateFormat: 'yyyy-mm-dd', // 날짜 형식 설정
	    minDate: new Date(),
	    autoClose: true,
	    inline: true,
	    onRenderCell: function(date, cellType) {
	      var formattedDate = date.toLocaleDateString('en-CA', { timeZone: 'Asia/Seoul' }).replace(/\s/g, '').replace(/\./g, '-').slice(0, 10);
	      if (cellType === 'day') {
	        // 휴무일 비활성화
	        if (disabledDates.includes(formattedDate)) {
	          return {
	            disabled: true,
	          };
	        }
	        // 휴무일 설정
	        if (disabledDays.indexOf(date.getDay()) !== -1) {
	          return {
	            disabled: true,
	          };
	        }
	      }
	    }	
  });  
});



//달력

//오토슬라이드
$(document).ready(function(){

	$(function(){        
	    var slideCount = $('.slider ul li').length;
	    var slideWidth = $('.slider ul li').width();
	    var slideHeight = $('.slider ul li').height();
	    var sliderUlWidth = slideCount * slideWidth;
	    
	    $('.slider').css({ width: slideWidth, height: slideHeight });
	    
	    $('.slider ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });
	    
	    $('.slider ul li:last-child').prependTo('slider ul');
	
	    function moveLeft() {
	        var slideWidth1 = $('.slider ul li').width();
	        $('.slider ul').stop().animate({
	            left: + slideWidth1
	        }, 500, function () {
	            $('.slider ul li:last-child').prependTo('.slider ul');
	            $('.slider ul').css('left', '');
	        });
	    };
	
	    function moveRight() {
	        var slideWidth1 = $('.slider ul li').width();
	        $('.slider ul').stop().animate({
	            left: - slideWidth1
	        }, 500, function () {
	            $('.slider ul li:first-child').appendTo('.slider ul');
	            $('.slider ul').css('left','');
	        });
	    };
	    
	    $(".control_next").stop().click(function () {
	             moveRight();
	     });
	     
	      $(".control_prev").stop().click(function () {
	                moveLeft();
	      });
	 
	});

});

//움지이는 바 클릭시 이동

$(document).ready(function(){

	var height = $("#intro1").offset(); 
	var height1 = $("#intro2").offset();  
	var height2 = $("#intro3").offset(); 
	var height3 = $("#intro4").offset(); 
	var height4 = $("#intro5").offset(); 
	var height5 = $("#intro6").offset(); 

	$("#la").click(function()
	{
		$("html, body").animate({scrollTop: height.top - 210 }, 300);
	});
	
	$("#lb").click(function()
	{
		$("html, body").animate({scrollTop: height1.top - 210 }, 300);
	});
	
	$("#lc").click(function()
	{
		$("html, body").animate({scrollTop: height2.top - 210 }, 300);
	});
	
	$("#ld").click(function()
	{
		$("html, body").animate({scrollTop: height3.top - 210 }, 300);
	});
	
	$("#le").click(function()
	{
		$("html, body").animate({scrollTop: height4.top - 210 }, 300);
	});
	
	$("#lf").click(function()
	{
		$("html, body").animate({scrollTop: height5.top - 210 }, 300);
	});

});	



/*결제 후 바로 예약확정 빨간불 영역 */
$(document).ready(function() {
	setInterval(function() {
		$('h3#righth3').toggleClass('red');
	}, 700);
});


//다음 주소 api
$(document).ready(function() {
	
	console.log(chDate);
	console.log(rooms);
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch(chDate, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+rooms +'</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    



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
  
  
$(document).ready(function() {
  var persons;
  
$('#input-number-decrement, #input-number-increment').on('click', function() {
    persons = $('#person').val(); 
     
    var pprice =  personnel_price.replace(",", "")*1;  
    var rprice =  room_price.replace(",", "")*1;  
    var totalPriced =  rprice + pprice * persons;

	 var lastobj = $("#ppp");
	 
    $("#priceto").empty();
    $('#priceto').append(totalPriced.toLocaleString());  //컴마생성까지
    lastobj.val(totalPriced);
  });
 

});

/* 예약시간 체크*/  
/*  

 $(document).ready(function() {
    function InputNumber2(element) {
      this.$el = $(element);
      this.$input = this.$el.find("[type=text]");
      this.$inc = this.$el.find("[data-increment2]");
      this.$dec = this.$el.find("[data-decrement2]");
      this.min = this.$el.attr("min") || false;
      this.max = this.$el.attr("max") || false;
      this.init();

    }

    InputNumber2.prototype = {
      init: function () {
        this.$dec.on("click", $.proxy(this.decrement2, this));
        this.$inc.on("click", $.proxy(this.increment2, this));
      },

      increment2: function (e) {
        var value = this.$input[0].value;
        value++;
        if (!this.max || value <= this.max) {
          this.$input[0].value = value + (time3*1)-1;
        }
      },

      decrement2: function (e) {
        var value = this.$input[0].value;
        value--;
        if (!this.min || value >= this.min) {
          this.$input[0].value = value - (time3*1)+1;
        }
      }
    };

    $.fn.inputNumber2 = function (option) {
      return this.each(function () {
        var $this = $(this),
          data = $this.data("inputNumber2");

        if (!data) {
          $this.data("inputNumber2", (data = new InputNumber2(this)));
        }
      });
    };

    $.fn.inputNumber2.Constructor = InputNumber2;

    $(".input-number2").inputNumber2();
  });
  
  
$(document).ready(function() {
   var pprice =  personnel_price.replace(",", "")*1;  
    var rprice =  room_price.replace(",", "")*1;  
    var totalPriced =  rprice + pprice * persons;
    
$('#input-number-decrement2, #input-number-increment2').on('click', function() {
    timez = $('#timez').val(); 
     
    

    $("#priceto").empty();
    $('#priceto').append(totalPriced);
  });
 
});
*/
});

$(document).ready(function(){
var nick =nickname;
var roomnssd = roomsnums;

console.log(roomnssd);
console.log(nick);
	
//리뷰 뷰
$.ajax({
  url: "janso_detailreview.learnup.com",
  type: "GET",
  data: {
    nick: nick,
    roomnssd: roomnssd
  }, // 전송할 데이터 설정
  success: function(response) {
    // 요청이 성공한 경우에 대한 처리
    // response 변수에 응답으로 받은 내용이 들어 있습니다.
    // 여기서는 해당 내용을 원하는 방식으로 처리할 수 있습니다.
    $("#review_box").html(response);
  
  },
  error: function(xhr, status, error) {
    // 요청이 실패한 경우에 대한 처리
  }
});

});

//리뷰 인설트 
$(document).ready(function(){
var nick1 =nickname;
var roomnssd1 = roomsnums;


	
	
$.ajax({
  url: "janso_detailreviewin.learnup.com",
  type: "GET",
  data: {
    nick1: nick1,
    roomnssd1: roomnssd1
  }, // 전송할 데이터 설정
  success: function(response) {
    // 요청이 성공한 경우에 대한 처리
    // response 변수에 응답으로 받은 내용이 들어 있습니다.
    // 여기서는 해당 내용을 원하는 방식으로 처리할 수 있습니다.
    $("#review_box2").html(response);
  
  },
  error: function(xhr, status, error) {
    // 요청이 실패한 경우에 대한 처리
  }
});

});



