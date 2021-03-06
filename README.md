# TwitterCloneアプリケーション

* Ruby on Railsを使ったアプリケーションであること

* HTML、CSSを使用して、最低限のフロント部分（header、footer、topページ）を作成すること

* つぶやきの投稿、投稿確認、編集、一覧表示、削除機能があること

* 確認画面から投稿画面に戻った時、打ち込んだ内容が保持されるようにすること

* 1文字以上140文字以下しかつぶやけないようにすること

* 140文字より多い文字数、または内容が空で登録しようとした場合、エラーメッセージが出るようにすること

* つぶやきを登録するテーブル名にはpostsを使用すること

* postsテーブルは、本文を表すcontentカラムのみを有すること（id、timestampはデフォルトで生成されるのでそのままで構いません。）

* Githubにソースコードを送信し、そのリポジトリのURLを提出すること

* エラーが出ないようにすること

* コミットメッセージが、一目見てそのコミットの意味がわかるものであること

* 一つの機能を作成したら、一つのコミットをするようにすること

* あなたの地域のタイムゾーンに設定すること

* 下記に記述してあるコーディング規約に沿った実装を行うこと
・インデントは必ず綺麗につけること
・不要なcssやjs、helperのファイルは削除しておくこと（ディレクトリ内の見通しがよくなるため）
・不要な記述やコメントは削除すること
・Gemfileはコメント行をあらかじめ消しておくこと
・改行は意味のある単位で行なった方がみやすいため、そうすること
・意味のない空行は消しておくこと
・ロケット記法は使わないこと
・変数やアソシエーション名は、機能に関連した名前づけを心がけ、good_answersのようにスネークケースできちんと単語を分けること
・省略した名前は基本的に使わない(意味を予測しづらいため)
・privateより下の行はprivateと同じ深さのインデントにする
・updateなどの記述の際、保存に失敗した時の処理もちゃんと記述しておくこと。
（viewが見つけられなくてエラーになったりしないように注意する）

* bootstrap、jquery-rails、デバック関係以外のgemを使用していないこと
