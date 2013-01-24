/* Author:
  aimee rivers
  http://aimeerivers.com
*/

$(function() {
  $('.faq dl dd').hide();
  $('.faq dl dt').bind('click', function(e) {
    $(this).next('dd').slideToggle();
  });

  $('.expand-collapse').show();
  $('.all_other_prices').hide();
  $('.expand-collapse').bind('click', function(e) {
    $(this).text($(this).text() == 'view all' ? 'hide' : 'view all');
    $(this).parent('.prices dl').children('.all_other_prices').slideToggle();
  });
});
