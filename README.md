# probspace_thisis
probspaceで開催されている研究論文の採択予測こんぺ
- [コンペリンク](https://comp.probspace.com/competitions/paper_acception)
- [notion](https://www.notion.so/Probspace-f7f63e7dec5b420780e001f667a7a0ee?pvs=4)

## 起動方法


#### 0. 上の階層の docker-compose より、database コンテナを立ち上げる


#### 1. 下記コマンドでビルドとコンテナ起動を行う
```
$ root@aa1519d1a400:/workspace# apt install docker
$ root@aa1519d1a400:/workspace# sudo chmod 666 /var/run/docker.sock
$ docker-compose up -d app
```

#### 2. コンテナにアクセスし、ライブラリをインストール
```
$ docker-compose exec  app /bin/bash

root@aa1519d1a400:/workspace# pip3 install --upgrade pip
root@aa1519d1a400:/workspace# pip3 install -U -r requirements.txt
root@aa1519d1a400:/workspace# pip3 install -r requirements.txt
```

#### 3. jupyter を起動
```
root@aa1519d1a400:/workspace# jupyter lab --allow-root --no-browser --NotebookApp.token='' --port 8888 --ip=0.0.0.0
```
#### 4.http://localhost:8080/ にアクセス

## 番外編　dockerコンテナにvsdcodeをアッタチしてvscodeで開発

#### 1.拡張機能からremote containerをインストール

#### 2.コンテナを起動した後、左のタブにあるRemote expolrerをクリックし、上のremoteをcontainersに変更。

#### 3.CONTAINERS/Dev Containersから起動しているコンテナをドラックして一番左にあるattch to Containerをクリック

#### 4.vscodeが起動したらまずは拡張機能からpythonをインストールして、コマンドパレットを開き、select python interpreterを検索しpoetry直下のpythonを選ぶ


