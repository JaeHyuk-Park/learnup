/*상단메뉴 기능*/

$(function(){
	$("#tm5").mouseenter(function(){
		$("#tm5").css('background-color', '#8041D9');
		$("#tm5").css('width', '110px');
		$("#tm5").css('height', '40px');
		$("#tm5").css('border-radius', '5px');
	})
});
$(function(){
	$("#tm5").mouseleave(function(){
		$("#tm5").css('background-color', '#D1B2FF');
	})
});

$(function(){
	$("#tm6").mouseenter(function(){
		$("#tm6").css('background-color', '#D5D5D5');
		$("#tm6").css('width', '110px');
		$("#tm6").css('height', '40px');
		$("#tm6").css('border-radius', '5px');
	})
});
$(function(){
	$("#tm6").mouseleave(function(){
		$("#tm6").css('background-color', '#FFFFFF');
	})
});

$(function(){
	$("#tm7").mouseenter(function(){
		$("#tm7").css('background-color', '#D5D5D5');
		$("#tm7").css('width', '110px');
		$("#tm7").css('height', '40px');
		$("#tm7").css('border-radius', '5px');
	})
});
$(function(){
	$("#tm7").mouseleave(function(){
		$("#tm7").css('background-color', '#FFFFFF');
	})
});

$(function(){
	$("#registbtn").click(function(){
		var title = $('#boardtitle').val();
		var note = $('#boardnote').val();
		
		if(title==""){
			alert("제목을 다시 확인해주세요");
			return false;
		}else if(note==""){
			alert("내용을 다시 확인해주세요");
			return false;
		}else{
			return true;
		}
	})
});


function Check(){
	var str = $("#boardnote").val();
	var str_arr = str.split("\n");  // 줄바꿈 기준으로 나눔 
	var row = str_arr.length;  // row = 줄 수 

	if(row >41){
	//마지막 입력문자 삭제

	alert("40줄 이상 입력할 수 없습니다.")
	var lastChar = str.slice(0,-1); //열 
	$("#boardnote").val(lastChar)
	}
};
	
