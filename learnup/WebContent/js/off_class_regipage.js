


/*카테고리 첫번째 셀렉박스와 두번째 셀렉박스 선택 기능*/
$(document).ready(function() {
  var options = {
    '디자인': ['웹디자인', '그래픽디자인', '제품디자인', '인테리어디자인', '캐릭터디자인', '기타'],
    'IT·프로그래밍': ['웹개발', '앱개발', '게임개발', '데이터분석', '인공지능', '기타'],
    '영상·사진·음향': ['영상편집', '사진촬영', '음악제작', '녹음스튜디오', '방송기자', '기타'],
    '마케팅': ['광고기획', 'SNS광고', '검색광고', '콘텐츠마케팅', '브랜드마케팅', '기타'],
    '번역·통역': ['영한번역', '한영번역', '일한번역', '한일번역', '통역서비스', '기타'],
    '문서·글쓰기': ['기획안작성', '논문작성', '시나리오작성', '교재작성', '웹콘텐츠작성', '기타'],
    '경영자문·운영지원': ['경영컨설팅', '재무관리', '인사관리', '법무상담', '시설관리', '기타'],
    '주문제작': ['DIY·수제제품', '명함·인쇄물제작', '의류·악세서리', '캘리그라피·미술작품', '사진제작', '기타'],
    '세무·법인·노무': ['세무서비스', '법인설립', '노무서비스', '보험상담', '퇴직금상담', '기타']
  };

  $('#category1').on('change', function() {
    var selected = $(this).val();
    
    if (selected === 'none') {
      $('#category2').prop('disabled', true);
      $('#category2').val('none');
      return;
    }
    
    $('#category2').prop('disabled', false);
    
    var subOptions = options[selected];
    
    $('#category2').empty();

    $.each(subOptions, function(index, value) {
      $('#category2').append('<option value="' + value + '">' + value + '</option>');
    });
  });
});


/*태그 추가 및 삭제기능*/
$(document).ready(function() {
  const addButton = document.querySelector('.inputtag button[type="button"]');
  const inputTag = document.querySelector('.inputtag input[type="text"]');
  const tagList = document.querySelector('.tag_list');

  addButton.addEventListener('click', () => {
    const tagText = inputTag.value.trim();
    if (tagText === '') {
      return;
    }

    // Check if tag list already has 10 items
    if (tagList.children.length >= 10) {
      alert('태그를 10개이상 생성할 수 없습니다.');
      return;
    }

    const tagItem = document.createElement('li');
    const tagLink = document.createElement('a');
    const tagInput = document.createElement('input');

    tagLink.innerText = tagText;
    tagItem.appendChild(tagLink);

    tagInput.setAttribute('type', 'hidden');
    tagInput.setAttribute('name', 'classTags[]');
    tagInput.setAttribute('value', tagText);
    tagItem.appendChild(tagInput);

    tagList.appendChild(tagItem);

    inputTag.value = '';

    // Add click event listener to remove the clicked tag
    tagItem.addEventListener('click', () => {
      tagItem.remove();
    });

  });
});

/*클래스 횟수 라디오버튼 다회차 클릭시 셀렉트박스 활성화되는 기능 영역*/
$(document).ready(function() {
  $('input[name="count_type"]').change(function() {
    if($('#multiday').is(':checked')) {
      $('#countselect').prop('disabled', false);
    } else {
      $('#countselect').prop('disabled', true);
    }
  });
});

/*클래스 제목 글자수 카운트 기능영역*/
function countChars(input) {
  var charCount = input.value.length;
  var maxChars = input.getAttribute("maxlength");
  document.getElementById("charCount").innerHTML = "(" + charCount + "/" + maxChars + ")";
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
  // 클래스 제목이 변경될 때
  $('input[name=classTitle]').on('input', function() {
    var title = $(this).val();
    $('.class_title').text(title);
  });

  // 카테고리2가 변경될 때
  $('select[name=category2]').on('change', function() {
    var category2 = $(this).val() || $('select[name=category2] option:first').val();
    $('.class_category').text(category2 + ' · ');
  });
});


/*판매자공지 글자수 카운트 기능영역*/
function sellernotice(input) {
  var charCount = input.value.length;
  var maxChars = input.getAttribute("maxlength");
  document.getElementById("sellernotice_count").innerHTML = "(" + charCount + "/" + maxChars + ")";
}

/*클래스요약 카운트 기능영역*/
function summary(input) {
  var charCount = input.value.length;
  var maxChars = input.getAttribute("maxlength");
  document.getElementById("summary_count").innerHTML = "(" + charCount + "/" + maxChars + ")";
}

/*이런 분들이 들으면 좋아요 카운트 기능영역*/
function targetting(input) {
  var charCount = input.value.length;
  var maxChars = input.getAttribute("maxlength");
  document.getElementById("targetting_count").innerHTML = "(" + charCount + "/" + maxChars + ")";
}

/*어떤 클래스 인가요? 카운트 기능영역*/
function classintro(input) {
  var charCount = input.value.length;
  var maxChars = input.getAttribute("maxlength");
  document.getElementById("classintro_count").innerHTML = "(" + charCount + "/" + maxChars + ")";
}

/*어떤 클래스 인가요? 이미지 기능영역*/
$(document).ready(function() {
  // 이미지 업로드 시
  $('#classintro').change(function() {
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
    container.find('#classintro').val('');
  });
});



/*유의사항 카운트 기능영역*/
function guide(input) {
  var charCount = input.value.length;
  var maxChars = input.getAttribute("maxlength");
  document.getElementById("guide_count").innerHTML = "(" + charCount + "/" + maxChars + ")";
}

/*클래스는 이렇게 진행됩니다. 카운트 기능영역*/
function classprocess(input) {
  var charCount = input.value.length;
  var maxChars = input.getAttribute("maxlength");
  document.getElementById("classprocess_count").innerHTML = "(" + charCount + "/" + maxChars + ")";
}

/*클래스는 이렇게 진행됩니다 이미지 기능영역*/
$(document).ready(function() {
  // 이미지 업로드 시
  $('#classprocess').change(function() {
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
    container.find('#classprocess').val('');
  });
});




/*판매자 승인 메세지 카운트 기능영역*/
function sellermessage(input) {
  var charCount = input.value.length;
  var maxChars = input.getAttribute("maxlength");
  document.getElementById("sellermessage_count").innerHTML = "(" + charCount + "/" + maxChars + ")";
}

/*클래스 시간 입력란에 입력값이 24보다 크면 24로 자동으로 설정*/
$(document).ready(function() {
  // 1회당 클래스 시간 입력란에 입력값이 24보다 크면 24로 자동으로 설정
  $('#classtime').on('input', function() {
    var value = parseInt($(this).val());
    if (value > 24) {
      $(this).val(24);
    }
  });
  // 시간당 가격이나 최종 수강료가 입력될 때, 세자리마다 콤마를 찍는 함수 호출
  $('#hourprice, #totalprice').on('input', function() {
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
  var classTime = parseFloat($('#classtime').val());
  var totalClassCount = parseInt($('#totalclasscount').val());
  var totalPrice = hourPrice * classTime * totalClassCount;
  
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

  // 총 클래스 횟수 초기값 설정
  $('#totalclasscount').val(1);
});





