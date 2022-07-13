
$(()=>{
  $('.add-tbl').click(()=>{

    $('section').addClass('blur_fil');
    $('.black-bg').fadeIn(400);
    $('.add-modal').fadeIn(400);
  });
  $('.black-bg').click(()=>{
    $('.black-bg').fadeOut(400);
    $('.add-modal').fadeOut(400);
    $('section').removeClass('blur_fil');
  });
  
  $('.close_span').click(()=>{
    $('section').removeClass('blur_fil');
    $('.black-bg').fadeOut(400);
    $('.add-modal').fadeOut(400);
  });
  $('.edit-tbl').click(()=>{

    $('section').addClass('blur_fil');
    $('.black-bg').fadeIn(400);
    $('.edit-modal').fadeIn(400);
  });
  $('.black-bg').click(()=>{
    $('.black-bg').fadeOut(400);
    $('.edit-modal').fadeOut(400);
    $('section').removeClass('blur_fil');
  });
  
  $('.close_span').click(()=>{
    $('section').removeClass('blur_fil');
    $('.black-bg').fadeOut(400);
    $('.edit-modal').fadeOut(400);
  });
});
