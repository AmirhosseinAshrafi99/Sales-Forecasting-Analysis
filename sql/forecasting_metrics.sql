CREATE TABLE model_metrics (
    Model TEXT,
    MAE REAL,
    RMSE REAL,
    MAPE REAL
);

INSERT INTO model_metrics VALUES
('Seasonal Naive',15467.89,18985.70,24.52);

INSERT INTO model_metrics VALUES
('Holt-Winters',11454.75,12542.59,22.59);

INSERT INTO model_metrics VALUES
('SARIMA',17017.18,19683.79,39.97);

SELECT *
FROM model_metrics
ORDER BY MAPE;