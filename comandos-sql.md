# Comando SQL - Documentação  

## Modelagem física

Neste arquivo está a referencia de comandos visando a estruturação do banco de dados MySQL/MariaDB.

### Criar banco de dados

```sql
CREATE DATABASE vendas CHARACTER SET utf8mb4;
```

### Criar tabela de Fabricantes 

```sql
CREATE TABLE fabricantes(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);
``` 

### Visualizar detalhes estruturais da tabela 

```sql 
DESC fabricantes;
``` 

# Criar tabela Produtos 

```sql  
##  Isso tambem é Comentario válido SQL
CREATE TABLE produtos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL, 
    descricao TEXT(500) NULL,
    preco DECIMAL(6,2) NOT NULL,
    fabricante_id INT NOT NULL -- será chave estrangeira

);
```