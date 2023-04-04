$(function()
{
    for (let i = 0; i < 8; i++) {
      
        $("#tab-"+i).children().children().children().children(".box-0-1").mouseover(function () { 
            var  a = $(this).closest('div').attr('id');
            console.log(a);
            $(this).css("scale","calc(1.1)")
            $(this).css("transition","all ease 1s")
            $(this).css("transform","translate(0px, -20px)")
        });
        $("#tab-"+i).children().children().children().children(".box-0-1").mouseleave(function () { 
        
            $(this).css("scale","calc(1)","z-index","1")
            $(this).css("transform","translate(0px, 0px)")
         
        });

    }
    
});


