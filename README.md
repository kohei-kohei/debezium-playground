# Debezium Playground

## MySQL

データを追加する
```bash
docker exec mysql mysql -u root -ppassword playground -e "INSERT INTO items (name) VALUE ('Tシャツ');"
```

データを更新する
```bash
docker exec mysql mysql -u root -ppassword playground -e "UPDATE items SET name = 'ロングスリーブTシャツ' WHERE id = 1;"
```

データを削除する
```bash
docker exec mysql mysql -u root -ppassword playground -e "DELETE FROM items WHERE id = 1;"
```

テーブルからデータを取得する
```bash
docker exec mysql mysql -u root -ppassword playground -e "SELECT * FROM items;"
```

## Kafka

トピック一覧を取得する
```bash
docker exec kafka-broker kafka-topics --list --bootstrap-server kafka-broker:9092
```

指定したトピックからメッセージを取得する
```bash
docker exec kafka-broker kafka-console-consumer --bootstrap-server kafka-broker:9092 \
       --topic debezium_playground_topic.playground.items --from-beginning
```

## Debezium

ステータスを確認する
```bash
curl -X GET http://localhost:8083/connectors/debezium-connector/status
```
