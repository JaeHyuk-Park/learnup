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
  
  $("textarea[name=descript]").on("keyup", function() {
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
	  var $newOption = $('<div class="oplist opop"><span class="wid">맞춤옵션</span><input type="checkbox" style="width:auto; height:auto;" checked><div class="optionbox"><div><span class="wid3">제목</span><input type="text" placeholder="제목을 입력해주세요." required></div><div><span class="wid3">설명</span><input type="text" placeholder="설명을 입력해주세요." required></div><div><span class="wid3">추가금액</span><input type="text" placeholder="최소 1,000" style="width:80px;" required>원 추가시</div><div><span class="wid3">추가 작업일</span><select style="width:10%; background-color: #fafafc;"><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option></select>일 추가</div></div></div>');

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
  	  var $newQuestion = $('<div class="oplist opop"><span class="wid10">자주 묻는 질문</span><input type="checkbox" style="width:auto; height:auto;" checked><div class="optionbox"><div><span class="wid3">질문</span><input type="text" placeholder="자주묻는 질문을 입력해주세요." required></div><div><span class="wid3" style="position: relative; top: -145px;">답변</span><textarea id="answer" placeholder="답변을 입력해주세요." required></textarea></div></div></div>');

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
  	  	
	  $('.imageUpload').change(function() {
	    var file = $(this)[0].files[0];
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      $('.preview').attr('src', e.target.result);
	      $('.preview').css('width', '240px');
	      $('.preview').css('height', '180px');
	      $('.deleteBtn').show();
	    }
	    reader.readAsDataURL(file);
	  });

	  $('.deleteBtn').click(function() {
	    $('.preview').attr('src', 'image/imageupload.png');
	    $('.imageUpload').val('');
	    $(this).hide();
	    $('.preview').css('width', '88px');
	    $('.preview').css('height', '66px');
	  });
});

