# Retornar a quantidade de alagamentos por subprefeituras

CREATE VIEW alagamentos_por_subprefeituras AS
SELECT SUB, subprefeitura, Geometry, Count(alagamentoscsv.PK_UID) AS quantidade_de_alagamentos FROM alagamentoscsv
    LEFT JOIN siglas_subprefeituras
    ON SUB = sigla
    LEFT JOIN subprefeituras_shp
    ON subprefeitura = sp_nome
    GROUP BY SUB;