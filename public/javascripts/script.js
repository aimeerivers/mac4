/* Author:
  aimee daniells
  http://sermoasquared.co.uk
*/

$(function() {
  $('.faq dl dd').hide();
  $('.faq dl dt').bind('click', function(e) {
    $(this).next('dd').slideToggle();
  });
});
