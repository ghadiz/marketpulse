CREATE TABLE enriched_metrics (
    id                BIGSERIAL PRIMARY KEY,
    stock_id          BIGINT        NOT NULL REFERENCES stocks(id),
    metric_date       DATE          NOT NULL,
    daily_change_pct  DECIMAL(8,4),
    moving_avg_7d     DECIMAL(10,4),
    volatility_score  DECIMAL(8,4),
    trend             VARCHAR(10),
    created_at        TIMESTAMP     DEFAULT NOW(),
    CONSTRAINT uq_metric_stock_date UNIQUE (stock_id, metric_date)
);


CREATE INDEX idx_metrics_stock_id   ON enriched_metrics(stock_id);
CREATE INDEX idx_metrics_date       ON enriched_metrics(metric_date);