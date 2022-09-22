CREATE SCHEMA labschool;

CREATE TABLE labschool.aluno(
    id SERIAL PRIMARY KEY,
    endereco_id INTEGER NOT NULL REFERENCES labschool.endereco(id),
    nome_completo VARCHAR(64) NOT NULL,
    cpf VARCHAR(18) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(16),
    estado_matricula BOOLEAN NOT NULL,
    nota_processo_seletivo FLOAT NOT NULL
);

INSERT INTO labschool.aluno(endereco_id,nome_completo,cpf,data_nascimento,telefone,estado_matricula,nota_processo_seletivo)
VALUES
(1,'Tomás Ricardo Corte Real','823.949.800-01','02/04/1983','(66)98288-8257',FALSE,8.5),
(2,'Nair Luiza Stefany Neves','618.995.420-00','01/02/1964','(62)99340-7295',TRUE,6.9),
(3,'Pedro Henrique Mateus Gael','680.083.350-92','11/09/2002','(67)99971-0151',TRUE,9.5),
(4,'Marlene Simone Heloise','369.536.860-81','23/03/1966','(98)98835-8988',FALSE,7.5),
(5,'Gabrielly Luiza Rosângela','239.312.850-65','08/06/1953','(28)98450-6943',TRUE,10.0),
(6,'Elias Paulo Martins','489.060.860-59','15/07/1971','(68)99879-9658',TRUE,7.25),
(7,'Kevin Nelson Moura','227.275.770-79','21/09/1957','(64)99524-2855',FALSE,5.75),  
(8,'Catarina Vitória Castro','843.443.660-42','19/06/1952','(51)98257-5340',TRUE,10),
(9,'Lavínia Alice Daniela','341.911.000-68','06/05/1967','(32)98312-6064',FALSE,2.75),
(10,'Kaique Augusto Nunes','357.717.180-41','24/05/2003','(24)98825-8626',TRUE,9.75);

SELECT * FROM labschool.aluno;
SELECT id,nome_completo,telefone FROM labschool.aluno WHERE estado_matricula = TRUE;
SELECT id,nome_completo,telefone FROM labschool.aluno WHERE estado_matricula = FALSE;
SELECT id,nome_completo,cpf,telefone,nota_processo_seletivo FROM labschool.aluno WHERE nota_processo_seletivo > 8;
SELECT id,nome_completo,cpf,telefone,nota_processo_seletivo FROM labschool.aluno WHERE nota_processo_seletivo < 8;

SELECT a.nome_completo,a.endereco_id,e.cep,logradouro,e.numero,e.bairro,e.cidade,e.uf 
FROM labschool.aluno a
JOIN labschool.endereco e ON a.endereco_id = e.id;

SELECT a.nome_completo,a.endereco_id,e.cep,e.logradouro,e.numero,e.bairro,e.cidade,e.uf 
FROM labschool.aluno a
JOIN labschool.endereco e ON a.endereco_id = e.id
WHERE a.estado_matricula = TRUE;

CREATE TABLE labschool.professor(
    id SERIAL PRIMARY KEY,
    endereco_id INTEGER NOT NULL REFERENCES labschool.endereco(id),
    nome_completo VARCHAR(64) NOT NULL,
    cpf VARCHAR(18) UNIQUE NOT NULL,
    data_de_nascimento DATE NOT NULL,
    telefone VARCHAR(16),
    formacao VARCHAR(30) NOT NULL,
    experiencia VARCHAR(20)NOT NULL,
    estado BOOLEAN NOT NULL
);


INSERT INTO labschool.professor(endereco_id,nome_completo,cpf,data_de_nascimento,telefone,formacao,experiencia,estado)
VALUES
(2,'Mirella Catarina Lopes','075.242.450-50','22/06/2002','(32)99935-1756','ensino_medio','Front-End',TRUE),
(2,'Jorge Thales Caleb da Paz','034.900.821-33','01/01/1989',NULL,'mestrado','Back-End',TRUE),
(1,'Enzo Danilo Thomas Mendes','739.252.851-30','20/09/1989','(92)98723-1178','ensino_medio_incompleto','Full-Stack',FALSE),
(3,'Ruan Bryan Porto','344.275.188-85','27/06/1974','(61)98239-2372','doutorado','Front-End',TRUE),
(5,'Raul Anderson Caldeira','619.478.648-58','02/09/2001',NULL,'ensino_medio','Full-Stack',FALSE),
(8,'Francisco Matheus Cláudio','247.232.136-86','06/09/1976',NULL,'ensino_superior','Back-End',TRUE),
(9,'Isabel Melissa Costa','243.752.228-08','10/03/2003',NULL,'ensino_medio','Full-Stack',TRUE),
(10,'Nicolas Luan Pereira','846.670.681-08','06/03/1989','(67)98992-9307','ensino_medio_incompleto','Full-Stack',FALSE),
(7,'Andreia Gabrielly Melo','589.922.270-00','13/06/2003',NULL,'doutorado','Front-End',TRUE),
(6,'Benício Tomás Márcio','554.846.073-02','01/04/1998','(81)98634-4914','mestrado','Back-End',TRUE);

SELECT * FROM labschool.professor;
SELECT id,nome_completo,cpf,telefone,formacao FROM labschool.professor WHERE estado =TRUE;
SELECT id,nome_completo,cpf,telefone,formacao,experiencia,estado FROM labschool.professor WHERE estado=FALSE;
SELECT id,nome_completo,telefone,formacao,experiencia,estado FROM labschool.professor WHERE experiencia ='Full-Stack';
SELECT id,nome_completo,telefone,formacao,experiencia,estado FROM labschool.professor WHERE formacao ='doutorado';

SELECT p.id,p.nome_completo,p.endereco_id,e.cep,e.logradouro,e.numero,e.bairro,e.cidade,e.uf
FROM labschool.professor p
JOIN labschool.endereco e ON p.endereco_id = e.id;

SELECT p.id,p.nome_completo,p.estado,p.endereco_id,e.cep,e.logradouro,e.numero,e.bairro,e.cidade,e.uf 
FROM labschool.professor p
JOIN labschool.endereco e ON p.endereco_id = e.id
WHERE estado =FALSE;

CREATE TABLE labschool.pedagogo(
    id SERIAL PRIMARY KEY,
    endereco_id INTEGER NOT NULL REFERENCES labschool.endereco(id),
    nome_completo VARCHAR(64) NOT NULL,
    cpf VARCHAR(18) UNIQUE NOT NULL,
    data_de_nascimento DATE NOT NULL,
    telefone varchar(16),
    estado BOOLEAN NOT NULL 
);

INSERT INTO labschool.pedagogo(endereco_id,nome_completo,cpf,data_de_nascimento,telefone,estado)
VALUES
(1,'Henry Hugo Teixeira','286.042.946-86','09/01/1996','(81)98201-9658',TRUE),
(2,'Márcio Ian Yago Fogaça','412.409.015-34','17/07/1995','(65)99639-4075',FALSE),
(3,'Fátima Laís Marcela Ferreira','257.514.850-25','15/06/1958','(75)99156-1733',TRUE),
(4,'Paulo Yuri Severino Assunção','048.425.277-14','05/02/1997','(51)98190-9255',FALSE),
(5,'Carolina Alessandra Fernandes','744.632.320-58','05/02/1985','(74)99553-6659',TRUE),
(6,'Geraldo Paulo Heitor Neves','160.896.905-38','14/01/1957','(67)99276-1780',TRUE),
(7,'Leonardo Henrique Pinto','511.561.309-30','23/06/1959','(21)98493-9121',FALSE),
(8,'Miguel Caio Bernardes','090.074.420-07','01/02/1973','(63)99535-2762',FALSE),
(9,'Augusto Pedro Henrique','715.966.668-20','05/04/1959','(79)98498-3074',TRUE),
(10,'Carlos Henrique Mendes','413.794.051-73','24/05/1946','(85)99223-1397',TRUE);

SELECT * FROM labschool.pedagogo;
SELECT id,nome_completo,cpf,telefone FROM labschool.pedagogo WHERE estado = TRUE;
SELECT id,nome_completo,cpf,telefone FROM labschool.pedagogo WHERE estado = FALSE;
SELECT * FROM labschool.pedagogo WHERE id >= 5;
SELECT * FROM labschool.pedagogo WHERE id <= 5;

SELECT p.id,p.nome_completo,p.endereco_id,e.cep,e.logradouro,e.numero,e.bairro,e.cidade,e.uf 
FROM labschool.pedagogo p
JOIN labschool.endereco e ON p.endereco_id = e.id;

SELECT p.id,p.nome_completo,p.endereco_id,P.estado,e.cep,e.logradouro,e.numero,e.bairro,e.cidade,e.uf  
FROM labschool.pedagogo p
JOIN labschool.endereco e ON p.endereco_id = e.id
WHERE estado = FALSE;


CREATE TABLE labschool.endereco(
    id SERIAL PRIMARY KEY,
    cep VARCHAR(9) NOT NULL,
    logradouro VARCHAR(64) NOT NULL,
    numero INTEGER NOT NULL,
    complemento VARCHAR(64),
    bairro VARCHAR(64) NOT NULL,
    cidade VARCHAR(64) NOT NULL,
    uf CHAR(2) NOT NULL
);


INSERT INTO labschool.endereco(cep,logradouro,numero,complemento,bairro,cidade,uf)
VALUES
('54360-038','Rua Rio Pará',759,'Casa','Marcos Freire','Jaboatão dos Guararapes','PE'),
('78148-105','Rua Lajeado',794,'apt 101','Canelas','Várzea Grande','MT'),
('44090-576','Rua Gêmeos',457,NULL,'Tomba','Feira de Santana','BA'),
('91250-340','Rua Professor Augusto Osvaldo Thiesen',471,'Casa Fundos','Rubem Berta','Porto Alegre','RS'),
('48905-110','Rua Esmeraldo Aragão',292,'apt 504','Centro','Juazeiro','BA'),
('25903-557','Rua Angra dos Reis',134,'Casa','Mundo Novo','Magé','RJ'),
('79090-360','Rua Golfe',124,NULL,'Vila Base Aéria','Campo Grande','MS'),
('77820-004','Rua 1A',971,'apt 305','Jardim dos Ipês I','Araguaína','TO'),
('49044-331','Rua B24',842,'apt 1011','Santa Maria','Aracaju','SE'),
('60337-670','Rua 2',459,Null,'Cristo Redentor','Fortaleza','CE');

SELECT * FROM labschool.endereco;
SELECT logradouro,numero,complemento,cidade,uf FROM labschool.endereco WHERE numero > 200;
SELECT logradouro,numero,complemento,cidade,uf FROM labschool.endereco WHERE complemento LIKE 'Casa%';
SELECT logradouro,numero,complemento,cidade,uf FROM labschool.endereco WHERE complemento LIKE 'apt%';
SELECT logradouro,numero,complemento,cidade,uf FROM labschool.endereco WHERE uf='BA';

SELECT e.cep,e.logradouro,e.numero,e.bairro,e.cidade,e.uf,a.nome_completo,a.endereco_id
FROM labschool.endereco e
JOIN labschool.aluno a ON e.id = a.endereco_id;

SELECT e.id,e.cep,e.logradouro,e.numero,e.bairro,e.cidade,e.uf,p.endereco_id,p.nome_completo
FROM labschool.endereco e 
JOIN labschool.professor p ON e.id = p.endereco_id
WHERE estado =TRUE;



CREATE TABLE labschool.atendimento_pedagogico(
    id SERIAL PRIMARY KEY,
    id_pedagogo INT NOT NULL,
    id_aluno INT NOT NULL,
    titulo_atendimento VARCHAR(64) NOT NULL,
    descricao TEXT NOT NULL,
    categoria VARCHAR(64) NOT NULL,
    estado BOOLEAN NOT NULL
);

INSERT INTO labschool.atendimento_pedagogico(id_pedagogo,id_aluno,titulo_atendimento,descricao,categoria,estado)
VALUES
(1,1,'atendimento1','atendimento pedagogico','auxilio escolar',FALSE),
(5,2,'atendimento2','atendimento pedagogico','comportamental',TRUE),
(3,5,'atendimento3','atendimento pedagogico','saude',FALSE),
(4,3,'atendimento4','atendimento pedagogico','auxilio escolar',FALSE),
(2,4,'atendimento5','atendimento pedagogico','saude',TRUE),
(10,6,'atendimento6','atendimento pedagogico','comportamental',TRUE),
(7,7,'atendimento7','atendimento pedagogico','saude',TRUE),
(8,10,'atendimento8','atendimento pedagogico','saude',TRUE),
(9,8,'atendimento9','atendimento pedagogico','comportamental',FALSE),
(6,9,'atendimento10','atendimento pedagogico','auxilio escolar ',TRUE);

SELECT * FROM labschool.atendimento_pedagogico;
SELECT * FROM labschool.atendimento_pedagogico WHERE estado= TRUE;
SELECT * FROM labschool.atendimento_pedagogico WHERE estado= FALSE;
SELECT * FROM labschool.atendimento_pedagogico WHERE categoria='saude';
SELECT * FROM labschool.atendimento_pedagogico WHERE categoria LIKE'auxilio%';

SELECT ap.id_pedagogo,p.nome_completo,ap.categoria,ap.estado,ap.id_aluno,a.nome_completo
FROM labschool.atendimento_pedagogico ap
JOIN labschool.pedagogo p ON ap.id_pedagogo = p.id
JOIN labschool.aluno a ON ap.id_aluno = a.id;

SELECT ap.id,ap.id_pedagogo,p.nome_completo,ap.categoria,ap.estado,ap.id_aluno,a.nome_completo
FROM labschool.atendimento_pedagogico ap
JOIN labschool.pedagogo p ON ap.id_pedagogo = p.id
JOIN labschool.aluno a ON ap.id_aluno = a.id
WHERE ap.estado = TRUE;




