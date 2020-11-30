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
    $('.nextQestion').on("click", function(){
      $('.playPage__test__btnBox__btn').removeClass('nextQestion');
      $('#box01').removeClass('open');
      $('#box01').addClass('close');
      $('#box02').removeClass('close');
      $('#box02').addClass('open');
      $('.playPage__test__btnBox__btn').addClass('nextQestion01');
    });
  }
  nextAnswer();

  function nextAnswer01() {
    $('.nextQestion01').on("click", function(){
      $('.playPage__test__btnBox__btn').removeClass('nextQestion01');
      $('#box02').removeClass('open');
      $('#box02').addClass('close');
      $('#box03').removeClass('close');
      $('#box03').addClass('open');
      $('.playPage__test__btnBox__btn').addClass('nextQestion02');
    });
  }
  nextAnswer01();

});
