const dashboardModel = require("../models/dashboardModel.js");

function resultadoQuiz(idUsuario, acertos) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var acertos = req.body.acertosServer;
    var idUsuario = req.body.idUsuarioServer;
    // Faça as validações dos valores

    // Passe os valores como parâmetro e vá para o arquivo JogadorModel.js
    dashboardModel.resultadoQuiz(idUsuario, acertos)
        .then(
            function (resultado) {
                res.status(201).json()
            }
        ).catch(
            function (erro) {
                console.log(erro);
                console.log(
                    "\nHouve um erro ao realizar o cadastro! Erro: ",
                    erro.sqlMessage
                );
                res.status(500).json(erro.sqlMessage);
            }
        );
}

function pegarDadosQuiz(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html

    var idUsuario = req.body.idUsuarioServer;
    // Faça as validações dos valores

    // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
    dashboardModel.pegarDadosQuiz(idUsuario)
        .then(
            function (resultado) {
                res.status(201).json(resultado)
            }
        ).catch(
            function (erro) {
                console.log("erro");
                console.log(
                    "\nHouve um erro ao realizar o cadastro! Erro: ",
                    erro.sqlMessage
                );
                res.status(500).json(erro.sqlMessage);
            }
        );
}
module.exports = { resultadoQuiz,
                    pegarDadosQuiz}