$(function(){
 
  function checkAnswer() {
    $("#answer").on("click", function(){
      $(this).addClass("correct");
      btn.classList.remove('disable');
    });
    $(".select").on("click", function(){
      $(this).addClass("incorrect");
      btn.classList.remove('disable');
    });
  }
  checkAnswer();

});