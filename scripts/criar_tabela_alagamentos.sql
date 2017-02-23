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