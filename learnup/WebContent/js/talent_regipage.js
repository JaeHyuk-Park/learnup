$(document).ready(function() {
  $("#addbu1").click(function() {
    var keyword = $("input[name=keyword]").val().trim();
    if (keyword == "") {
      alert("키워드를 입력하세요.");
      return false;
    }
    if ($("input[class=keywordlists]").length >= 5) {
      alert("키워드는 최대 5개까지 입력 가능합니다.");
      return false;
    }
    var $input = $("<input>").attr({
      type: "button",
      name: "keyword[]",
      class: "keywordlists",
      value: keyword
    });
    $("#keywordlist").append($input);
    $(".limit span#key").text($("#keywordlist input").length);
    $("input[name=keyword]").val("").focus();
  });
  
  $(document).on("click", "#keywordlist input[type=button]", function() {
    $(this).remove(); // 버튼 요소 제거
    $(".limit span").text($("#keywordlist input[type=button]").length); // 현재 항목 개수 표시
  });
  
  $("input[name=servicetitle]").on("keyup", function() {
    var textLength = $(this).val().length;
    if(textLength > 30){
    	alert("제목은 30글자까지 입력가능합니다.");
    }
    $("#title").text(textLength);
  });
  
  $("textarea[name=service_descript]").on("keyup", function() {
    var textLength = $(this).val().length;
    $("#descript").text(textLength);
  });
  
  $("textarea[name=service_text]").keyup(function() {
    var textLength = $(this).val().length;
    $("#service_text").text(textLength);
  });
  
  $("textarea[name=recruit]").keyup(function() {
    var textLength = $(this).val().length;
    $("#recruit").text(textLength);
  });
  
  	$('input[name=vers_title]').on('keyup', function() {
	  var length = $(this).val().length;
	  $('#standtitle').text(length);
	});

	$('input[name=vers_descript]').on('keyup', function() {
	  var length = $(this).val().length;
	  $('#standdescript').text(length);
	});
	
	$('input[maxlength=20]').on('keyup', function() {
	    var length = $(this).val().length;
	    var id = $(this).siblings('.versionlimittitle').attr('id');
	    $('#' + id).text(length);
	  });
	
	$('textarea[name="vers_descript[]"]').on('keyup', function() {
	  var length = $(this).val().length;
	  var id = $(this).siblings('.versionlimitdescript').attr('id');
	  $('#' + id).text(length);
	  
	  if(length > 60){
		  alert("60글자가 넘습니다.");
	  }
	});
	
	$('input[name=vers_price]').on('input', function() {
	    $(this).val($(this).val().replace(/[^0-9]/g, ''));
	  });
	
	$('input[name="vers_price[]"]').on('input', function() {
	    $(this).val($(this).val().replace(/[^0-9]/g, ''));
	  });
	  
	$('.ver, #version').hide(); // 초기에는 버전정보 숨김
	  $('#switch').change(function() {
	    if($(this).is(":checked")) {
	      $('.stand, #standard').stop().slideUp(500, function() {
	        $('.ver, #version').stop().slideDown(500);
	      });
	    }
	    else {
	      $('.ver, #version').stop().slideUp(500, function() {
	        $('.stand, #standard').stop().slideDown(500);
	      });
	    }
	  });
	
  	$('.option').click(function() {
	  var $newOption = $('<div class="oplist opop"><span class="wid">맞춤옵션</span><input type="checkbox" name="option" class="op_checkbox" style="width: auto; height: auto;" checked><div class="optionbox"><div><span class="wid3">제목</span><input type="text" placeholder="제목을 입력해주세요." name="op_title[]" maxlength="50"></div><div><span class="wid3">설명</span><input type="text" placeholder="설명을 입력해주세요." name="op_descript[]" maxlength="100"></div><div><span class="wid3">추가금액</span><input type="text" placeholder="최소 1,000" style="width:80px;" name="op_price[]">원 추가시</div><div><span class="wid3">추가 작업일</span><select style="width:10%; background-color: #fafafc;" name="op_date[]"><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option></select>일 추가</div></div></div>');

	  $newOption.insertBefore('.option');

	  // 현재 맞춤옵션에 대한 체크박스 상태 저장 변수
	  var isChecked = true;

	  // 체크박스 클릭 이벤트 핸들러
	  $newOption.find('input[type="checkbox"]').click(function() {
	    isChecked = !isChecked;
	    $newOption.find('.optionbox').toggle(isChecked);
	  });
	});
  	
  	$('.question input[type="button"]').click(function() {
  	  var $newQuestion = $('<div class="oplist opop"><span class="wid10">자주 묻는 질문</span><input type="checkbox" name="qna_list" style="width: auto; height: auto;" checked><div class="optionbox"><div><span class="wid3">질문</span><input type="text" placeholder="자주묻는 질문을 입력해주세요." name="qna_title[]"></div><div><span class="wid3" style="position: relative; top: -145px;">답변</span><textarea id="answer" placeholder="답변을 입력해주세요." name="qna_answer[]"></textarea></div></div></div>');

  	  $newQuestion.insertBefore('.question');

  	  // 현재 질문에 대한 답변 상태 저장 변수
  	  var isChecked = true;

  	  // 체크박스 클릭 이벤트 핸들러
  	  $newQuestion.find('input[type="checkbox"]').click(function() {
  	    isChecked = !isChecked;
  	    $newQuestion.find('.optionbox').toggle(isChecked);
  	  });
  	});
  
  	$('a[href^="#"]').click(function(event) {
  	  event.preventDefault();
  	  var target = $(this.hash);
  	  if (target.length) {
  	    $('html, body').animate({
  	      scrollTop: target.offset().top - 150 // 200px 더 높은 곳으로 이동
  	    }, 500); // 1초 동안 애니메이션 실행
  	  }
  	});
  	  	
  	$('.ImageUploadbox .imageUpload').on('change', function() {
  	    var file = $(this)[0].files[0];
  	    var reader = new FileReader();
  	    var $preview = $(this).siblings('.preview');
  	    var $deleteBtn = $(this).closest('.ImageUploadbox').find('.deleteBtn');
  	    reader.onload = function(e) {
  	    	$preview.attr('src', e.target.result);
  	        $preview.css({'width': '100%', 'height': '100%'});
  	        $('#imagetext').html('');
			$deleteBtn.show();
  	    }
  	    reader.readAsDataURL(file);
  	    var mainCount = $('.ImageUploadbox').length;
  	    $('#main').html(mainCount);
        
  	});
  	
  	$('.ImageUploadbox .deleteBtn').click(function() {
		  // 클릭한 버튼과 연결된 이미지와 input 요소 찾기
		  var $parent = $(this).parent();
		  var $preview = $parent.find('.preview');
		  var $imageUpload = $parent.find('.imageUpload');
		  var mainCount = $('.ImageUploadbox').length;

		  // 이미지 초기화 및 input 요소 값 제거
		  $preview.attr('src', 'image/imageupload.png');
		  $imageUpload.val('');

		  // 버튼 숨기기
		  $(this).hide();
		  $('#imagetext').html('652 x 488px <br> (4:3 비율)');

		  // 이미지 크기 원래대로 복원
		  $preview.css({
		    width: '88px',
		    height: '66px'
		  });
		  
		  if($preview.attr('src', 'image/imageupload.png')){
			  $('#main').html(mainCount-1);
		  }
		  
		});

});
var a = 1;
$(document).on('change', '.ImageUploadboxdetail .imageUpload', function() {
	
		a++;
	
	  var $currentBox = $(this).closest('.ImageUploadboxdetail');
	  var file = $(this)[0].files[0];
	  var reader = new FileReader();
	  var $preview = $(this).siblings('.preview');
	  var $deleteBtn = $(this).closest('.ImageUploadboxdetail').find('.deleteBtn');
	  var $newbox = $('<div class="ImageUploadboxdetail"><label><input type="file" class="imageUpload" name="image'+a+'" accept="image/*" style="display:none"><img class="preview" src="image/imageupload.png" alt="이미지 미리보기"></label><button class="deleteBtn" style="display:none"></button></div>');
	  reader.onload = function(e) {
	    $preview.attr('src', e.target.result);
	    $preview.css({'width': '100%', 'height': '100%'});
	    $currentBox.hover(function() {
            $deleteBtn.show();
        }, function() {
            $deleteBtn.hide();
        });
	    $currentBox.find('.imageUpload').prop('disabled', true); // 이미지가 등록된 박스의 input 비활성화
	  }
	  reader.readAsDataURL(file);

	  // 이미지 박스의 마지막에 새로운 이미지 박스 추가
	  var detailCount = $('.ImageUploadboxdetail').length;
	  if(detailCount < 9) {
	    $(this).closest('.ImageUploadboxdetail').after($newbox);
	  }

	  // 상세이미지등록 개수 표시
	  $('#detail').html(detailCount);
	});


$(document).on('click', '.ImageUploadboxdetail .deleteBtn', function() {
	// 클릭한 버튼과 연결된 이미지와 input 요소 찾기
	  $(this).closest('.ImageUploadboxdetail').remove();
	  
	  // Recalculate detailCount
	  var detailCount = $('.ImageUploadboxdetail').length;
	  $('#detail').html(detailCount-1);
	});
