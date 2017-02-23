# Retornar a quantidade de alagamentos por subprefeituras

CREATE VIEW alagamentos_por_subprefeituras AS
SELECT SUB as sub, subprefeitura, Geometry as geometry, Count(alagamentoscsv.PK_UID) AS quantidade_de_alagamentos 
    FROM alagamentoscsv
    LEFT JOIN siglas_subprefeituras
    ON SUB = sigla
    LEFT JOIN subprefeituras_shp
    ON subprefeitura = sp_nome
    GROUP BY SUB;

INSERT INTO views_geometry_columns
    (view_name, view_geometry, view_rowid, f_table_name, f_geometry_column)
  VALUES ('alagamentos_por_subprefeituras', 'geometry', 'sub', 'subprefeituras_shp', 'geometry');