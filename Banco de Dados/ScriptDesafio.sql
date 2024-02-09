-- Listar jogadores e seus times:

SELECT j.nomeJogador, t.nomeTime
FROM jogadores j
JOIN timee t ON j.fkTime = t.idTime;

-- Listar times e seus técnicos:

SELECT t.nomeTime, tec.nomeTecnico
FROM timee t
JOIN tecnico tec ON t.fkTecnico = tec.idTecnico;

-- time e estadio

SELECT t.nomeTime, e.nomeEstadio, t.cidade, t.pais
FROM timee t
JOIN estadio e ON t.idTime = e.fkTime;


-- Listar jogadores, times e seus respectivos técnicos:

SELECT j.nomeJogador, t.nomeTime, tec.nomeTecnico
FROM jogadores j
JOIN timee t ON j.fkTime = t.idTime
JOIN tecnico tec ON t.fkTecnico = tec.idTecnico;

-- Listar jogadores, times, estadios e suas cidades:

SELECT j.nomeJogador, t.nomeTime, e.nomeEstadio, t.cidade
FROM jogadores j
JOIN timee t ON j.fkTime = t.idTime
JOIN estadio e ON t.idTime = e.fkTime;

-- Listar jogadores, times e suas avaliações (Overall):

SELECT j.nomeJogador, t.nomeTime, o.Overall
FROM jogadores j
JOIN timee t ON j.fkTime = t.idTime
JOIN overall o ON j.fkOverall = o.idOverall;

-- Listar usuários que jogam FIFA e as plataformas em que jogam:

SELECT u.Nome, fj.nomeFIFA, p.tipo
FROM usuario u
JOIN FIFAjogo fj ON u.idUsuario = fj.fkUsuario
JOIN plataforma p ON fj.fkPlataforma = p.idPlataforma;


-- DESAFIOS

-- SELECT COM TODAS AS TABELAS
SELECT u.Nome AS Nome_Usuario, t.nomeTecnico AS Nome_Tecnico, te.nomeTime AS Nome_Time, e.nomeEstadio
AS Nome_Estadio, o.Overall AS Overall_Jogador, j.nomeJogador AS Nome_Jogador, f.nomeFIFA AS Nome_Jogo, p.tipo AS Plataforma
FROM usuario u
JOIN timee te ON u.idUsuario = te.fkUsuario
JOIN tecnico t ON te.fkTecnico = t.idTecnico
JOIN estadio e ON te.idTime = e.fkTime
JOIN jogadores j ON te.idTime = j.fkTime
JOIN overall o ON j.fkOverall = o.idOverall
JOIN FIFAjogo f ON u.idUsuario = f.fkUsuario
JOIN plataforma p ON f.fkPlataforma = p.idPlataforma;

-- Listar jogadores, seus times, técnicos e estadios:

SELECT j.nomeJogador, t.nomeTime, tec.nomeTecnico, e.nomeEstadio
FROM jogadores j
JOIN timee t ON j.fkTime = t.idTime
JOIN tecnico tec ON t.fkTecnico = tec.idTecnico
JOIN estadio e ON t.idTime = e.fkTime;


-- Listar usuários, seus times, técnicos, estadios e jogadores e overall

SELECT 
    u.Nome AS Usuario,
    t.nomeTime AS Timee,
    tec.nomeTecnico AS Tecnico,
    e.nomeEstadio AS Estadio,
    j.nomeJogador AS Jogador,
    o.Overall
FROM usuario u
JOIN timee t ON u.idUsuario = t.fkUsuario
JOIN tecnico tec ON t.fkTecnico = tec.idTecnico
JOIN estadio e ON t.idTime = e.fkTime
LEFT JOIN jogadores j ON t.idTime = j.fkTime
LEFT JOIN overall o ON j.fkOverall = o.idOverall;


-- listar usuario, plataforma, jogoFifa, seuTime, estadio, país, cidade, tecnico e sua nacionalidade


SELECT 
    u.Nome AS Usuario,
    p.tipo AS Plataforma,
    fj.nomeFIFA AS JogoFIFA,
    t.nomeTime AS SeuTime,
    e.nomeEstadio AS Estadio,
    t.pais AS Pais,
    t.cidade AS Cidade,
    tec.nomeTecnico AS Tecnico,
    tec.nacionalidade AS NacionalidadeTecnico
FROM usuario u
JOIN FIFAjogo fj ON u.idUsuario = fj.fkUsuario
JOIN plataforma p ON fj.fkPlataforma = p.idPlataforma
LEFT JOIN jogadores j ON u.idUsuario = j.fkTime AND fj.fkUsuario = j.fkTime
LEFT JOIN timee t ON j.fkTime = t.idTime
LEFT JOIN estadio e ON t.idTime = e.fkTime
LEFT JOIN tecnico tec ON t.fkTecnico = tec.idTecnico;

-- Lista Detalhada de Informações do Usuário, Time, Técnico, Estádio, Jogo FIFA, Plataforma, Jogador, Overall e nacionalidade do tecnico

SELECT 
    u.Nome AS Usuario,
    t.nomeTime AS SeuTime,
    tec.nomeTecnico AS Tecnico,
    e.nomeEstadio AS Estadio,
    fj.nomeFIFA AS JogoFIFA,
    p.tipo AS Plataforma,
    j.nomeJogador AS Jogador,
    j.fkOverall AS Overall,
    tc.nacionalidade AS NacionalidadeTecnico
FROM usuario u
JOIN timee t ON u.idUsuario = t.fkUsuario
JOIN tecnico tec ON t.fkTecnico = tec.idTecnico
JOIN estadio e ON t.idTime = e.fkTime
JOIN FIFAjogo fj ON u.idUsuario = fj.fkUsuario
JOIN plataforma p ON fj.fkPlataforma = p.idPlataforma
LEFT JOIN jogadores j ON t.idTime = j.fkTime
LEFT JOIN overall o ON j.fkOverall = o.idOverall
LEFT JOIN tecnico tc ON t.fkTecnico = tc.idTecnico;


-- Relatório Detalhado de Usuários, Times, Técnicos, Estádios, Jogos FIFA, Plataformas, Jogadores e Avaliações de Overall (Filtrado por Times da Inglaterra na Cidade de Londres)

SELECT
    u.Nome AS Usuario,
    t.nomeTime AS SeuTime,
    tec.nomeTecnico AS Tecnico,
    t.cidade AS CidadeTime,
    e.nomeEstadio AS Estadio,
    fj.nomeFIFA AS JogoFIFA,
    p.tipo AS Plataforma,
    j.nomeJogador AS Jogador,
    o.Overall,
    tc.nacionalidade AS NacionalidadeTecnico
FROM usuario u
JOIN timee t ON u.idUsuario = t.fkUsuario
JOIN tecnico tec ON t.fkTecnico = tec.idTecnico
JOIN estadio e ON t.idTime = e.fkTime
JOIN FIFAjogo fj ON u.idUsuario = fj.fkUsuario
JOIN plataforma p ON fj.fkPlataforma = p.idPlataforma
LEFT JOIN jogadores j ON t.idTime = j.fkTime
LEFT JOIN overall o ON j.fkOverall = o.idOverall
LEFT JOIN tecnico tc ON t.fkTecnico = tc.idTecnico
WHERE t.pais = 'Inglaterra' AND t.cidade = 'Londres'
ORDER BY t.nomeTime;


-- Consulta Detalhada: Usuários, Times, Técnicos, Estádios, Jogadores e Plataformas com Foco em Erling Haaland

SELECT
    u.Nome AS Usuario,
    t.nomeTime AS SeuTime,
    tec.nomeTecnico AS Tecnico,
    e.nomeEstadio AS Estadio,
    fj.nomeFIFA AS JogoFIFA,
    p.tipo AS Plataforma,
    j.nomeJogador AS Jogador,
    j.nacionalidade AS NacionalidadeJogador,
    tc.nacionalidade AS NacionalidadeTecnico,
    o.Overall
FROM usuario u
JOIN timee t ON u.idUsuario = t.fkUsuario
JOIN tecnico tec ON t.fkTecnico = tec.idTecnico
JOIN estadio e ON t.idTime = e.fkTime
JOIN FIFAjogo fj ON u.idUsuario = fj.fkUsuario
JOIN plataforma p ON fj.fkPlataforma = p.idPlataforma
LEFT JOIN jogadores j ON t.idTime = j.fkTime
LEFT JOIN overall o ON j.fkOverall = o.idOverall
LEFT JOIN tecnico tc ON t.fkTecnico = tc.idTecnico
WHERE j.nomeJogador = 'Erling Haaland'
ORDER BY t.nomeTime;