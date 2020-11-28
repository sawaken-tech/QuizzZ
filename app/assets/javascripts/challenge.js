// 問題を一問づつ表示させる
// 問題の回答は一度
// 問題を回答したら次の問題へ
// 正解数を集計する


$(function(){
// 各問題「box+数字」IDを付与する
  $('.playPage__test__container').each(function(index, element) {
    $(element).attr('id','box' + (index + 1).toString().padStart(2, '0'));
    });

// NEXTボタンを押すと２問目の問題にする
  function nextAnser() {
    $("#nextbtn").on("click", function(){
      //jsでCSSを操作するところから
    })
  }

});
