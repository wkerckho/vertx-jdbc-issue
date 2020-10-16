CREATE TABLE IF NOT EXISTS arr_test
(
    id    String,
    value Array(Float64)
) ENGINE = ReplacingMergeTree()
      ORDER BY (id);

INSERT INTO arr_test (id, value) VALUES ('1ff954bb-9808-4309-9955-fccf1a26266e', [0, 1]);
INSERT INTO arr_test (id, value) VALUES ('96f04539-036b-4cac-8e98-7b29634af1fa', [1, 2]);
INSERT INTO arr_test (id, value) VALUES ('966a1999-9245-4309-b1ad-2348b4b02f44', [2, 3]);
INSERT INTO arr_test (id, value) VALUES ('06107c06-358b-47b1-a53c-0151e2d889a1', [3, 4]);
INSERT INTO arr_test (id, value) VALUES ('c39be823-2f5e-4406-b7d2-fe70dfd228d4', [4, 5]);