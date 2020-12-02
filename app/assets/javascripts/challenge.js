// 問題を一問づつ表示させる
// 問題の回答は一度
// 問題を回答したら次の問題へ
// 正解数を集計する


$(function(){
// 各問題「box+数字」IDを付与する
  $('.playPage__test__container').each(function(index, element) {
    $(element).attr('id','box' + (index + 1).toString().padStart(2, '0'));
    $(element).addClass('close');
    $('#box01').removeClass('close');
    });

// NEXTボタンを押すと２問目の問題にする
  function nextAnswer() {
    $('#challengeNextbtn1').on("click", function(){
      $('#box01').removeClass('open');
      $('#box01').addClass('close');
      $('#box02').removeClass('close');
      $('#box02').addClass('open');
    });

    $('#challengeNextbtn2').on("click", function(){
      $('#box02').removeClass('open');
      $('#box02').addClass('close');
      $('#box03').removeClass('close');
      $('#box03').addClass('open');
    });

    $('#challengeNextbtn3').on("click", function(){
      $('#box03').removeClass('open');
      $('#box03').addClass('close');
      $('#box04').removeClass('close');
      $('#box04').addClass('open');
    });

    $('#challengeNextbtn4').on("click", function(){
      $('#box04').removeClass('open');
      $('#box04').addClass('close');
      $('#box05').removeClass('close');
      $('#box05').addClass('open');
    });

    $('#challengeNextbtn5').on("click", function(){
      $('#box05').removeClass('open');
      $('#box05').addClass('close');
      $('#box06').removeClass('close');
      $('#box06').addClass('open');
    });

    $('#challengeNextbtn6').on("click", function(){
      $('#box06').removeClass('open');
      $('#box06').addClass('close');
      $('#box07').removeClass('close');
      $('#box07').addClass('open');
    });

    $('#challengeNextbtn7').on("click", function(){
      $('#box07').removeClass('open');
      $('#box07').addClass('close');
      $('#box08').removeClass('close');
      $('#box08').addClass('open');
    });

    $('#challengeNextbtn8').on("click", function(){
      $('#box08').removeClass('open');
      $('#box08').addClass('close');
      $('#box09').removeClass('close');
      $('#box09').addClass('open');
    });

    $('#challengeNextbtn9').on("click", function(){
      $('#box09').removeClass('open');
      $('#box09').addClass('close');
      $('#box10').removeClass('close');
      $('.playPage__test__container__btnBox').addClass('close');
      $('.playPage__finish').removeClass('close');
    });
  }
  nextAnswer();
  
});
