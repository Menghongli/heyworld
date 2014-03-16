;(function(){
    // Menu settings
    $('#menuToggle').on('click', function(){
        toggleMenu();
    });

    $(document).click(function(e) {
            var target = e.target;
            if (!$(target).is('.menu') && !$(target).parents().is('.menu') 
                && !$(target).is('#menuToggle') && !$(target).parents().is('#menuToggle')) {
                if($('#menuToggle').hasClass('active')){
                    toggleMenu();
                }
            }
    });
})(jQuery)

function toggleMenu(){
    $('#menuToggle').toggleClass('active');
    $('body').toggleClass('body-push-toright');
    $('#theMenu').toggleClass('menu-open');
}
