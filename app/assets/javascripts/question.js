$(function(){

  // ランダム表示
  function shuffleContent(container) {
    var content = container.find("> *");
    var total = content.size();
    content.each(function() {
      content.eq(Math.floor(Math.random()*total)).prependTo(container);
    });
  }
  $(function() {
    shuffleContent($("ul#selects"));
  });

  // 問題の正誤表示
  function checkAnswer() {
    $("#answer").on("click", function(){
      $(this).addClass("correct");
      btn.classList.remove('disable');
    });
    $(".answers").on("click", function(){
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