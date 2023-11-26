var database = require("../database/config"); 

function resultadoQuiz(acertos, fkUsuario) {

    var instrucao = `
        INSERT INTO pontuacao (pontuacao, fkUsuario) VALUES (${acertos}, ${fkUsuario});
    `;

    return database.executar(instrucao);

}

async function pegarDadosQuiz(idUsuario) {
    var pegarDadosQuiz = `
    SELECT pontuacao as Pontuação FROM pontuacao where fkUsuario = ${idUsuario};`;
    
    var pegarDadosQuiz = await database.executar(pegarDadosQuiz);
    
    
    
    console.log(pegarDadosQuiz)
    
    return {
        dadosQuizHtml: pegarDadosQuiz,
        
    }
}
module.exports = { resultadoQuiz ,
                pegarDadosQuiz}