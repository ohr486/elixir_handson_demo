# Elixir Handson Demo

[![Join the chat at https://gitter.im/ohr486/elixir_handson_demo](https://badges.gitter.im/ohr486/elixir_handson_demo.svg)](https://gitter.im/ohr486/elixir_handson_demo?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Gitterのイベントルームを用意しました。[こちら](https://gitter.im/ohr486/elixir_handson_demo?utm_source=share-link&utm_medium=link&utm_campaign=share-link)からご参加ください。

## セットアップ

```sh
$ mix deps.get
$ mix compile
```

## 起動

```sh
$ iex -S mix
```

* Hello画面
``$ open http://localhost:4000/``

* Greet画面
``$ open http://localhost:4000/greet/あなたの名前``

* 静的ファイル
``$ open http://localhost:4000/static/sample.html``

* チャット
``$ open http://localhost:4000/static/chat.html``
