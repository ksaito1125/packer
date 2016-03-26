# packer
packerでサーバイメージを作成するソースです。

## 環境

packerのバージョンは、下記の通り

```
$ packer version
Packer v0.10.0

$
```

## 作成手順

下記でboxファイルが作成されます。

```
$ cd [OS名]
$ packer build [OS名]-[バージョン].json
```

## 確認済みのOS

| OS           | jsonファイル                   |
|:------------:|:-------------------------------|
| ubuntu 15.04 | ubuntu/ubuntu-15.04-amd64.json |
| ubuntu 15.10 | ubuntu/ubuntu-15.10-amd64.json |

## 公開



* [vagrantcloud](https://atlas.hashicorp.com)にログイン
* 「builds」を選択
* 「Build Vagrant Boxes with Packer and Atlas」を選択
* メニューに従ってビルド

### 使い方 ###

```bash
vagrant init ksaito/[OS名]; vagrant up --provider virtualbox
```
