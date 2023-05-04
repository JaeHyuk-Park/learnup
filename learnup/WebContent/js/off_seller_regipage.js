

/*프로필 사진 기능*/
$(document).ready(function() {
  $('#profileimg').change(function() {   // 프로필 이미지 파일이 변경되었을 때 이벤트 발생
    var file = this.files[0];   // 선택된 파일 객체 가져오기
    var reader = new FileReader();   // FileReader 객체 생성
    reader.readAsDataURL(file);   // 파일을 읽어들이기
    reader.onload = function() {   // 파일 읽기가 완료되었을 때 실행될 콜백 함수
      $('#picture_cover').attr('src', reader.result);   // <img> 요소의 src 속성 값을 설정하기
    };
  });
});

/*판매자 소개 글자수 체크*/
function countChars1(textarea) {
  var charCount1 = textarea.value.length;
  var maxChars1 = textarea.getAttribute("maxlength");
  document.getElementById("charCount1").innerHTML = "(" + charCount1 + "/" + maxChars1 + ")";
}


/*이력 기본이미지 첨부 기능영역*/
$(function() {
  $('input[type="file"]').change(function() {
    var imgPath = $(this)[0].value;
    var ext = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
    if (ext == "gif" || ext == "png" || ext == "jpg" || ext == "jpeg" || ext == "bmp") {
      if (typeof(FileReader) != "undefined") {
        var reader = new FileReader();
        reader.onload = function(e) {
          var $careerWrap = $(this).parents('.career_wrap');
          $careerWrap.find('.careerimg img').attr('src', e.target.result);
          $careerWrap.find('.btn_del').removeClass('dn');
        }.bind(this);
        reader.readAsDataURL($(this)[0].files[0]);
      } else {
        alert("This browser does not support FileReader.");
      }
    } else {
      alert("Please select a valid image file.");
    }
  });

  $('.btn_del').click(function() {
    $(this).closest('.career_wrap').remove();
  });
});

  var certCount = 0; // 이력 섹션 수를 0으로 초기화합니다.
/*이력 추가버튼 클릭시 이력 추가 및 추가된영역에서 이미지 첨부 기능영역*/
$(document).ready(function() {

	
  // "+ 이력 추가" 버튼이 클릭되면
  $(".career_btn").click(function() {
     // 이력 섹션 수를 증가시킵니다.
		certCount++; 
    // 이력 섹션을 새로 만들고 고유한 ID를 카운트를 기반으로 생성합니다.
    var newCertSection = '<div id="cert' + certCount + '" class="career_wrap">' +
      '<div class="careerinput_area">' +
      '<input type="text" placeholder="강의 관련된 이력을 입력해주세요." maxlength="40" onkeyup="countChars(this)">' +
      '</div>' +
      '<div class="careerimg_area">' +
      '<div class="careerimg">' +
      '<img id="img_Cert' + certCount + '" class="preview" src="image/careerimg.png" alt="이미지 미리보기">' +
      '<button type="button" class="btn_del dn" onclick="delete_cert(' + certCount + ')"><span class="blind">삭제</span></button>' +
      '</div>' +
      '<input type="file" name="cert' + certCount + '"input-file="img-Cert' + certCount + '" accept=".jpg,.png,.gif,.bmp" onchange="preview_cert_image(event, ' + certCount + ')">' +
      '</div>' +
      '</div>';
		
		
    // "+ 이력 추가" 버튼 위에 새로 만든 이력 섹션을 삽입합니다.
    $(newCertSection).insertBefore($(".career_btn"));
    
    if(certCount == 4)
    {
		$(".career_btn").css('pointer-events','none' );
	}
	   
    console.log(certCount);
    
  });
  
  

  
});


// 이력 섹션을 삭제하는 함수입니다.
function delete_cert(certId) {
  $("#cert" + certCount).remove(); // 주어진 ID를 가진 이력 섹션을 삭제합니다.
  certCount--;
  $(".career_btn").css('pointer-events','auto' );
      
}

// 이미지 파일을 미리보기하는 함수입니다.
function preview_cert_image(event, certId) {
  var reader = new FileReader(); // 새로운 FileReader 객체를 만듭니다.
  var imgElement = document.getElementById("img_Cert" + certId);
  var delBtn = document.querySelector("#cert" + certId + " .btn_del"); // 삭제 버튼을 선택합니다.

  reader.onload = function() {
    // 이미지 요소의 소스로 데이터 URL을 설정합니다.
    imgElement.src = reader.result;
    delBtn.classList.remove("dn"); //삭제 버튼에서 "dn" 클래스를 제거합니다.
  }

  // 이미지 파일을 읽고 데이터 URL을 만듭니다.
  reader.readAsDataURL(event.target.files[0]);
}