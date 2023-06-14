
            
$(document).ready(function(){
  // 탭바 스크립트

 
//우편번호
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}
})



//탭바 스크립트
$(document).ready(function(){
	 var tab_id;
	 
	 $('ul.tabs li').click(function(){
 	 tab_id = $(this).attr('data-tab');
	  
	    $('ul.tabs li').removeClass('current');
	    $('.tab-content').removeClass('current');
	
	    $(this).addClass('current');
	    $("#"+tab_id).addClass('current');
  	 })

	
	var height = $("#eachtt").offset(); //강의실제목
	var height1 = $("#eachtitle1").offset();  //공간유형
	var height2 = $("#eachtitle2").offset(); //공간면적
	var height3 = $("#eachtitle3").offset(); //기본수용인원
	var height4 = $("#eachtitle4").offset(); //최대수용인원
	var height5 = $("#eachtitle5").offset(); //시설물선택 필수사항 아님
	var height6 = $("#eachtitle6").offset(); //주소
	var height7 = $("#eachtitle7").offset(); //오픈 마감
	var height8 = $("#eachtitle8").offset(); //예약시간 선택
	var height9 = $("#eachtitle9").offset(); //공간소개
	var height10 = $("#eachtitle10").offset(); //유의사항
	
	
	
	

	
	$('#daum').click(function(){
		//탭1
		var title =  $('input[name=roomtitle]').val(); //강의실 제목
		var sel0 =  $('select[name=select-box0]').val(); //공간유형
		var title1 =  $('input[name=spacearea]').val();  //공간면적
		var sel1 =  $('select[name=select-box1]').val(); //기본수용인원
		var sel2 =  $('select[name=select-box2]').val(); //최대수용인원
		var sel3 =  $('select[name=select-box3]').val(); //시설물선택 필수사항 아님
		var title3 =  $('input[name=area1]').val();  //주소
		var title4 =  $('input[name=area2]').val();  //주소
		var title5 =  $('input[name=address2]').val();  //주소
		var sel4 =  $('select[name=select-box4]').val(); //오픈시간
		var sel5 =  $('select[name=select-box5]').val(); //마감시간
		var sel6 =  $('select[name=select-box6]').val(); //예약시간
		var title6 =  $('#writes').val(); //공간소개
		var title7 =  $('#writes2').val(); //유의사항
		
		
		if(title == "") //강의실 제목
		{
			$('input[name=roomtitle]').on("propertychange change paste input",function()
			{
				$("#roomtitle_check").html('');
			});
			if(title == "")
			{
				$("#roomtitle_check").html('강의실 제목을 입력해주세요.');
            	$("#roomtitle_check").css("color","red");
			}
			
			$("html, body").animate({scrollTop: height.top - 170 }, 300);
			
		}
		else if(sel0 == "") //공간유형
		{
			$('select[name=select-box0]').on("propertychange change paste input",function()
			{
				$("#select-box0_check").html('');
			});
				$("#select-box0_check").html('공간유형을 선택하여 주세요.');
            	$("#select-box0_check").css("color","red");
            		
			
			$("html, body").animate({scrollTop: height1.top - 170 }, 400);
		}
		else if(title1 == "") //공간면적
		{
			$('input[name=spacearea]').on("propertychange change paste input",function()
			{
				$("#spacearea_check").html('');
			});
			if(title1 == "")
			{
				$("#spacearea_check").html('공간면적을 입력해주세요.');
            	$("#spacearea_check").css("color","red");
			}
			
			$("html, body").animate({scrollTop: height2.top - 170 }, 300);
			
		}
		else if(sel1 == "") //기본수용인원
		{
			$('select[name=select-box1]').on("propertychange change paste input",function()
			{
				$("#select-box1_check").html('');
			});
				$("#select-box1_check").html('기본수용인원을 선택하여 주세요.');
            	$("#select-box1_check").css("color","red");
            		
			
			$("html, body").animate({scrollTop: height3.top - 170 }, 400);
		}
		else if(sel2 == "") //최대수용인원
		{
			$('select[name=select-box2]').on("propertychange change paste input",function()
			{
				$("#select-box2_check").html('');
			});
				$("#select-box2_check").html('최대수용인원을 선택하여 주세요.');
            	$("#select-box2_check").css("color","red");
            		
			
			$("html, body").animate({scrollTop: height4.top - 170 }, 400);
		}
		else if(title3 == "" || title4 == "" || title5 == "" ) //주소선택
		{
			$('input[name=address2]').on("propertychange change paste input",function()
			{
				$("#address_check").html('');
			});
				$("#address_check").html('주소를 입력하세요.');
            	$("#address_check").css("color","red");
            		
			
			$("html, body").animate({scrollTop: height6.top - 170 }, 400);
		}
		else if(sel4 == "" ||  sel5 == "" ) //오픈마감시간
		{
			$('select[name=select-box5]').on("propertychange change paste input",function()
			{
				$("#select-box45_check").html('');
			});
				$("#select-box45_check").html('오픈마감시간을 선택하세요.');
            	$("#select-box45_check").css("color","red");
            		
			
			$("html, body").animate({scrollTop: height7.top - 170 }, 400);
		}
		else if(sel6 == "" ) //예약시간
		{
			$('select[name=select-box6]').on("propertychange change paste input",function()
			{
				$("#select-box6_check").html('');
			});
				$("#select-box6_check").html('예약시간을 선택하세요.');
            	$("#select-box6_check").css("color","red");
            		
			
			$("html, body").animate({scrollTop: height8.top - 170 }, 400);
		}
		
		else if(title6 == "" ) //공간소개
		{
			$('#writes').on("propertychange change paste input",function()
			{
				$("#write_check").html('');
			});
				$("#write_check").html('예약시간을 선택하세요.');
            	$("#write_check").css("color","red");
            		
			
			$("html, body").animate({scrollTop: height9.top - 170 }, 400);
		}
			else if(title7 == "" ) //유의사항
		{
			$('#writes2').on("propertychange change paste input",function()
			{
				$("#write2_check").html('');
			});
				$("#write2_check").html('예약시간을 선택하세요.');
            	$("#write2_check").css("color","red");
            		
			
			$("html, body").animate({scrollTop: height10.top - 170 }, 400);
		}
		
		else{
			
			$('#bsd').click(function(){
				$('ul.tabs li').removeClass('current');
				$('.tab-content').removeClass('current');
				$(this).addClass('current');
				$("#tab-2").addClass('current');	
			}).click();	
		}
		
		
	})


$('#daum2').click(function(){
	
	var height = $("#eachtitle11").offset(); //높이
	
	var title =  $('#hourprice').val(); //기본요금
	var title1 =  $('#classtime').val(); //인원1명추가당 요금
	
		if(title == "") //기본요금
		{
			$('#hourprice').on("propertychange change paste input",function()
			{
				$("#price_check").html('');
			});
			if(title == "")
			{
				$("#price_check").html('기본요금을 입력해주세요.');
            	$("#price_check").css("color","red");
			}
			
			$("html, body").animate({scrollTop: height.top - 170 }, 300);
			
		}
		else if(title1 == "") //기본요금
		{
			$('#classtime').on("propertychange change paste input",function()
			{
				$("#price_check").html('');
			});
			if(title1 == "")
			{
				$("#price_check").html('인원당 요금을 입력해주세요.');
            	$("#price_check").css("color","red");
			}
			
			$("html, body").animate({scrollTop: height.top - 170 }, 300);
			
		}else
		{
			daum1check = "tab-2";
			$('#csd').click(function(){
			$('ul.tabs li').removeClass('current');
			$('.tab-content').removeClass('current');
	
			$(this).addClass('current');
			$("#tab-3").addClass('current');
			}).click();
			
		}
		
})



});

						
$(document).ready(function(){
	// 탭바 스크립트
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');
		console.log(tab_id);
		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

	//셀렉박스 동작

	$("select").on("click" , function() {
  
  $(this).parent(".select-box").toggleClass("open");

	});

	$(document).mouseup(function (e)
	{
		var container = $(".select-box");

		if (container.has(e.target).length === 0)
		{
			container.removeClass("open");
		}
	});


	$("select").on("change" , function() {

	var selection = $(this).find("option:selected").text(),
		labelFor = $(this).attr("id"),
		label = $("[for='" + labelFor + "']");
		
	label.find(".label-desc").html(selection);
		
	});

//셀렉체크박스
  var tt = 0;
  
$('#dropatag').click(function()
{
	 if(tt == 0)
	 {
		$('#ttt').html("▲")
		tt = 1;
	 }
	 else
	 {
		$('#ttt').html("▼")
		tt = 0;
	 }
	
});

var mainse = document.querySelector('#select-box1'); //인원


mainse.onchange = function () {
    var subse = document.querySelector('#select-box2');

    var mainOption = mainse.options[mainse.selectedIndex].innerText;
    // var mainOption =  mainCity.options[mainCity.selectedIndex].value;로 해도 동일합니다. 
 		$( '#select-box2' ).empty();
          $( '#select-box2' ).append( '<option value="" class="op" hidden></option>' );
        for ( var i = mainse.value; i <= 20; i++ ) {
          $( '#select-box2' ).append( '<option value="'+i+'" class="op">' +  i+"명"+ '</option>' );
        }
}


var mainse2 = document.querySelector('#select-box4');  //오픈시간
var subse2;
mainse2.onchange = function () {
  
	subse2 = document.querySelector('#select-box5');

    var mainOption2 = mainse2.options[mainse2.selectedIndex].innerText;
    // var mainOption =  mainCity.options[mainCity.selectedIndex].value;로 해도 동일합니다. 
		$( '#select-box5' ).empty();
        for ( var i = mainse2.value; i <= 24; i++ ) {
          $( '#select-box5' ).append( '<option  value="'+i+'" class="op">' +  i+"시"+  '</option>' );
        }
}



var mainse3 = document.querySelector('#select-box5');  //마감시간

mainse3.onchange = function () {

	var times;
	var time1 =   mainse2.value;
	var time2 =   subse2.value;
	
	times =((time2) - (time1));

    // var mainOption =  mainCity.options[mainCity.selectedIndex].value;로 해도 동일합니다. 
      $( '#select-box6' ).empty();
        for ( var i = 1; i <= times; i++ ) {
          $( '#select-box6' ).append( '<option  value="'+i+'" class="op">' +  i+"시간"+  '</option>' );
        }
}





$(".dropdown dt a").on('click', function() {
$(".dropdown dd ul").slideToggle('fast');

});

$(".dropdown dd ul li a").on('click', function() {
  $(".dropdown dd ul").hide();
});

function getSelectedValue(id) {
  return $("#" + id).find("dt a span.value").html();
}

$(document).bind('click', function(e) {
  var $clicked = $(e.target);
  if (!$clicked.parents().hasClass("dropdown")) $(".dropdown dd ul").hide();
});

$('.mutliSelect input[type="checkbox"]').on('click', function() {

  var title = $(this).closest('.mutliSelect').find('input[type="checkbox"]').val(),
    title = $(this).val() + ",";

  if ($(this).is(':checked')) {
    var html = '<span title="' + title + '">' + title + '</span>';
    $('.multiSel').append(html);
    $(".hida").hide();
  } else {
    $('span[title="' + title + '"]').remove();
    var ret = $(".hida");
    $('.dropdown dt a').append(ret);

  }
  if ($('.multiSel').is(':empty')){
  $('.hida').show();
}
});

//셀렉체크박스2
  var tt2 = 0;
  
$('#dropatag2').click(function()
{
	 if(tt2 == 0)
	 {
		$('#ttt2').html("▲")
		tt2 = 1;
	 }
	 else
	 {
		$('#ttt2').html("▼")
		tt2 = 0;
	 }
	
});

$(".dropdown2 dt a").on('click', function() {
$(".dropdown2 dd ul").slideToggle('fast');

});

$(".dropdown2 dd ul li a").on('click', function() {
  $(".dropdown2 dd ul").hide();
});

function getSelectedValue(id) {
  return $("#" + id).find("dt a span.value").html();
}

$(document).bind('click', function(e) {
  var $clicked = $(e.target);
  if (!$clicked.parents().hasClass("dropdown2")) $(".dropdown2 dd ul").hide();
});

$('.mutliSelect2 input[type="checkbox"]').on('click', function() {

  var title = $(this).closest('.mutliSelect2').find('input[type="checkbox"]').val(),
    title = $(this).val() + ",";

  if ($(this).is(':checked')) {
    var html = '<span title="' + title + '">' + title + '</span>';
    $('.multiSel2').append(html);
    $(".hida2").hide();
  } else {
    $('span[title="' + title + '"]').remove();
    var ret = $(".hida2");
    $('.dropdown2 dt a').append(ret);

  }
  if ($('.multiSel2').is(':empty')){
  $('.hida2').show();
}
});


//스크립트 끝부분
})

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}










/*공간소개 글자수 카운트 기능영역*/
function janso_intro(input) {
  var charCount = input.value.length;
  var maxChars = input.getAttribute("maxlength");
  document.getElementById("janso_intro_count").innerHTML = "(" + charCount + "/" + maxChars + ")";
}

/*유의사항 글자수 카운트 기능영역*/
function janso_notice(input) {
  var charCount = input.value.length;
  var maxChars = input.getAttribute("maxlength");
  document.getElementById("janso_notice_count").innerHTML = "(" + charCount + "/" + maxChars + ")";
}


/*커버 이미지 미리보기 기능영역*/
$(document).ready(function() {
  // 이미지 업로드 시
  $('.coverimg').change(function() {
    // 해당 input의 부모 요소인 div를 찾음
    var container = $(this).parent();
    // 이미지 파일이 선택되었을 때
    if (this.files && this.files[0]) {
      // FileReader 객체 생성
      var reader = new FileReader();
      // 파일 읽기가 완료되면 실행될 콜백 함수 정의
      reader.onload = function(e) {
        // 이미지를 보여줄 img 태그 생성
        var img = $('<img>').attr({
          'class': 'upload_img',
          'data-index': container.index()
        }).attr('src', e.target.result);
        // 해당 div에 이미지 삽입
        container.find('p').html(img);
        // 삭제 버튼의 dn 클래스 제거
        container.find('.btn_del').removeClass('dn');
      }
      // 파일 읽기 실행
      reader.readAsDataURL(this.files[0]);
    }
  });
  // 이미지 삭제 버튼 클릭 시
  $('.btn_del').click(function() {
    // 해당 input의 부모 요소인 div를 찾음
    var container = $(this).parent();
    // 해당 div의 p 태그에 있는 이미지 제거
    container.find('p').empty();
    // 해당 input의 값 초기화
    container.find('.coverimg').val('');
    // 삭제 버튼의 dn 클래스 추가
    container.find('.btn_del').addClass('dn');
  });
});


/* 커버 이미지 파일 업로드시 우측 미리보기 이미지 출력*/
$(document).ready(function() {
  $('input[name="coverimage0"]').change(function() {
    var imgPath = $(this)[0].value;
    var extn = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
    if (extn == "gif" || extn == "png" || extn == "jpg" || extn == "jpeg") {
      if (typeof(FileReader) != "undefined") {
        var image_holder = $(".imageview_image");
        image_holder.empty();
        var reader = new FileReader();
        reader.onload = function(e) {
          $("<img />", {
            "src": e.target.result,
            "class": "thumb-image"
          }).appendTo(image_holder);
        }
        image_holder.show();
        reader.readAsDataURL($(this)[0].files[0]);
      } else {
        alert("이 브라우저는 FileReader를 지원하지 않습니다.");
      }
    } else {
      alert("gif, png, jpg, jpeg 파일만 업로드 가능합니다.");
    }
  });
});

/* 커버 이미지 파일 업로드시 미리보기 텍스트 출력*/
$(document).ready(function() {
  // 강의장 제목이 변경될 때
  $('input[name=roomtitle]').on('input', function() {
    var title = $(this).val();
    $('.janso_title').text(title);
  });

  // 카테고리2가 변경될 때
  $('select[name=category2]').on('change', function() {
    var category2 = $(this).val() || $('select[name=category2] option:first').val();
    $('.class_category').text(category2 + ' · ');
  });
});



//대여료 설정 영역
/*클래스 시간 입력란에 입력값이 24보다 크면 24로 자동으로 설정*/
$(document).ready(function() {
  // 1회당 클래스 시간 입력란에 입력값이 24보다 크면 24로 자동으로 설정
  // 시간당 가격이나 최종 수강료가 입력될 때, 세자리마다 콤마를 찍는 함수 호출
  $('#hourprice, #totalprice, #classtime').on('input', function() {
    addComma($(this));
  });
});
function addComma($input) {
  var num = $input.val().replace(/[^0-9]/g, '');
  var regex = /(\d)(?=(\d{3})+(?!\d))/g;
  $input.val(num.toString().replace(regex, '$1,'));
}

/*최종 수강료 및 최종 정산금 계산*/
function calculateTotalPrice() {
  var hourPrice = parseInt($('#hourprice').val().replace(/,/g, '')); // 시간당 가격, 쉼표 제거
  var classTime = parseFloat($('#classtime').val().replace(/,/g, ''));
  var totalClassCount = parseInt($('#totalclasscount').val());
 
  var totalPrice = hourPrice + (classTime * totalClassCount);
  
  var vat = Math.round(totalPrice * 0.1); // 부가세 10%
  var commission = Math.round(totalPrice * 0.1); // 수수료 10%
  var incomeTax = Math.round((totalPrice - vat - commission) * 0.033); // 소득세 3.3%
  var finalSettlement = totalPrice - vat - incomeTax - commission; // 최종 정산금

  $('#totalprice').val(numberWithCommas(totalPrice)); // 최종 수강료에 쉼표 추가
  $('#totalprice2').val(numberWithCommas(totalPrice)); // 두번째 최종 수강료에도 계산값 자동으로 기입
  $('#tax10').val(numberWithCommas(vat)); // 부가세
  $('#fee33').val(numberWithCommas(incomeTax)); // 소득세
  $('#fee10').val(numberWithCommas(commission)); // 수수료
  $('#grandtotalprice').val(numberWithCommas(finalSettlement)); // 최종 정산금
}

function numberWithCommas(x) {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

$(document).ready(function() {

  // 클래스 횟수가 변경될 때, 선택한 값을 총 클래스 횟수 텍스트 창에 자동으로 입력
  $('input[name="count_type"], select[name="count_num"]').change(function() {
    var totalClassCount = 1; // 초기값은 1
    if ($('#multiday').is(':checked')) { // 다회차 클래스 선택 시
      totalClassCount = $('#countselect').val();
    }

    // 선택한 클래스 횟수에 따라 총 클래스 횟수 설정
    $('#totalclasscount').val(totalClassCount);
    calculateTotalPrice(); // 수강료 계산
  });

  // 시간당 가격, 1회당 클래스 시간 입력시 수강료 계산
  $('#hourprice, #classtime').keyup(function() {
    calculateTotalPrice();
    $(this).val(numberWithCommas($(this).val())); // 쉼표 추가
  });
  
    $('#totalclasscount').keyup(function() {
    calculateTotalPrice();
  });

  // 총 클래스 횟수 초기값 설정
  $('#totalclasscount').val(1);
});












