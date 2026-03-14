-- ======================================================
-- PROYECTO: Limpieza y Análisis de Datos E-commerce
-- AUTOR: Miguel Tang
-- ENTORNO: SQLite3 / Linux Mint
-- ======================================================

-- 1. CONFIGURACIÓN DE VISUALIZACIÓN 
.headers on
.mode table
.mode column 

-- 2. LIMPIEZA INICIAL
-- Eliminamos registros basura que no aportan valor al negocio (264 registros detectados)
DELETE FROM marketing 
WHERE customer_lifetime_value IS NULL 
   OR customer_lifetime_value = '' 
   OR customer_lifetime_value = 'NaN';

-- 3. ANÁLISIS DE NEGOCIO: Clientes VIP
-- Filtramos clientes con alto valor en el canal de Social Media
SELECT id, channel, customer_lifetime_value 
FROM marketing 
WHERE channel = 'Social Media' 
  AND CAST(customer_lifetime_value AS REAL) > 10000;

-- 4. REPORTE GERENCIAL: Rendimiento por Región
-- Calculamos el total de clientes y el valor promedio por zona geográfica
SELECT 
    region, 
    COUNT(*) AS total_clientes, 
    ROUND(AVG(customer_lifetime_value), 2) AS valor_promedio
FROM marketing 
GROUP BY region
ORDER BY valor_promedio DESC;

-- 5. EXPORTACIÓN DE RESULTADOS
-- Guardamos a un archivo externo para entrega final
.mode csv
.output reporte_final_vip.csv
SELECT * FROM marketing WHERE customer_lifetime_value > 10000;
.output stdout
