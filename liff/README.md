- [Rails7でLIFFを用いたLINEログインのハンズオンを作ってみた](https://qiita.com/mayuyuyuyunn/items/fa82cd1a724c8007f384)


### line設定取得用API

シークレットのベタ打ちをしないためにちょっと追加

```console
$ rails g controller api::v1::line --no-helper --no-assets --no-view-specs --skip-template-engine
```

```console
EDITOR="vim" bin/rails credentials:edit --environment development
line:
  channel_id: <channel-id>
  liff_id: <liff-id>
```

### その他

LIFFログイン非公開状態の時に招待するメールアドレスが同じでも別のLINEアカウントの場合があり
招待済みなのにログインがされず400のエラーが出る部分でハマった。
LINEのアカウントでビジネスアカウントを作っていたので個人アカウントでログインしても認証がされなかった。
