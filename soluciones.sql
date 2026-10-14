-- ══════════════════════════════════════════
-- RetailChain — UNION y UNION ALL
-- Autor: [Tu nombre]
-- Fecha: [Fecha de entrega]
-- ══════════════════════════════════════════

-- ── CONSULTA 1: UNION ────────────────────
-- Reporte de Catálogo Unificado
-- Pregunta de negocio: ¿Qué productos únicos comercializa
-- la empresa en toda su red de sucursales?
-- Operador: UNION (elimina filas completamente duplicadas)

-- [Tu consulta aquí]
SELECT ID_PRODUCTO FROM inventario_sucursal_norte
UNION 
SELECT ID_PRODUCTO FROM inventario_sucursal_sur

-- ── CONSULTA 2: UNION ALL ────────────────
-- Auditoría de Stock Total
-- Pregunta de negocio: ¿Cuántos registros físicos de stock
-- existen en total entre ambas sucursales?
-- Operador: UNION ALL (mantiene todos los registros incluyendo duplicados)

-- [Tu consulta aquí]

SELECT *,'NORTE'AS TIPO FROM inventario_sucursal_norte
UNION ALL
SELECT *, 'SUR' FROM inventario_sucursal_sur

-- ── CONSULTA 3: COMPARACIÓN DE RESULTADOS ─
-- Ejecutá estas dos consultas para comparar cuántas filas
-- devuelve cada operador y explicá la diferencia en tu README

SELECT COUNT(*) AS filas_unioN  FROM (SELECT ID_PRODUCTO FROM inventario_sucursal_norte
UNION 
SELECT ID_PRODUCTO FROM inventario_sucursal_sur     )AS resultado_union;
--RESULTADO 11- ELIMINA LAS FILAS CON ID_PRODUCTO DUPLICADO

SELECT COUNT(*) AS filas_union_all
FROM (SELECT *,'NORTE' AS TIPO FROM inventario_sucursal_norte
UNION ALL
SELECT *, 'SUR' FROM inventario_sucursal_sur) AS resultado_union_all;
--RESULTADO 14- TRAE TODAS LAS FILAS DE AMBAS CONSULTAS