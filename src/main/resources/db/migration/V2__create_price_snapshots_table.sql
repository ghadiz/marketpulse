CREATE TABLE price_snapshots (
    id            BIGSERIAL PRIMARY KEY,
    stock_id      BIGINT       NOT NULL REFERENCES stocks(id),
    open_price    DECIMAL(10,4) NOT NULL,
    close_price   DECIMAL(10,4) NOT NULL,
    high_price    DECIMAL(10,4) NOT NULL,
    low_price     DECIMAL(10,4) NOT NULL,
    volume        BIGINT        NOT NULL,
    snapshot_date DATE          NOT NULL,
    created_at    TIMESTAMP     DEFAULT NOW(),
    CONSTRAINT uq_stock_date UNIQUE (stock_id, snapshot_date)
);

CREATE INDEX idx_snapshots_stock_id ON price_snapshots(stock_id);
CREATE INDEX idx_snapshots_date     ON price_snapshots(snapshot_date);