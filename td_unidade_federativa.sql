
/**********************td_unidade_federativa***********************/
INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Acre', 'AC'); -- 1

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado)
VALUES ('Alagoas', 'AL'); -- 2

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Amapa', 'AP'); -- 3

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Amazonas', 'AM'); -- 4

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Bahia', 'BA'); -- 5

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Ceará', 'CE'); -- 6

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Distrito Federal', 'DF'); -- 7

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Espirito Santo', 'ES'); -- 8

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Goiás', 'GO'); -- 9

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Maranhão', 'MA'); -- 10

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Mato Grosso', 'MT'); -- 11

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Mato Grosso do Sul', 'MS'); -- 12

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Minas Gerais', 'MG'); -- 13

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Pará', 'PA'); -- 14

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Paraíba', 'PB'); -- 15

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Paraná', 'PR'); -- 16

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Pernambuco', 'PE'); -- 17

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Piauí', 'PI'); -- 18

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Rio de Janeiro', 'RJ'); -- 19

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Rio Grande do Norte', 'RN'); -- 20

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Rio Grande do Sul', 'RS'); -- 21

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Rondônia', 'RO'); -- 22

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Roraima', 'RR'); -- 23

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Santa Catarina', 'SC'); -- 24

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('São Paulo', 'SP'); -- 25

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Sergipe', 'SE'); -- 26

INSERT INTO td_unidade_federativa (nme_estado, sgl_estado) 
VALUES ('Tocantins', 'TO'); -- 27
-- 
-- 
-- 
/**********************td_tipo_espaco***********************/
INSERT INTO td_tipo_espaco (nme_tipo_imovel)
VALUES ('Quarto de Hóspedes');

INSERT INTO td_tipo_espaco (nme_tipo_imovel)
VALUES ('Casa');

INSERT INTO td_tipo_espaco (nme_tipo_imovel) 
VALUES ('Quitinete');

INSERT INTO td_tipo_espaco (nme_tipo_imovel) 
VALUES ('Quarto de Hotel');

INSERT INTO td_tipo_espaco (nme_tipo_imovel)
VALUES ('Espaço para locação');

INSERT INTO td_tipo_espaco (nme_tipo_imovel) 
VALUES ('Apartamento');

INSERT INTO td_tipo_espaco (nme_tipo_imovel) 
VALUES ('Mansão');
-- 
-- 
-- 
/**********************tb_usuario***********************/
INSERT INTO tb_usuario (usr_usuario, eml_usuario, pwd_usuario, nme_usuario, dta_usuario, cel_usuario, cpf_usuario, rg_usuario) -- 1
VALUES ('Roger123', 'Roger@gmail.com', '12345', 'Roger Vasconcelos da Costa', '1980-08-07', '061985471234', '05142114587', '2845975');

INSERT INTO tb_usuario (usr_usuario, eml_usuario, pwd_usuario, nme_usuario, dta_usuario, cel_usuario, cpf_usuario, rg_usuario) -- 2
VALUES ('Joao321', 'Joao_mateus@gmail.com', '54321', 'João Mateus do Val', '1994-05-07', '061982315678', '04152134987', '8845657');

INSERT INTO tb_usuario (usr_usuario, eml_usuario, pwd_usuario, nme_usuario, dta_usuario, cel_usuario, cpf_usuario, rg_usuario) -- 3
VALUES ('Ricardo543608', 'Ricardo_Malandro@hotmail.com', '6guM9SDSjn', 'Ricardo Alexandre Martins', '1974-03-25', '985742398', '87269711437', '2834751');

INSERT INTO tb_usuario (usr_usuario, eml_usuario, pwd_usuario, nme_usuario, dta_usuario, cel_usuario, cpf_usuario, rg_usuario) -- 4
VALUES ('JoanaDark1997', 'JoanaDark97@gmail.com', '85SDCR7XA4', 'Joana Sousa Schneider', '1998-06-25', '061986570049', '09175246487', '2945876');

INSERT INTO tb_usuario (usr_usuario, eml_usuario, pwd_usuario, nme_usuario, dta_usuario, cel_usuario, cpf_usuario, rg_usuario) -- 5
VALUES ('h4x4life1337', 'h4x4life@gmail.com', 'S4raS82epQ', 'Victor Aquino Rego', '1993-11-13', '85152819880', '73457397244', '4322002');

INSERT INTO tb_usuario (usr_usuario, eml_usuario, pwd_usuario, nme_usuario, dta_usuario, cel_usuario, cpf_usuario, rg_usuario) -- 6
VALUES ('Dalborga', "Dalborga_Cadeia@hotmail.com", "Bandido_bom_e_bandido_morto44", "Luiz Carlos Alborghetti", '1945-02-12', '05184236357', '72011618304', '8945237');
  -- 
  -- 
  -- 
  /**********************td_bairro***********************/
INSERT INTO td_bairro (nme_bairro) 
VALUES ("Águas Claras"); -- 1

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Asa Norte"); -- 2

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Asa Sul"); -- 3

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Brazlândia"); -- 4

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Candangolândia"); -- 5

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Ceilândia"); -- 6

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Ceilândia Sul"); -- 7

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Cruzeiro"); -- 8

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Delegado Lago II"); -- 9

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Eixo Monumental"); -- 10

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Gama"); -- 11

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Guará"); -- 12

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Guará II"); -- 13

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Lago Norte"); -- 14

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Lago Sul"); -- 15

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Núcleo Bandeirante"); -- 16

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Octogonal/Sudoeste"); -- 17

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Paranoá"); -- 18

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Park Way"); -- 19

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Planaltina"); -- 20

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Recanto das Emas"); -- 21

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Riacho Fundo"); --  22

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Samambaia"); --  23

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Santa Maria"); --  24

INSERT INTO td_bairro (nme_bairro) 
VALUES ("São Sebastião"); --  25

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Setor Oficinas Norte"); --  26

INSERT INTO td_bairro (nme_bairro) 
VALUES ("SIA"); --  27

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Sobradinho"); --  28

INSERT INTO td_bairro (nme_bairro) 
VALUES ("Taguatinga"); --  29
-- 
--  
--  
/**********************td_forma_pagamento***********************/
INSERT INTO td_forma_pagamento (nme_forma_pagamento) 
VALUES ("Visa"); -- 1

INSERT INTO td_forma_pagamento (nme_forma_pagamento) 
VALUES ("MasterCard"); -- 2

INSERT INTO td_forma_pagamento (nme_forma_pagamento) 
VALUES ("Boleto Bancário"); -- 3

INSERT INTO td_forma_pagamento (nme_forma_pagamento) 
VALUES ("PayPal"); -- 4

INSERT INTO td_forma_pagamento (nme_forma_pagamento) 
VALUES ("Transferência Bancária"); -- 5

INSERT INTO td_forma_pagamento (nme_forma_pagamento) 
VALUES ("Bitcoin"); -- 6

INSERT INTO td_forma_pagamento (nme_forma_pagamento) 
VALUES ("Itau Online"); -- 7

INSERT INTO td_forma_pagamento (nme_forma_pagamento) 
VALUES ("Banco do Brasil Online"); -- 8

INSERT INTO td_forma_pagamento (nme_forma_pagamento) 
VALUES ("Ethereum"); -- 9

INSERT INTO td_forma_pagamento (nme_forma_pagamento) 
VALUES ("PagSeguro"); -- 10
-- 
--  
-- 