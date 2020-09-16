# 適当に作ったRailsアプリを heroku へデプロイする練習
### Container Registry を利用する場合
ローカル環境から直接 heroku へデプロイする  
関連記事：https://ysirman.hatenablog.com/entry/2020/09/03/122720

### Github → CircleCI → heroku の流れでデプロイ
`stack` に `container` を指定するとうまくいかなかったので、  
・ローカル：Docker使用  
・heroku：Docker未使用  
としてデプロイした。  
関連記事：https://ysirman.hatenablog.com/entry/2020/09/16/230022

### heroku.yml
`stack` に `container` を指定する場合に使用する。  
（念のため、残している）
