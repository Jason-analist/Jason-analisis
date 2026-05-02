-- 1. Cuánto PET se bota al año por municipio
SELECT 
    municipio,
    kg_pet_mes * 12 as kg_pet_anual,
    ROUND(kg_pet_mes * 12 / 1000, 1) as toneladas_anuales
FROM residuos_pet_santander
ORDER BY kg_pet_anual DESC;

-- 2. Cuántos ladrillos salen con ese plástico
-- Dato: 1 ladrillo eco = 2kg de PET compactado
SELECT 
    municipio,
    kg_pet_mes * 12 as kg_pet_anual,
    FLOOR(kg_pet_mes * 12 / 2) as ladrillos_posibles
FROM residuos_pet_santander;

-- 3. Cuántas casas VIS se pueden hacer
-- Dato: 1 casa VIS = 2500 ladrillos aprox
SELECT 
    municipio,
    FLOOR(kg_pet_mes * 12 / 2 / 2500) as casas_vis_posibles,
    FLOOR(kg_pet_mes * 12 / 2 / 2500) * 4 as personas_con_techo
FROM residuos_pet_santander
ORDER BY casas_vis_posibles DESC;