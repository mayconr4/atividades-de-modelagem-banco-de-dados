# Exercicio  de SQL  

### Criando banco de dados

```sql 
 CREATE DATABASE catalogo_de_filmes CHARACTER SET utf8mb4;
``` 

### criando tabela generos 

```sql
CREATE TABLE generos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);
```  

### criando tabela filmes 

```sql
CREATE TABLE filmes(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL, 
    lancamento DATE NOT NULL, 
    genero_id INT NOT NULL, -- será uma FK (chave estrangeira)
     CONSTRAINT fk_filmes_generos FOREIGN KEY (genero_id) REFERENCES generos(id)

);
```  

### criando tabela detalhes

```sql 
CREATE TABLE detalhes( 
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    duracao INT NOT NULL, 
    sinpose TEXT(1000) NOT NULL, 
    bilheteria DECIMAL(16,2) NULL,  
    orcamento DECIMAL(16,2) NULL, 
    filme_id INT NOT NULL UNIQUE, 
    CONSTRAINT fk_filme_detalhes FOREIGN KEY (filme_id) REFERENCES filmes(id) -- chave de 1 para 1 de detalhes para filmes
);

``` 
 <!-- EXEMPLO ABAIXO DE CHAVES ESTRANGEIRA SEPARADA -->

## ALterando as tabelas e configurnado as chave sestrangeiiras (FKs)  

```sql
ALTER TABLE filmes
    ADD CONSTRAINT  fk_filmes_genero 
    FOREIGN KEY(genero_id)  REFERENCES generos(id);

``` 

```sql
ALTER TABLE detalhes
    ADD CONSTRAINT  fk_detalhes_filmes_ 
    FOREIGN KEY(filmes_id)  REFERENCES filmes(id);

```

