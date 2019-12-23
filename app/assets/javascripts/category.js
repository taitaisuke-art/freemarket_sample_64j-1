$(document).on('turbolinks:load', function() {
  function appendOption(category){ // optionの作成
    var html = `<option value="${category.id}">${category.name}</option>`;
    return html;
  }

  $("#item_category_id").on("change", function(){
    console.log(document.getElementById("item_category_id").value);
    // 親ボックスのidを取得してそのidをAjax通信でコントローラーへ送る
    var parentValue = document.getElementById("item_category_id").value;
    // 親ボックスのidが空じゃない時(未選択時のエラー防止)
    if (parentValue != ''){
      $.ajax({
        url: 'category_children',
        type: "GET",
        data: {
          parent_id: parentValue // 親ボックスの値をparent_idという変数にする。
        },
        dataType: 'json'
      })
    }

    // カテゴリーコントローラーのインスタンス変数を引数として渡す
    .done(function(children){
      let html = buildHTML(children);
    })
    .fail(function() {
      alert('エラーが起きました');
    });
  });
});