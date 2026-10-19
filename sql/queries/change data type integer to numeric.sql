ALTER TABLE campaigns
ALTER COLUMN discount_rate TYPE NUMERIC(5,4)
USING discount_rate::NUMERIC(5,4);