$(function(){
 
  function checkAnswer() {
    $("#answer").on("click", function(){
      $(this).addClass("correct");
    });
    $(".select").on("click", function(){
      $(this).addClass("incorrect");
    });
  }
  checkAnswer();

});