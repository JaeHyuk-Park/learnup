$(document).ready(function() {
	var keywordCount = $("#keywordlist input[type=button]").length; // 현재 버튼의 개수로 초기값 설정
	$("#addbu1").click(function() {
	  var keyword = $("input[name=keyword]").val().trim();
	  if (keyword == "") {
	    alert("키워드를 입력하세요.");
	    return false;
	  }
	  if (keywordCount >= 5) {
	    alert("키워드는 최대 5개까지 입력 가능합니다.");
	    return false;
	  }
	  var $input = $("<input>").attr({
	    type: "button",
	    name: "keyword" + (++keywordCount),
	    class: "keywordlists",
	    value: keyword
	  });
	  var $key = $("<input>").attr({
	    type:"hidden",
	    name:"keyword"+keywordCount,
	    value:keyword
	  });
	  $("#keywordlist").append($input);
	  $("#keywordlist").append($key);
	  $(".limit span#key").text($("#keywordlist input[type=button]").length); // 수정된 부분
	  $("input[name=keyword]").val("").focus();
	});

	$(document).on("click", "#keywordlist input[type=button]", function() {
	  var keywordVal = $(this).val(); // 삭제할 키워드 값
	  var keywordNum = $(this).attr('name').substr(7); // 삭제할 키워드 번호 추출
	  $(this).remove(); // 버튼 요소 제거
	  // 해당 키워드 값과 동일한 name 속성을 가진 input hidden 요소 제거
	  $("input[type=hidden][name^=keyword][value='" + keywordVal + "']").remove(); 
	  // 삭제된 키워드 번호 이후의 키워드 번호 재설정
	  $("input[class=keywordlists]").each(function(index) {
	    var keywordNum = index + 1;
	    $(this).attr('name', 'keyword' + keywordNum);
	    $("input[type=hidden][name^=keyword][value='" + $(this).val() + "']").attr('name', 'keyword' + keywordNum);
	  });
	  keywordCount--; // 키워드 번호 감소
	  $(".limit span#key").text($("#keywordlist input[type=button]").length); // 수정된 부분
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
  	      scrollTop: target.offset().top - 250 // 200px 더 높은 곳으로 이동
  	    }, 500); // 1초 동안 애니메이션 실행
  	  }
  	});
  	  	
  	$('input[name=image]').on('change', function() {
  	  var file = $(this)[0].files[0];
  	  var reader = new FileReader();
  	  var $deleteBtn = $(this).closest('.ImageUploadbox').find('.deleteBtn');
  	  
  	  reader.onload = function(e) {
  	    $('.ImageUploadbox').css({
  	      'background': 'url(' + e.target.result + ')',
  	      'background-size': '100% 100%'
  	    });

  	    $deleteBtn.show();
  	    
  	    $('.ImageUploadbox .deleteBtn').click(function(){
  	      $('.ImageUploadbox').css({
  	        'background': 'url(image/imageupload.png) no-repeat center',
  	        'background-size': '100px 75px'
  	      });

  	      // input 요소 값 제거
  	      $('input[name=image]').val('');

  	      // 버튼 숨기기
  	      $(this).hide();

  	      var mainCount = $('input[name=image]').val() ? 1 : 0;
  	      $('#main').html(mainCount);
  	    });
  	  }
  	  
  	  reader.readAsDataURL(file);

  	  var mainCount = $('input[name=image]').val() ? 1 : 0;
  	  $('#main').html(mainCount);
  	});
  	
  	$('input[name=image1], input[name=image2], input[name=image3], input[name=image4], input[name=image5], input[name=image6], input[name=image7], input[name=image8], input[name=image9]').on('change', function() {
  	  var $currentBox = $(this).closest('.ImageUploadboxdetail');
  	  var file = $(this)[0].files[0];
  	  var reader = new FileReader();
  	  var $deleteBtn = $(this).closest('.ImageUploadboxdetail').find('.deleteBtn');

  	  reader.onload = function(e) {
  	    $currentBox.css({
  	      'background': 'url(' + e.target.result + ')',
  	      'background-size': '100% 100%'
  	    });
  	    $deleteBtn.show();

  	    $deleteBtn.click(function(){
  	      $currentBox.css({
  	        'background': 'url(image/imageupload.png) no-repeat center',
  	        'background-size': '100px 75px'
  	      });

  	      // input 요소 값 제거
  	      $(this).closest('.ImageUploadboxdetail').find('input[type=file]').val('');

  	      // 버튼 숨기기
  	      $(this).hide();

  	      var mainCount = $('input[name=image1], input[name=image2], input[name=image3], input[name=image4], input[name=image5], input[name=image6], input[name=image7], input[name=image8], input[name=image9]').filter(function() {
  	        return this.value != "";
  	      }).length;
  	      $('#detail').html(mainCount);
  	    });
  	  }
  	  reader.readAsDataURL(file);

  	  var mainCount = $('input[name=image1], input[name=image2], input[name=image3], input[name=image4], input[name=image5], input[name=image6], input[name=image7], input[name=image8], input[name=image9]').filter(function() {
  	    return this.value != "";
  	  }).length;
  	  $('#detail').html(mainCount);
  	});

});