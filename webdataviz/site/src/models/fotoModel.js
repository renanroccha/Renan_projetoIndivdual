const database = require("../database/config");

async function cadastrarFoto(caminho, fkUsuario) {
    const instrucaoFoto = "INSERT INTO foto (caminho, fkUsuario) VALUES (?, `$`)";
    try {
    
        await database.executar(instrucaoFoto, [caminho, fkUsuario]);

        return true;
    } catch (error) {
        console.error("Erro ao cadastrar foto:", error);
        throw error;
    }
}