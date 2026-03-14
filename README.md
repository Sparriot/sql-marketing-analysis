# 📊 SQL Marketing Analysis & Data Cleaning
Proyecto de ingeniería de datos enfocado en la limpieza y análisis de un dataset de 6,000 registros de e-commerce.

## 🛠️ Entorno Técnico
- **OS:** Linux Mint (XFCE)
- **Engine:** SQLite3
- **Hardware:** Entorno optimizado para bajos recursos (2GB RAM / i3).

## 🧹 Proceso de Limpieza (Data Cleaning)
Se detectaron y eliminaron **264 registros corruptos** que contenían valores `NULL` o `NaN` en métricas críticas como el *Customer Lifetime Value*.

## 📈 Resultados Clave
- **Segmentación VIP:** Identificación de clientes con CLV > 10,000.
- **Análisis Regional:** Cálculo de promedios de gasto y retorno por zona geográfica.
- **Automatización:** Creación de scripts SQL para la generación de reportes automáticos en CSV.

## 🚀 Cómo ejecutar este proyecto
1. Clonar el repositorio.
2. Ejecutar el script desde la terminal:
   `sqlite3 marketing.db < sql/limpieza_y_analisis.sql`
