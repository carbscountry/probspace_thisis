# probspace_thisis
probspaceで開催されている研究論文の採択予測こんぺ
- [コンペリンク](https://comp.probspace.com/competitions/paper_acception)
- [notion](https://www.notion.so/Probspace-f7f63e7dec5b420780e001f667a7a0ee?pvs=4)

## 起動方法


#### 0. 上の階層の docker-compose より、database コンテナを立ち上げる


#### 1. 下記コマンドでビルドとコンテナ起動を行う
```
$ docker-compose up -d app
```

#### 2. コンテナにアクセスし、ライブラリをインストール
```
$ docker-compose exec -it app /bin/bash

root@aa1519d1a400:/workspace# poetry lock
root@aa1519d1a400:/workspace# poetry install
```

#### 3. jupyter を起動
```
root@aa1519d1a400:/workspace# jupyter lab --allow-root --no-browser --NotebookApp.token='' --port 8888 --ip=0.0.0.0
