# Mapeamento dos alagamentos na cidade de São Paulo

Esse projeto tem como objetivo mapear os alagamentos na cidade de São Paulo com base nos dados fornecidos pelo CGE.
Com a finalidade social e didática serão utilizados apenas softwares livres e bases públicas e livres de dados.
O resultado final desse trabalho é a disponibilização de arquivos georeferenciados (shapefiles) dos alagamentos da cidade de São Paulo.

## Preparando os dados

Os dados dos alagamentos podem ser consultados no [website do CGE](http://www.cgesp.org/v3/alagamentos.jsp), que gentilmente cederam atravéz da planilha enviada.
Inicialmente a planilha enviada em formato .xlsx foi convertida para formato ODF e a coluna DATA, convertida em tipo Date e as colunas INICIO e FIM convertidas em DateTime, para então serem convertidos em formato CSV
Como a intenção é de relacionar esses dados com bases georeferenciadas de endereços atravéz da união dos campos/colunas LOCAL e REFERENCIA a planilha foi então convertida em CSV para poder então ser importada com facilidade para bases de dados como o Sqlite e Spatialite.
