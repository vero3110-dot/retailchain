# retailchain
Práctica
UNION y UNION ALL: consolidando inventario de múltiples sucursales

Propósito del ejercicio
En el trabajo real de un analista de datos es muy frecuente recibir datos de distintas fuentes con la misma estructura y necesitar combinarlos en un único resultado. En esta práctica vas a aprender a distinguir cuándo necesitás un catálogo limpio sin duplicados (UNION) y cuándo necesitás la totalidad de los registros para un análisis de volumen (UNION ALL), dos decisiones técnicas con impacto directo en la calidad del análisis.

Contexto
Sos analista de datos en RetailChain, una cadena de retail con dos sucursales. Cada sucursal gestiona su propio inventario en tablas separadas y te pidieron dos reportes distintos: uno para el área comercial que necesita el catálogo unificado de productos, y otro para el área de operaciones que necesita auditar el stock total físico de toda la cadena.

¿Cuántas filas devuelve cada consulta y por qué son distintas? Explicá con ejemplos concretos de los datos qué filas se eliminaron con UNION.
La consulta union all trae 14 lineas ya que no elimina ninguna linea de las sucursales sumadas, la consulta union trae 11 lineas y eso se debe a que al contar los id_producto de ambas sucursales elimina los duplicados
¿Por qué UNION ALL es más eficiente que UNION? ¿Qué operación adicional realiza UNION internamente que consume más recursos?
UNION ALL es mas eficiente que UNION porque solo combina las consultas, union debe primero identificar las filas duplicadas y por eso consume mas recursos.
¿En qué casos de negocio usarías cada uno? Dá al menos dos ejemplos reales distintos a los del ejercicio.
UNION: 1. armar un maestro de datos eligiendo union de varias consultas y obteniendo los registros no duplicados de un campo
UNION ALL: 1. Analizar las diferencias entre dos tablas y ver cuales son las que no tienen registros completos.
¿Qué pasa si las columnas de ambas consultas no coinciden en número o tipo? ¿Qué error genera SQL?
