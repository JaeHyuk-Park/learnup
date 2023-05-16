
$(document).ready(function(){

	$('input[name=email]').on('keyup', function() {
	    const $this = $(this);
	    const emailValue = $this.val();
	    const emailLength = emailValue.length;

	    // 이메일 주소의 유효성 검사를 위한 정규식
	    const emailRegex = /^[a-z0-9]+@[^\s@]+\.[^\s@]+$/;

	    $.ajax({
	        url: "joindataemail.jsp?email="+emailValue,
	        type: "POST",
	        dataType: "html",
	        success: function(emailcheck) {
	            if (emailLength < 10) {
	                $('#emailMsg').html('필수 정보입니다.');
	                $this.css('border', '2px solid red');
	            } else if (!emailRegex.test(emailValue)) {
	                // 유효한 이메일 주소 형식인 경우
	                $('#emailMsg').html('올바른 이메일 형식이 아닙니다.');
	                $this.css('border', '2px solid red');
	            } else if (emailcheck.trim() == emailValue.trim()) {
	                $('#emailMsg').html('중복되는 아이디입니다.');
	                $this.css('border', '2px solid red');
	            } else {
	                $this.css('border', '2px solid #8041D9');
	                $('#emailMsg').html('');
	            }
	        }
	    });
	});

	$('input[name=nickname]').keyup(function(){
	    const $this = $(this);
	    const nicknameValue = $this.val();
	    const nicknameRegex = /^[a-zA-Z0-9가-힣]+$/;

	    $.ajax({
	        url: "joindatanickname.jsp",
	        type: "POST",
	        data: {
	  	      nickname: encodeURIComponent(nicknameValue)
		    },
	        success: function(nicknamecheck){
	            if (nicknameValue.length < 3) {
	                $('#nicknameMsg').html('필수 정보입니다.');
	                $this.css('border', '2px solid red');
	            } else if (!nicknameRegex.test(nicknameValue)) {
	                $('#nicknameMsg').html('닉네임은 특수문자 및 공백 사용이 불가능합니다.');
	                $this.css('border', '2px solid red');
	            } else if (nicknamecheck.trim() === nicknameValue) {
	                $('#nicknameMsg').html('중복되는 닉네임입니다.');
	                $this.css('border', '2px solid red');
	            } else {
	                $('#nicknameMsg').html('');
	                $this.css('border', '2px solid #8041D9');
	            }
	        }
	    });
	});

	$('input[name=password]').keyup(function(){
	    var pw = $('input[name=password]').val();
	    var regexNum = /[0-9]/; // 숫자 포함 여부를 검사하는 정규표현식
	    var regexLower = /[a-z]/; // 영문 소문자 포함 여부를 검사하는 정규표현식
	    var regexSpecial = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자 포함 여부를 검사하는 정규표현식
	    if(pw.length < 8){
	    	$('#passMsg').html('필수 정보입니다.');
	    	$(this).css('border', '2px solid red');
	    } else if(!regexNum.test(pw) || !regexLower.test(pw) || !regexSpecial.test(pw)){
	        $('#passMsg').html('비밀번호는 숫자, 소문자, 특수문자가 각 1자 이상 입력되어야 합니다.');
	        $(this).css('border', '2px solid red');
	    }else{
	        $('#passMsg').html('');
	        $(this).css('border', '2px solid #8041D9');
	    }
	});

	$('input[name=password2]').keyup(function(){
	    if($('input[name=password2]').val().length<8){
	        $('#pass2Msg').html('필수 정보입니다.');
	        $(this).css('border', '2px solid red');
	 	}
	    else if($('input[name=password]').val() != $('input[name=password2]').val()){
	        $('#pass2Msg').html('비밀번호가 일치하지 않습니다.');
	        $(this).css('border', '2px solid red');
	    }else{
	        $('#pass2Msg').html('');
	        $(this).css('border', '2px solid #8041D9');
	    }
	});

	$('input[name=name]').keyup(function(){
		const nameRegex = /^[a-zA-Z가-힣]+$/;
		const nameValue = $('input[name=name]').val();


	    if(nameValue.length < 2){
	        $('#nameMsg').html('필수 정보입니다.');
	        $(this).css('border', '2px solid red');
	    }else if(!nameRegex.test(nameValue)){
	    	$('#nameMsg').html('이름은 소문자, 대문자, 한글만 사용 가능합니다.');
	    	$(this).css('border', '2px solid red');
	    }else{
	        $('#nameMsg').html('');
	        $(this).css('border', '2px solid #8041D9');
	    }
	});

	$('input[name=year]').keyup(function(){
	    if(1900 > $('input[name=year]').val() || $('input[name=year]').val() > 2025){
	        $('#birthMsg').html('1900 ~ 2025까지의 숫자만 입력가능합니다.');
	        $(this).css('border', '2px solid red');
	    }else{
	        $('#birthMsg').html('');
	        $(this).css('border', '2px solid #8041D9');
	    }
	});

	$('select[name=month]').click(function(){
	    if($('select[name=month]').val().length < 2){
	        $('#monthMsg').html('태어난 월을 선택하세요.');
	        $(this).css('border', '2px solid red');
	    }else{
	        $('#monthMsg').html('');
	        $(this).css('border', '2px solid #8041D9');
	    }
	});

	$('input[name=day]').keyup(function(){
	    if($(this).val().length<2){
	    	$('#dayMsg').html('태어난 일(날짜) 2자리를 정확하게 입력하세요. 태어난 일(날짜)이 3일인 경우, ex)03');
	    	$(this).css('border', '2px solid red');
	    }else if($(this).val()>31){
	        $('#dayMsg').html('1일 ~ 31일까지만 입력가능합니다.');
	        $(this).css('border', '2px solid red');
	    }else{
	        $('#dayMsg').html('');
	        $(this).css('border', '2px solid #8041D9');
	    }
	});

	// $('input[name=area1], input[name=area2]').click(function(){
	//     if($('input[name=area1]').val() == '' || $('input[name=area2]').val() == '' ){
	//         $('#area1Msg').html('지역을 선택해주세요.');
	//         $('input[name=area1').css('border', '2px solid red');
	//         $('input[name=area2]').css('border', '2px solid red');
	//     }
	//     else{
	//         $('#area1Msg').html('');
	//         $('input[name=area1]').css('border', '2px solid #8041D9');
	// 				$('#area2Msg').html('');
	//         $('input[name=area2').css('border', '2px solid #8041D9');
	//     }
	// });

	$('input[name=address2]').keyup(function(){
	  const addressRegex = /^[가-힣0-9\s]*$/;
	  const addressVal = $(this).val();

	  if(!addressRegex.test(addressVal)){
	    $('#areaMsg').html('주소는 한글, 숫자만 입력 가능합니다.');
	    $(this).css('border', '2px solid red');
	  }else{
	    $('#areaMsg').html('');
	    $(this).css('border', '2px solid #8041D9');
	  }
	});

	$('input[name="access"], input[name="access1"], input[name="access2"]').click(function() {
	    if ($(this).prop('id') === 'accessAll') {
	        $('input[name="access"], input[name="access1"], input[name="access2"]').prop('checked', $(this).prop('checked'));
	    } else {
	        var allChecked = true;
	        $('input[name="access"], input[name="access1"], input[name="access2"]:not(#accessAll)').each(function() {
	            if (!$(this).prop('checked')) {
	                allChecked = false;
	            }
	        });
	        $('#accessAll').prop('checked', allChecked);
	    }



	$("input[name='access']").change(function() {
	  if($("input[name='access'][value='만 14세	이상입니다.']").is(':checked') 
	     && $("input[name='access'][value='서비스 이용약관에 동의합니다.']").is(':checked') 
	     && $("input[name='access'][value='개인정보 수집/이용에 동의합니다.']").is(':checked') 
	     && $("input[name='access'][value='개인정보 제3자 제공에 동의합니다.']").is(':checked')) {
	    $('#accessMsg').html('');
	  } else {	  
	  	$('#accessMsg').html('필수 동의 사항을 체크해주세요.');	
	  }
	});

});	


	var isFocused = false;

	$('input[type="text"]').focus(function() {
	  isFocused = true;
	}).blur(function() {
	  isFocused = false;
	});

	$('form').submit(function(event) {
	  // .error_next_box가 보이면 submit 막기
	  if ($('.error_next_box').text().trim() !== '') {
	    alert('필수 정보를 확인해주세요.');
	    event.preventDefault();
	    return false;
	  }

	  // input이나 select가 비어있으면 submit 막기
	  $('input, select').each(function() {
	    if ($(this).val() == "") {
	      alert('필수 정보를 확인해주세요.');
	      event.preventDefault();
	      return false;
	    }
	  });
	});

	$('input[type="text"], input[type="password"], input[type="checkbox"]').keydown(function(event) {
	  if (event.keyCode == 13) {
	    event.preventDefault();
	    return false;
	  }
	});

});

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