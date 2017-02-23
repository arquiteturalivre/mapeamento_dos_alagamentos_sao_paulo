# Mapeamento dos alagamentos na cidade de São Paulo

Esse projeto tem como objetivo mapear os alagamentos na cidade de São Paulo com base nos dados fornecidos pelo CGE.
Com a finalidade social e didática serão utilizados apenas softwares livres e bases públicas e livres de dados.
O resultado final desse trabalho é a disponibilização de arquivos georeferenciados (shapefiles) dos alagamentos da cidade de São Paulo.

## Preparando os dados

Os dados dos alagamentos podem ser consultados no [website do CGE](http://www.cgesp.org/v3/alagamentos.jsp), que gentilmente cederam atravéz da planilha enviada.
Inicialmente a planilha enviada em formato .xlsx foi convertida para formato ODF e a coluna DATA, convertida em tipo Date e as colunas INICIO e FIM convertidas em DateTime, para então serem convertidos em formato CSV
Como a intenção é de relacionar esses dados com bases georeferenciadas de endereços atravéz da união dos campos/colunas LOCAL e REFERENCIA a planilha foi então convertida em CSV para poder então ser importada com facilidade para bases de dados como o Sqlite e Spatialite.

## Spatialite

Para poder tratar os dados com mais eficiência do que em planilhas, banco de dados DBF ou mesmo em texto, o Spatialite acaba sendo uma boa alternativa por ter os recursos de um banco de dados relacional sem precisar de um servidor de dados como seria o caso do PostGis
O primeiro passo portanto seria criar um banco de dados ...

```bash
saptialite alagamentos.sqlite
```

 Depois do banco de dados criado, criar uma tabela para então podermos importar os dados.

 
```sqlite
CREATE TABLE
IF NOT EXISTS alagamentos (
    data date,
    local text,
    referencia text,
    sentido text,
    inicio datetime,
    fim datetime,
    situacao text,
    subprefeitura text
);
```
