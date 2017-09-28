jQuery(document).ready(function($){
	$('.menubtn').click(function(){
		$(this).toggleClass('is-active');
        $('.menu').toggleClass('change-menu');
	});
    $('.sub-menu').slideUp();
    $('.parent-menu').on('click',function(){
        $('.sub-menu').slideToggle();
        /*event.preventDefault();*/
    });
    $('.intour-list-parent').children().slideUp();
    $('.intour-list-parent').on('click', function(){
    	$(this).children().slideToggle();
    	/*event.preventDefault();*/
        var anchor = $(this).children();
    });
    $('.intour-list-parent ul li a').on('click', function(){
        /*event.preventDefault();*/
        var anchor = $(this).attr('href');
        var length = anchor.length;
        var anchorslide = anchor.slice(1, length)
        // console.log(anchor, length, anchorslide);
        $('.intour-list-content-item').removeClass('show');
        $('.intour-list-content').find('#'+anchorslide).addClass('show');
    });
    $('.intour-list-sparent li a').on('click', function(){
        /*event.preventDefault();*/
        var anchor = $(this).attr('href');
        var length = anchor.length;
        var anchorslide = anchor.slice(1, length)
        // console.log(anchor, length, anchorslide);
        $('.intour-list-content-item').removeClass('show');
        $('.intour-list-content').find('#'+anchorslide).addClass('show');
    });
    $('.top-filter-date').on('click', function(){
        $('.top-filter-date::-webkit-datetime-edit').css('opacity', '1');
    });
    
    $('.add').on('click',function(){
        var $qty=$(this).closest('.action-number').find('.qty');
        var currentVal = parseInt($qty.val());
        if (!isNaN(currentVal)) {
            $qty.val(currentVal + 1);
        }
    });
    $('.minus').on('click',function(){
        var $qty=$(this).closest('.action-number').find('.qty');
        var currentVal = parseInt($qty.val());
        if (!isNaN(currentVal) && currentVal > 0) {
            $qty.val(currentVal - 1);
        }
    });
    
    $(window).scroll(function(){
        var top = $(window).scrollTop();
        if(top > 11) {
            $('.menu-wrap').addClass('scroll');
            $('.logo').addClass('width');
        }
        else {
            $('.menu-wrap').removeClass('scroll');
            $('.logo').removeClass('width');
        }
    });
});