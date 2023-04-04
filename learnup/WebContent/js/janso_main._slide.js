
$(function()
{        
    var slideCount = $('.slider ul li').length;
    var slideWidth = $('.slider ul li').width();
    var slideHeight = $('.slider ul li').height();
    var sliderUlWidth = slideCount * slideWidth;
    
    $('.slider').css({ width: slideWidth, height: slideHeight });
    
    $('.slider ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });
    
    $('.slider ul li:last-child').prependTo('slider ul');

    function moveLeft(a) {
        var slideWidth1 = $(a+' ul li').width();
        $(a +' ul').stop().animate({
            left: + slideWidth1
        }, 500, function () {
            $(a + ' ul li:last-child').prependTo(a+' ul');
            $(a + ' ul').css('left', '');
        });
    };

    function moveRight(a) {
        var slideWidth1 = $(a+' ul li').width();
        $(a +' ul').stop().animate({
            left: - slideWidth1
        }, 500, function () {
            $(a + ' ul li:first-child').appendTo(a+' ul');
            $(a + ' ul').css('left','');
        });
    };

    //버튼 보이기 안보이기
    $(".control_next").hide();
    $(".control_prev").hide();

    //호버기능
    $(".link-box .box-0-1").children().hover(function () { 
        var hover_in = "#"+$(this).closest('div').attr('id');


        $(this).css("scale","calc(1.1)")
        $(this).css("transition","all ease 1s")
        $(this).css("transform","translate(0px, -20px)")

        $(this).children(".control_next").show(function () {
            var hover_in = "#"+$(this).closest('div').attr('id');
            $(hover_in).children(".control_next").stop().click(function () {
                moveRight(hover_in);
            });
        });

        $(this).children(".control_prev").show(function()
        {
            var hover_in = "#"+$(this).closest('div').attr('id');
            $(hover_in).children(".control_prev").stop().click(function () {
                moveLeft(hover_in);
            });
        });  

            
        }, function() {
            $(this).css("scale","calc(1)","z-index","1")
            $(this).css("transform","translate(0px, 0px)")
            $(this).css("transition","all ease 1s")
            $(this).children(".control_next").hide();
            $(this).children(".control_prev").hide();
           
        }
  
    );
 
});

///제어




//제어1
    $(function() {

      var sl = ['#slider','#slider1','#slider2','#slider3','#slider4','#slider5','#slider6','#slider7'];


        function moveRight1(a) {
            var slideWidth1 = $(a+' ul li').width();
            $(a +' ul').animate({
                left: - slideWidth1
            }, 1000, function () {
                $(a + ' ul li:first-child').appendTo(a+' ul');
                $(a + ' ul').css('left','');
            });
        };

        function run1(sp) {
          return  setInterval(function () {
            moveRight1(sp)
           }, 15000);
        };

      var runs =  run1(sl[0]);
        
    $("#slider").stop().mouseover(function()
    {
        clearInterval(runs);   
    });

    $("#slider").mouseleave(function()
    {
      runs =  run1(sl[0]);
    }); 
      
        

    });

    //제어2
    $(function() {

      var sl = ['#slider','#slider1','#slider2','#slider3','#slider4','#slider5','#slider6','#slider7'];


        function moveRight1(a) {
            var slideWidth1 = $(a+' ul li').width();
            $(a +' ul').animate({
                left: - slideWidth1
            }, 1000, function () {
                $(a + ' ul li:first-child').appendTo(a+' ul');
                $(a + ' ul').css('left','');
            });
        };

        function run1(sp) {
          return  setInterval(function () {
            moveRight1(sp)
           }, 15000);
        };

      var runs =  run1(sl[1]);
        
    $(sl[1]).stop().mouseover(function()
    {
        clearInterval(runs);   
    });

    $(sl[1]).mouseleave(function()
    {
      runs =  run1(sl[1]);
    }); 
      
    });


    //제어3
    $(function() {

      var sl = ['#slider','#slider1','#slider2','#slider3','#slider4','#slider5','#slider6','#slider7'];


        function moveRight1(a) {
            var slideWidth1 = $(a+' ul li').width();
            $(a +' ul').animate({
                left: - slideWidth1
            }, 1000, function () {
                $(a + ' ul li:first-child').appendTo(a+' ul');
                $(a + ' ul').css('left','');
            });
        };

        function run1(sp) {
          return  setInterval(function () {
            moveRight1(sp)
           }, 15000);
        };

      var runs =  run1(sl[2]);
        
    $(sl[2]).stop().mouseover(function()
    {
        clearInterval(runs);   
    });

    $(sl[2]).mouseleave(function()
    {
      runs =  run1(sl[2]);
    }); 
      
    });

    //제어3
    $(function() {

      var sl = ['#slider','#slider1','#slider2','#slider3','#slider4','#slider5','#slider6','#slider7'];


        function moveRight1(a) {
            var slideWidth1 = $(a+' ul li').width();
            $(a +' ul').animate({
                left: - slideWidth1
            }, 1000, function () {
                $(a + ' ul li:first-child').appendTo(a+' ul');
                $(a + ' ul').css('left','');
            });
        };

        function run1(sp) {
          return  setInterval(function () {
            moveRight1(sp)
           }, 15000);
        };

      var runs =  run1(sl[3]);
        
    $(sl[3]).stop().mouseover(function()
    {
        clearInterval(runs);   
    });

    $(sl[3]).mouseleave(function()
    {
      runs =  run1(sl[3]);
    }); 
      
    });

    //제어4
    $(function() {

      var sl = ['#slider','#slider1','#slider2','#slider3','#slider4','#slider5','#slider6','#slider7'];


        function moveRight1(a) {
            var slideWidth1 = $(a+' ul li').width();
            $(a +' ul').animate({
                left: - slideWidth1
            }, 1000, function () {
                $(a + ' ul li:first-child').appendTo(a+' ul');
                $(a + ' ul').css('left','');
            });
        };

        function run1(sp) {
          return  setInterval(function () {
            moveRight1(sp)
           }, 15000);
        };

      var runs =  run1(sl[4]);
        
    $(sl[4]).stop().mouseover(function()
    {
        clearInterval(runs);   
    });

    $(sl[4]).mouseleave(function()
    {
      runs =  run1(sl[4]);
    }); 
      
    });


    //제어5
    $(function() {

      var sl = ['#slider','#slider1','#slider2','#slider3','#slider4','#slider5','#slider6','#slider7'];


        function moveRight1(a) {
            var slideWidth1 = $(a+' ul li').width();
            $(a +' ul').animate({
                left: - slideWidth1
            }, 1000, function () {
                $(a + ' ul li:first-child').appendTo(a+' ul');
                $(a + ' ul').css('left','');
            });
        };

        function run1(sp) {
          return  setInterval(function () {
            moveRight1(sp)
           }, 15000);
        };

      var runs =  run1(sl[5]);
        
    $(sl[5]).stop().mouseover(function()
    {
        clearInterval(runs);   
    });

    $(sl[5]).mouseleave(function()
    {
      runs =  run1(sl[5]);
    }); 
      
    });

      //제어6
      $(function() {

        var sl = ['#slider','#slider1','#slider2','#slider3','#slider4','#slider5','#slider6','#slider7'];
  
  
          function moveRight1(a) {
              var slideWidth1 = $(a+' ul li').width();
              $(a +' ul').animate({
                  left: - slideWidth1
              }, 1000, function () {
                  $(a + ' ul li:first-child').appendTo(a+' ul');
                  $(a + ' ul').css('left','');
              });
          };
  
          function run1(sp) {
            return  setInterval(function () {
              moveRight1(sp)
             }, 15000);
          };
  
        var runs =  run1(sl[6]);
          
      $(sl[6]).stop().mouseover(function()
      {
          clearInterval(runs);   
      });
  
      $(sl[6]).mouseleave(function()
      {
        runs =  run1(sl[6]);
      }); 
        
      });

        //제어7
        $(function() {

        var sl = ['#slider','#slider1','#slider2','#slider3','#slider4','#slider5','#slider6','#slider7'];
  
  
          function moveRight1(a) {
              var slideWidth1 = $(a+' ul li').width();
              $(a +' ul').animate({
                  left: - slideWidth1
              }, 1000, function () {
                  $(a + ' ul li:first-child').appendTo(a+' ul');
                  $(a + ' ul').css('left','');
              });
          };
  
          function run1(sp) {
            return  setInterval(function () {
              moveRight1(sp)
              }, 15000);
          };
  
        var runs =  run1(sl[7]);
          
      $(sl[7]).stop().mouseover(function()
      {
          clearInterval(runs);   
      });
  
      $(sl[7]).mouseleave(function()
      {
        runs =  run1(sl[7]);
      }); 
        
      });
         
       
     
   
   

 


