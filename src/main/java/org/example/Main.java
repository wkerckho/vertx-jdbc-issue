package org.example;

import io.vertx.core.Vertx;
import io.vertx.core.json.Json;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.jdbc.JDBCClient;

public class Main {

    public static void main(String[] args) {
        var vertx = Vertx.vertx();
        var config = new JsonObject()
                .put("driver_class", "ru.yandex.clickhouse.ClickHouseDriver")
                .put("url", "jdbc:clickhouse://localhost:8123/default");
        var client = JDBCClient.create(vertx, config);

        client.query("select * from arr_test", ar -> {
            if (ar.succeeded()) {
                System.out.println(Json.encodePrettily(ar.result().getResults()));
            } else {
                ar.cause().printStackTrace();
            }
        });
    }

}
