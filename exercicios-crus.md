# exercicio 04 sugestivo/opcional de escolha  

## INserindo dados na tabela generos

```sql  

--tabela generos
INSERT INTO generos (nome) VALUES('Terror'); 
INSERT INTO generos (nome) VALUES('Animação'); 
INSERT INTO generos (nome) VALUES('Comédia'); 
INSERT INTO generos (nome) VALUES('Aventura'); 
INSERT INTO generos (nome) VALUES('Suspense'); 
INSERT INTO generos (nome) VALUES('Ficção Cientifica') ; 

```
## Inseriondo dados na tabela filmes
```sql
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

``` 
### Inserindo detalhes a tabela filmes 
```sql

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

INSERT INTO detalhes(duracao, sinopse, bilheteria, orcamento, filme_id) 
VALUES( 
    180.00, 
    'Após Thanos eliminar metade das criaturas vivas, os Vingadores têm de lidar com a perda de amigos e entes queridos.', 
    NULL, 
    3560000000.00, 
    6               
); 

INSERT INTO detalhes(duracao, sinopse, bilheteria, orcamento, filme_id) 
VALUES( 
    81.0, 
    'Vinte mil anos atrás, num mundo coberto de gelo, o mamute Manfred e a preguiça Sid resgatam um bebê humano órfão.', 
    NULL, 
     600000000.00, 
    2               
); 

INSERT INTO detalhes(duracao, sinopse, bilheteria, orcamento, filme_id) 
VALUES( 
    110.00, 
    'O traficante David precisa ir ao México pegar um carregamento de maconha.', 
    NULL, 
     370000000.00, 
    3               
); 

INSERT INTO detalhes(duracao, sinopse, bilheteria, orcamento, filme_id) 
VALUES( 
    112.00, 
    'Os investigadores paranormais Ed e Lorraine Warren trabalham para ajudar a família aterrorizada.', 
    NULL, 
     200000000.00, 
    1               
);    

``` 

## Usando Select 

```sql  

-- mudando as datas 
UPDATE filmes SET lancamento = '2013-09-27'
WHERE  genero_id = 3;  

UPDATE filmes SET lancamento = '2013-09-13' 
WHERE genero_id = 1;

``` 

# Usando delete 

```sql  
-- deletando filme não deu para deletar por que em detalhes nesse filme
DELETE FROM filmes WHERE id = 7 ; 

```