// This just increments the delay on each item

$(document).on('ready page:load', function() {

  $('.rolldown-list li').each(function () {
    var delay = ($(this).index()/4) + 's';
    $(this).css({
        webkitAnimationDelay: delay,
        mozAnimationDelay: delay,
        animationDelay: delay
    });
  });


  // A button to reload the animation

  $('#btnReload').click(function () {
    $('#myList').removeClass('rolldown-list');
    setTimeout(function () {
      $('#myList').addClass('rolldown-list');
    }, 1)
  });

});
