-- Criar o banco de dados
DROP DATABASE IF EXISTS dblojaetec;
CREATE DATABASE dblojaetec;

-- Usar o banco de dados
USE dblojaetec;

-- Criar a tabela usuarios
CREATE TABLE usuarios (
    iduser INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    fone VARCHAR(15),
    login VARCHAR(15) NOT NULL UNIQUE,
    senha VARCHAR(15) NOT NULL
);

-- Inserir 10 registros na tabela usuarios
INSERT INTO usuarios (usuario, fone, login, senha) VALUES
('João Silva', '123456789', 'joao.silva', 'senha123'),
('Maria Oliveira', '987654321', 'maria.oliveira', 'senha456'),
('Pedro Santos', '654321987', 'pedro.santos', 'senha789'),
('Ana Paula', '321654987', 'ana.paula', 'senha101'),
('Carlos Alberto', '789123456', 'carlos.alberto', 'senha202'),
('Roberta Lima', '456789123', 'roberta.lima', 'senha303'),
('Fernanda Costa', '159753486', 'fernanda.costa', 'senha404'),
('Jorge Almeida', '753951258', 'jorge.almeida', 'senha505'),
('Luciana Martins', '852963741', 'luciana.martins', 'senha606'),
('Ricardo Pereira', '369258147', 'ricardo.pereira', 'senha707');

-- Criar a tabela clientes
CREATE TABLE clientes (
    idcli INT PRIMARY KEY AUTO_INCREMENT,
    nomecli VARCHAR(50) NOT NULL,
    endcli VARCHAR(100),
    fonecli VARCHAR(15) NOT NULL,
    emailcli VARCHAR(50)
);

-- Inserir 10 registros na tabela clientes
INSERT INTO clientes (nomecli, endcli, fonecli, emailcli) VALUES
('Maria Oliveira', 'Rua A, 123', '987654321', 'maria@example.com'),
('Pedro Santos', 'Avenida B, 456', '654321987', 'pedro@example.com'),
('José Ferreira', 'Praça C, 789', '321654987', 'jose@example.com'),
('Clara Souza', 'Rua D, 159', '852963741', 'clara@example.com'),
('Rafael Lima', 'Avenida E, 258', '951753486', 'rafael@example.com'),
('Bruna Costa', 'Rua F, 369', '789123654', 'bruna@example.com'),
('Lucas Martins', 'Praça G, 147', '963258741', 'lucas@example.com'),
('Juliana Rocha', 'Rua H, 753', '258147963', 'juliana@example.com'),
('Diego Almeida', 'Avenida I, 369', '147258369', 'diego@example.com'),
('Patrícia Nascimento', 'Rua J, 123', '654987321', 'patricia@example.com');

-- Criar a tabela ordem_servico
CREATE TABLE ordem_servico (
    os INT PRIMARY KEY AUTO_INCREMENT,
    data_os TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    equipamento VARCHAR(150) NOT NULL,
    defeito VARCHAR(150) NOT NULL,
    servico VARCHAR(150),
    tecnico VARCHAR(30),
    valor DECIMAL(10, 2),
    idcli INT NOT NULL,
    FOREIGN KEY (idcli) REFERENCES clientes(idcli)
);

-- Inserir 10 registros na tabela ordem_servico
INSERT INTO ordem_servico (equipamento, defeito, servico, tecnico, valor, idcli) VALUES
('Impressora HP', 'Não liga', 'Reparo', 'Carlos', 150.00, 1),
('Notebook Dell', 'Tela quebrada', 'Troca de tela', 'Ana', 500.00, 2),
('Monitor Samsung', 'Flicker', 'Reparo', 'Roberta', 200.00, 3),
('Cabo HDMI', 'Não transmite', 'Substituição', 'Pedro', 50.00, 4),
('Teclado Logitech', 'Sem funcionamento', 'Reparo', 'Rafael', 80.00, 5),
('Mouse Razer', 'Conexão falha', 'Reparo', 'Bruna', 60.00, 6),
('Impressora Canon', 'Atola papel', 'Limpeza', 'Lucas', 100.00, 7),
('Laptop Acer', 'Sem carregamento', 'Troca de bateria', 'Juliana', 300.00, 8),
('Scanner Epson', 'Não liga', 'Reparo', 'Diego', 150.00, 9),
('Tablet Samsung', 'Tela piscando', 'Reparo', 'Patrícia', 250.00, 10);

SELECT * from ordem_servico;
