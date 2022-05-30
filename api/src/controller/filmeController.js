import { inserirFilme } from '../repository/filmeRepository.js'

import { Router } from 'express'
const server = Router();

server.post ('/filme', async (req, resp) => {
    try{
       const filmeParaInserir = req.body;

       if (!filmeParaInserir.nome)
           throw new Error('bota nome');

       if (!filmeParaInserir.sinopse)
           throw new Error('bota sinopse');
       
        if (!filmeParaInserir.avaliacao)
           throw new Error('bota avaliacao');
       
        if (!filmeParaInserir.lancamento)
           throw new Error('bota lancamento');
       
        if (!filmeParaInserir.disponivel)
           throw new Error('bota disponivel');
       
        if (!filmeParaInserir.usuario)
           throw new Error('nao tem usuario');
       

       const filme = await inserirFilme(filmeParaInserir);

       resp.send (filme);

    }
    catch(err){
        resp.status(400).send({
            erro : err.message
        })
    }
})

export default server;
