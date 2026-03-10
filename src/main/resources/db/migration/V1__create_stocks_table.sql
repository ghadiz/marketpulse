CREATE TABLE stocks (
    id           BIGSERIAL PRIMARY KEY,
    symbol       VARCHAR(10)  NOT NULL UNIQUE,
    company_name VARCHAR(100) NOT NULL,
    created_at   TIMESTAMP    DEFAULT NOW()
);

INSERT INTO stocks (symbol, company_name) VALUES
    ('AAPL',  'Apple Inc.'),
    ('MSFT',  'Microsoft Corporation'),
    ('GOOGL', 'Alphabet Inc.');