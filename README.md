# Debezium Playground

## MySQL

データを追加する
```bash
docker exec mysql mysql -u root -ppassword playground -e "INSERT INTO items (name) VALUE ('ジーパン');"
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
       --from-beginning --topic debezium_playground_topic.playground.items
```

## Debezium

ステータスを確認する
```bash
curl -X GET http://localhost:8083/connectors/debezium-connector/status
```
