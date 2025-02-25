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

