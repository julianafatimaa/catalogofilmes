USE catalogofilmesDB;

INSERT INTO tb_usuario (nm_usuario, ds_email, ds_senha) 
     VALUES ( 'admin', 'admiin@admin.com.br', '1234');
     
     
     select id_usuario           id,
            nm_usuario           nome,
              ds_email           email
       from tb_usuario
		where ds_email          = 'admin@admin.com.br'
          and ds_senha          = '1234';
          
     
INSERT INTO tb_filme (id_usuario, nm_filme, ds_sinopse, vl_avaliacao, dt_lancamento, bt_disponivel, img_filme) 
      VALUES (1, 'Harry Potter e a Camara Secreta', 'Filmes legais', 9.5, '2010-05-03', true, '/storage/filme/398894.jpg' );
      
      UPDATE tb_filme 
      set nm_filme       = 'Harry Potter e a Camara Secreta',
          ds_sinopse     = 'Filmes legais',
          vl_avaliacao   =  9.5,
          dt_lancamento  = '2010-05-03',
          bt_disponivel  = true,
          img_filme      = '/storage/filme/398894.jpg'
	 WHERE id_filme = 1;
     
     select id_filme         id,
            nm_filme         nome,
            ds_sinopse       sinopse,
            vl_avaliacao     avaliacao,
            dt_lancamento    lancamento,
            bt_disponivel    disponivel
	 FROM   tb_filme
     WHERE nm_filme        like '%a%';
     
     select id_filme         id,
            nm_filme         nome,
            vl_avaliacao     avaliacao,
            dt_lancamento    lancamento,
            bt_disponivel    disponivel,
            img_filme        capa
	 FROM   tb_filme
     WHERE  id_filme        =1;