/********************************Main Page*********************/

SELECT nme_anuncio, img_imagem
FROM tb_anuncio, tb_imagem;

SELECT img_imagem
FROM tb_imagem;


/********************************Login*********************/

/********************************Tela de Cadastro*********************/
BEGIN;
	INSERT INTO tb_usuario
	 (nme_usuario AS 'Nome Completo', dta_usuario AS 'Data de Nascimento',
	eml_usuario AS 'Endereço de Email', cpf_usuario AS 'CPF', rg_usuario AS 'RG'.
	cel_usuario AS 'Telefone Móvel', pwd_usuario AS 'Senha')
	VALUES (?, ?, ?, ?, ?, ?, ?);

	INSERT INTO tb_imagem (img_imagem)
	 VALUES (?);
COMMIT;

/********************************Termos de Contrato*********************/

/********************************Termos de Contrato*********************/
SELECT nme_anuncio, dta_criacao_anuncio, dsc_anuncio, nme_cidade, dta_inicio_disponibilidade,
dta_fim_disponibilidade, img_imagem, cmt_comentarios, nme_tipo_imovel, nme_tipo_subespaco,
nme_tipo_subespaco, dsc_sub_espaco, img_imagem, area_espaco, qtd_hospedes_espaco,
end_espaco, vlr_nota_avaliacao
FROM tb_anuncio
JOIN ta_comentarios

