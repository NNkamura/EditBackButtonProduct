# EditBackButtonProduct
ナビゲーションバー上の戻るボタンを、現在の画面から編集するサンプル

## 1行まとめ
EditBackViewControllerを参照せよ

### 論点
戻るボタンの編集は以下の処理をVCに記載する必要がある。
navigationItem.backBarButtonItem = UIBarButtonItem(title: "BasicStyle", style: .plain, target: nil, action: nil)
この処理は遷移前のVCにて設定を行わなければならない。遷移前に戻るボタンなのだから、遷移前にその役割を記載すべきという理屈も理解できる。

しかし実際に視界に入るのは遷移先であり、遷移先の役割としたい場合も多い。また、実際の開発現場では追加改修が多く、追加した画面側にこの役割を持たせたいという状況もある。
そのため、遷移先にて戻るボタンを修正する需要がある。その回答が"EditBackViewController"に記載のサンプルである。
