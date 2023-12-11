FROM debezium/connect:2.4.1.Final

# ref: https://debezium.io/documentation/reference/2.4/transformations/filtering.html
COPY --chmod=755 ./debezium/plugin/*.jar /kafka/connect/debezium-connector-mysql/
