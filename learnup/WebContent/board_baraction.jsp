<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="dao.*" %>
<%@ page import="vo.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
</head>
<script type="text/javascript">
function BarMenu(selector) {
	// 프로퍼티 생성
	this.$barMenu = null;
	this._$menuBody = null;
	this._$menuItems = null;
	this._$overItem = null;
	this._$bar = null;

	// 선택 메뉴 아이템
	this.$selectItem = null;

	this._init(selector);
	this._initEvent();
}

BarMenu.prototype = {
	// 요소 초기화
	"_init": function(selector) {
		this.$barMenu = $(selector);
		this._$menuBody = this.$barMenu.find('.menu-body');
		this._$menuItems = this._$menuBody.find('li');
		this._$bar = this.$barMenu.find('.bar');
	},

	// 이벤트 초기화
	"_initEvent": function() {
		var _self = this;

		// 오버 메뉴 및 선택(클릭한)메뉴 이벤트 호출
		this._$menuItems.on('mouseenter click', function(e) {
			var $this = $(this);
			if (e.type == 'mouseenter') {
				_self._setOverMenuItem($this);
			} else if (e.type == 'click') {
				_self.setSelectMenuItem($this);
			}
		});

		// 전체 메뉴 영역을 벗어난 경우
		this.$barMenu.on('mouseleave', function() {
			var $this = $(this);

			// 기존 오버 메뉴아이템이 있는 경우 제거
			_self._removeOverItem($this);

			// 기존 선택한 메뉴아이템이 있는 경우 선택처리
			_self._reSelectMenuItem();

		});

	},

	// 오버 메뉴아이템 처리하기
	"_setOverMenuItem": function($item) {

		// 기존 오버되어 있는 아이템이 있다면 over 스타일을 제거
		if (this._$overItem) {
			this._$overItem.removeClass('over');
		}

		// 신규 오버 메뉴아이템이 선택한 메뉴아이템과 같지 않은 경우에만 메뉴아이템 스타일 적용하기
		// 선택 메뉴 아이템 인덱스 값 구하기
		var selectIndex = -1;
		if (this.$selectItem != null) {
			selectIndex = this.$selectItem.index();
		}

		// 신규 오버 메뉴아이템 인덱스 값과 선택한 메뉴아이템의 인덱스 값을 비교
		if ($item.index() != selectIndex) {
			this._$overItem = $item;
			this._$overItem.addClass('over');
		} else {
			this._$overItem = null;
		}

		// 메뉴바 이동
		this._moveBar($item);
	},

	// 전체 메뉴 영역 벗어날 때 오버 효과 제거
	"_removeOverItem": function() {
		if (this._$overItem) {
			this._$overItem.removeClass('over');
		}
		this._$overItem = null;
		this._moveBar(null);
	},

	// 이동 메뉴 효과
	"_moveBar": function($item, animation) {
		var left = -100,
			width = 0;

		if ($item != null) {
			left = $item.position(true).left-80 + parseInt($item.css('margin-left'));
			width = $item.outerWidth();
		}

		if (animation == false) {
			// 애니메이션 없이 바로 이동
			this._$bar.css({
				'left': left,
				'width': width
			})
		} else {
			// 애니메이션 이동
			this._$bar
				.stop()
				.animate({
					'left': left,
					'width': width
				}, 300)
		}
	},

	// 선택(클릭) 메뉴 아이템 처리
	'setSelectMenuItem': function($item, aniamtion) {
		var $oldItem = this.$selectItem;

		// 기존에 선택한 메뉴가 있는 경우 처리
		if (this.$selectItem) {
			this.$selectItem.removeClass('select');
		}

		this.$selectItem = $item;
		this.$selectItem.addClass('select');

		// 메뉴바 이동
		this._moveBar($item, aniamtion);

		// 사용자 정의 이벤트 발생(호출)
		this._dispatchSelectEvent($oldItem, $item);
	},

	// 기존 선택한 메뉴아이템이 있는 경우 선택 처리
	"_reSelectMenuItem": function() {
		if (this.$selectItem) {
			this._moveBar(this.$selectItem);
		}
	},

	// 메뉴아이템이 선택된 상태에서 시작하도록 설정하는 경우
	'setSelectMenuItemAt': function(index, animation) {
		var target = this._$menuItems.eq(index);
		this.setSelectMenuItem(target, animation);
	},

	// 사용자 정의 이벤트 발생
	"_dispatchSelectEvent": function($oldItem, $newItem) {
		var customEvent = jQuery.Event('selected');
		customEvent.$oldItem = $oldItem;
		customEvent.$newItem = $newItem;
		this.$barMenu.trigger(customEvent);
	}

};

$(function () {
	
	var barMenu = new BarMenu('#barMenu1');
	// 메뉴아이템 선택 설정
	barMenu.setSelectMenuItemAt(num, false);

	// 사용자 정의 이벤트
	// 위에서 정의한 select 이벤트 리스너 등록하기
	barMenu.$barMenu.on('selected', function(e) {
		var oldIndex = -1;
		if (e.$oldItem) {
			oldIndex = e.$oldItem.index();
		}

		console.log('old = ' + oldIndex + ', new = ' + e.$newItem.index());
	});
});

</script>
<style>
#barMenu1 {
	position: relative;
	top: 10px;
	width:1000px;
	overflow: hidden;
	text-align: center;
	margin: 0 auto;
}

.bar-menu {
	position: relative;
	height: 100px;
	cursor: pointer;
}

.bar-menu ul.menu-body {
	position: relative;
	list-style: none;
	height: 100%;
	top: -16px;
	left: -80px;
}

.bar-menu ul.menu-body li {
	width: 200px;
    height: 45px;
    margin-left: 70px;
    float: left;
    line-height: 34px;
    vertical-align: middle;
    display: inline-block;
    font-size: 30px;
    padding: 40px 20px;
    z-index: 6;
    position: relative;
}


/* 선택 메뉴 아이템 스타일 */


/* 오버 메뉴 아이템 스타일 */

.bar-menu ul.menu-body li a.over {
	background-color: #eee;
}

.bar-menu .bar {
	width: 0;
    top: 15px;
    background-color: #F5F2FF;
    position: absolute;
    left: -50px;
    z-index: 0;
    bottom: 0;
    border: 0px;
    border-radius: 15px 15px 15px 15px;
}

</style>
 <body>
	<%
	 String a=  request.getParameter("id");
	int  nums = 0;
	if(a != null)
	{
		nums = Integer.parseInt(request.getParameter("id")); 
	}
	%>

	<%if(nums == 0) {%>
	<script>
		var num = 0;
	</script>
	<%} else if(nums == 1){%>
	<script>
		var num = 1;
	</script>
	<% }else{%>
	<script>
		var num = 2;
	</script>
	<%} %>
	
	
	<div class="bar-menu" id="barMenu1">
		<ul class="menu-body">
		<li><a href="./noticemain.jsp?id=0" >공지사항</a></li>
		<li><a href="./board_select.jsp?id=1">구매자Q/A</a></li>
		<li><a href="./sellerboard2.jsp?id=2">판매자Q/A</a></li>
		</ul>
		<div class="bar"> </div>
	</div>
	
  </body>

</html>