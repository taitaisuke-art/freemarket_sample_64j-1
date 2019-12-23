// turbolinksを先に読み込む
$(document).on('turbolinks:load', function() {

  // 画像を管理するための配列を定義する。
  var images = [];

  // htmlを定義
  function buildHTML(imgSrc){
    var html =  `<div class="preview-box">
                  <div class="preview-box__img-box">
                    <img src="${imgSrc}", class="image">
                  </div>
                  <div class="preview-box__select">
                    <div class="preview-box__select--edit">
                    <p>編集</p>
                  </div>
                  <div class="preview-box__select--delete">
                    <p>削除</p>
                  </div>
                </div>
              </div>`
    // .dropzoneの配列の最初に追加
    $('.dropzone').prepend(html);
  };


  // 画像を入れた時にイベント発火
  $('#upload-image').on("change", function(e){
    // イベント発火したファイルを定義
    var files = e.target.files;
    // 画像のファイルを一つづつ、先ほどの画像管理用の配列に追加する。
    for (var i = 0, f; f = files[i]; i++){
      // FileReaderを新しく作成し、定義したreaderに返す
      let reader = new FileReader();
      reader.readAsDataURL(f);
      reader.onload = function(){
        let imgSrc = reader.result;
        // htmlの呼び出し
        buildHTML(imgSrc);
        images.push(imgSrc);
      }
    }
  });
  
  // 削除ボタンを押すとイベント発火
  $(document).on('click', '.preview-box__select--delete p', function(){
    $(this).closest('.preview-box').remove();
  });

  // 削除ボタンを押すとイベント発火(既存画像用)
  $(document).on('click', '.preview-box__select--delete2 p', function(){
    if ($('.preview-box__select--delete2 p').length == 1) {
      alert('削除できません');
      //要素の効果を無効化する
      return false;
    } else {
    $(this).closest('.image_box').remove();
    }
  });


  // ドロップしたらイベント発火
  $('.item-label').on('drop', function(e){
    // 画面の遷移を行わないように制御する
    e.preventDefault();
    // イベント伝播を行わないようにする
    e.stopPropagation();
    // dropイベントは、e.originalEvent を使う必要がある
    let dropImages = e.originalEvent.dataTransfer.files;
      // 画像のファイルを一つづつ、先ほどの画像管理用の配列に追加する。
      for(let i = 0; i < dropImages.length; i++ ) {
        // 画像のurlを取得
        let imgSrc = URL.createObjectURL(dropImages[i]);
        // htmlの呼び出し
        buildHTML(imgSrc);
        // (pushメソッドで)配列の最後に追加
        images.push(dropImages[i].name);
      }
  });

// 手数料計算
// 販売金額を入れたらイベント発火
$('#item_price').on('input',function() {
  // 販売金額を定義
  var data = $('#item_price').val();
  // 販売利益を定義(販売金額の１割引)
  var profit = Math.round(data * 0.9)
  // 手数料の定義
  var fee = (data - profit)
  $('.sales-fee-price').html(fee)
  // 手数料に￥をつける
  $('.sales-fee-price').prepend('¥')
  $('.sales-profit-price').html(profit)
  // 販売利益に￥をつける
  $('.sales-profit-price').prepend('¥')
});
  
  
  // 削除ボタンを押すとイベント発火
  $(document).on('click', '.preview-box__select--delete p', function(){
    // 削除を押された画像をremove
    $(this).closest('.preview-box').remove();
  });
  
  
  // 手数料計算
  // 販売金額を入れたらイベント発火
  $('#item_price').on('input',function() {
    // 販売金額を定義
    var data = $('#item_price').val();
    // 販売利益を定義(販売金額の１割引)
    var profit = Math.round(data * 0.9)
    // 手数料の定義
    var fee = (data - profit)
    $('.sales-fee-price').html(fee)
    // 手数料に￥をつける
    $('.sales-fee-price').prepend('¥')
    $('.sales-profit-price').html(profit)
    // 販売利益に￥をつける
    $('.sales-profit-price').prepend('¥')
  });

  // ブラウザの制御
  $(document).on("dragover", e => {
    // 画面の遷移を行わないように制御する
    e.stopPropagation();
    // イベント伝播を行わないようにする
    e.preventDefault();
  });
});