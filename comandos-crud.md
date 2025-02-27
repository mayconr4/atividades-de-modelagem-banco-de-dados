# Comandos para operações crud no banco de dados  

## Resumo 

- C  -> **C**reat  -> **INSERT**: inserir dados/registros na tabela 
- R  -> **R**ead   -> **SELECT**: consultar/ler dados/registros na tabela
- U  -> **U**pdate -> **UPDATE**: atualizar dados/registros na tabela  
- D  -> **D**lete  -> **DELETE**: excluir dados/registros na tabela  


--- 

## INSERT (fabricantes ) 

```sql 
INSERT INTO fabricantes (nome) VALUES('Asus'); 
INSERT INTO fabricantes (nome) VALUES('Dell'); 
INSERT INTO fabricantes (nome) VALUES('Apple'); 

INSERT INTO fabricantes (nome) VALUES('LG'), ('Samsung'), ('Brastemp');
``` 

## SELECT (fabricantes)

```sql 
SELECT * FROM fabricantes; 
``` 

---


## INSERT (Produtos) 

```sql 
INSERT INTO produtos(nome, detalhes, preco, quantidade, fabricante_id) 
VALUES( 
    'Ultrabook', 
    'Equipamento de última geração cheio de recursos, e ect e tal...', 
    3999.45,
    7,
    2 -- id do fabricante Dell        
); 

INSERT INTO produtos(nome, detalhes, preco, quantidade, fabricante_id) 
VALUES(  
    'Tablet Android',
    'Tablet com aversão 16 do sistema operacional Android, possui tela de 10 polegadas e armazenamento de 128 GB. Estou sem ideias do que escrever aqui.', 
    900,
    12, 
    5 -- Samsung
); 

INSERT INTO produtos(nome, detalhes, preco, quantidade, fabricante_id) 
VALUES( 
    'geladeira',
    'Refrigerador frost-free com acessoa á internet', 
    5000,
    12, 
    7 -- Brastemp
), 
( 
    'iPhone 18 pro max Ferradão',
    'Smartphone Apple cheio das frescuras e caro pra caramba... coisa der rico..',
    9666.66, 
    3, 
    3 -- Apple  

), 
( 
    'Ipad mini',
    'Tablet Apple com tela retina display e bla bla bla e mó bunitinha',
    4999.12,
    5,
    3 -- Apple

);


``` 

## exercicio 03   

```sql 
INSERT INTO fabricantes (nome) VALUES('Positivo'), ('Microsoft');  

INSERT INTO produtos(nome, detalhes, preco, quantidade, fabricante_id) 
VALUES( 
    'Xbox Series S', 
    'Velocidade e desempenho de ultimá geração', 
    1997.00, 
    5, 
    7

);  

INSERT INTO produtos(nome, detalhes, preco, quantidade, fabricante_id) 
VALUES( 
    'Notebook Motion', 
    'Intel Dual Core $g8 de RAM, 128GB SSD e Tela 14,1 polegadas', 
    1213.65, 
    8, 
    8

); 


``` 

--- 

## SELECT (produtos) 

```sql  

-- lendo todas as colunas de todos os registros 
SELECT * FROM produtos;

-- Lendo somente nome e preco de todos os registros
SELECT nome, preco FROM produtos;  
SELECT preco, nome FROM produtos; 

-- Mostrar nome , preco e quantidade SOMENTE  dos produtos que custam abaixo de 5000 
SELECT nome, preco, quantidade FROM produtos 
WHERE preco < 5000;  


-- Mini-Exercicio: mostre o nome e descrição somente dos produtos da aplle 
SELECT nome, detalhes  FROM produtos 
WHERE fabricante_id = 3;
```

### Operadores lógicos:E, OU e Não 

#### E (AND) 

```sql  
-- Exibir nome e preco dos produtos que custam entre 2000 e 6000 
SELECT nome, preco FROM produtos
WHERE preco >= 2000 AND preco <= 6000;
``` 


#### OU (OR)
```sql 
-- Exibir nome, detalhes dos produtos da Aplle e Samsung 
SELECT nome, detalhes FROM produtos
WHERE fabricante_id = 3 OR fabricante_id = 5; 

-- versão usando a função SQL IN()
SELECT nome, descricao FROM produtos
WHERE fabricante_id IN(3, 5);
``` 

#### NÃO (NOT) 

```sql 
-- Nome e detalhe e preço de todos os produtos EXCETO da Positivo 
SELECT nome, detalhes, preco FROM produtos 
WHERE NOT fabricante_id = 8; 

-- Versão usando operador relacional ! de "diferença/diferente" 
SELECT nome, detalhes, preco FROM produtos 
WHERE  fabricante_id != 8;
``` 

--- 


## UPDATE (Fabricantes)  

**☠️💀CUIDADO🫀** 

**SEMPRE USE**  a clausula `WHERE` em seu comando `UPDATE` especificando uma ou mais condições para atualização. 


```sql  
-- Trocar o nome do fabricante Asus para Asus do Brasil
UPDATE fabricantes SET nome = 'Asus do Brasil' 
WHERE id =2; 

-- Mini-exercicio Alterar a quantidade para 10  dos produtos que custam abaixo de 2000 execeto da Microsoft. 

UPDATE produtos set quantidade = 10  
WHERE  preco <2000 AND fabricante_id != 7;  

``` 

--- 

## DELETE (Fabricantes e Produtos)  

**☠️💀PERIGO!!🫀** 

**SEMPRE USE**  a clausula `WHERE` em seu comando `DELETE` especificando uma ou mais condições para atualização. 

```sql 
DELETE FROM fabricantes WHERE id = 5; 

DELETE FROM  Produtos WHERE id = 4; 

DELETE FROM fabricantes WHERE id = 3;
``` 

--- 

## Select: outras formas de uso 

### Classsificação/Ordenação

```sql 
-- DESC: oredena em ordem decrescente 
-- ASC: ordena em ordem crescente (padrão)
SELECT nome, preco FROM produtos ORDER BY nome;  
SELECT nome, preco FROM produtos ORDER BY preco;  
SELECT nome, preco FROM produtos ORDER BY preco DESC; 


SELECT nome, preco, quantidade FROM produtos 
WHERE fabricante_id = 5 ORDER BY quantidade;
``` 

### Operações e funções de agregação 

```sql  
-- Função de SOMA (SUM)
SELECT SUM(preco) FROM produtos;  

--alias/apelido para coluna 
SELECT SUM(preco) AS total FROM produtos; 
SELECT SUM(preco) AS "Total dos preços dos produtos" FROM produtos;
SELECT nome AS Produto, preco as Preço FROM produtos;  
SELECT nome AS Produto, preco  Preço FROM produtos; -- omitindo o AS
 
-- Funções de formatação/configurações: FORMAT e REPLACE
SELECT FORMAT(SUM(preco), 2) AS Total FROM produtos; 
SELECT REPLACE(FORMAT(SUM(preco), 2), ",", ".") AS Total FROM produtos; 

-- Função de média: AVG (Average) 
-- Função de aredondamento: ROUND
SELECT AVG(preco) AS "Média dos Preços" FROM produtos; 
SELECT ROUND(AVG(preco)) AS "Média dos Preços" FROM produtos; 

-- Função de contagem: COUNT
SELECT COUNT(id) AS "Qtd e produtos" FROM produtos; 
SELECT COUNT(DISTINCT fabricante_id) AS "Qtd de fabricantes com produtos" FROM produtos; 

-- Operações matemáticas 
SELECT nome, preco, quantidade, (preco * quantidade) as Total FROM produtos;
```