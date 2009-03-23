フィーチャ: OpenIDを使ってサインインする
  メールアドレスでactivationとか面倒なので、
  アカウントが無ければその場で作成される。
  テストにはopenid_fake_serverを利用。

  テンプレ: サインインページへの遷移
    前提 言語は"<言語>"
    かつ "トップページ"にアクセス

    もし "<サインインテキスト>"のリンクをクリックする
    ならば "<サインインページタイトル>"が表示されていること

  例:
    |言語|サインインテキスト|サインインページタイトル|
    |日本語|サインイン|サインイン|
    |英語|Sign in|Sign in|

  シナリオ: アカウントが無い状態でのサインイン
    前提 新規アカウント"kakutani"の作成を試みる
    かつ 言語は"英語"
    かつ "サインインページ"にアクセス

    もし OpenIDでrubykaigi.orgにサインイン
    かつ OpenID Providerで認証に成功する
    ならば "Sign up"と表示されていること
    かつ  OpenIDのURLが表示されていること
