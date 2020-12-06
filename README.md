## 準備
```sh
cp .env.sample .env
cp .ssh/config.sample .ssh/config
vi .env
vi .ssh/config
```

* 鍵を `keys/` に配置

```sh
docker-compose build
```

## Dockerログイン
```sh
docker-compose exec mysql bash
```

## SSHポートフォワード
```sh
ssh -4fNL $PORT:$HOST:3306 -o StrictHostKeyChecking=no $STEP_HOST
```

## 接続
### DB指定なし
```sh
mysql -u $USERNAME -p$PASSWORD -h 127.0.0.1 -P $PORT
```

### DB指定あり
```sh
mysql -u $USERNAME -p$PASSWORD -h 127.0.0.1 -P $PORT $DATABASE
```

## SSHプロセス削除
```sh
ps aux | grep ssh
kill XXX # プロセスID
```
