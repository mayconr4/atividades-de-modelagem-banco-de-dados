#### exercicio 04 sugestivo/opcional de escolha  

```sql  

--tabela generos
INSERT INTO generos (nome) VALUES('Terror'); 
INSERT INTO generos (nome) VALUES('Animação'); 
INSERT INTO generos (nome) VALUES('Comédia'); 
INSERT INTO generos (nome) VALUES('Aventura'); 
INSERT INTO generos (nome) VALUES('Suspense'); 
INSERT INTO generos (nome) VALUES('Ficção Cientifica') ; 


INSERT INTO filmes(titulo, lancamento, genero_id) 
VALUES( 
    'Invocação do mal ', 
    '2025-09-13', 
    1                 
); 
 
INSERT INTO filmes(titulo, lancamento, genero_id) 
VALUES( 
    'Familia Do Bagulho', 
    '2025-09-13', 
    3                 
); 

INSERT INTO filmes(titulo, lancamento, genero_id) 
VALUES( 
    'Era Do gelo', 
    '2002-03-22', 
    2                 
); 

INSERT INTO filmes(titulo, lancamento, genero_id) 
VALUES( 
    'Vingadores O Ultimato', 
    '2019-04-25', 
    6                 
); 

INSERT INTO filmes(titulo, lancamento, genero_id) 
VALUES( 
    'Jumanji', 
    '2019-12-5', 
    4                
); 

INSERT INTO filmes(titulo, lancamento, genero_id) 
VALUES( 
    'O impossivel', 
    '2012-12-21', 
    5                
); 

INSERT INTO detalhes(duracao, sinopse, bilheteria, orcamento, filme_id) 
VALUES( 
    154, 
    'Ano de 2004. Maria e Henry (Naomi Watts e Ewan McGregor) decidem passar as férias de Natal na Tailândia com os três filhos de ambos', 
    NULL, 
    45000000.00, 
    5                
); 

INSERT INTO detalhes(duracao, sinopse, bilheteria, orcamento, filme_id) 
VALUES( 
    120.00, 
    'Spencer volta ao mundo fantástico de Jumanji. Os amigos Martha, Fridge e Bethany entram no jogo e tentam trazê-lo para casa. A turma descobre ainda mais obstáculos e perigos a serem superados.', 
    NULL, 
    950000000.00, 
    4               
);

```