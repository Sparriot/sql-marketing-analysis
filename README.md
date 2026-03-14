# Data Engineering: Marketing Dataset Cleanup & Analysis

## Contexto
Análisis de un dataset de E-commerce con 6,000 registros usando **SQLite3** en un entorno de bajos recursos (Linux Mint / 2GB RAM).

## Problemas resueltos
- **Importación de datos**: Corrección de delimitadores y manejo de errores en líneas finales del CSV.
- **Data Cleaning**: Identificación y eliminación de 264 registros con valores `NULL` y `NaN` en la columna `customer_lifetime_value`.
- **Optimización**: Uso de comandos de terminal para visualización eficiente (`.mode table`).

## Consultas Clave (SQL)
```sql
-- Limpieza de datos
DELETE FROM marketing WHERE customer_lifetime_value IS NULL OR customer_lifetime_value = 'NaN';

-- Reporte de ROI por Región
SELECT region, AVG(customer_lifetime_value) FROM marketing GROUP BY region;
