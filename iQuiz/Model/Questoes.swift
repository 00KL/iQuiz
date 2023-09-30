//
//  Questoes.swift
//  iQuiz
//
//  Created by Lucas Moraes on 29/09/23.
//

import Foundation

struct Questao {
    var pergunta: String
    var respostas: [String]
    var gabarito: Int
}

var listaQuestoes: [Questao] = [
    Questao(pergunta: "Qual o melhor jogo da FromSoftware?", respostas: ["Elden Ring", "Sekiro", "Bloodborne"], gabarito: 1),
        Questao(pergunta: "Qual o jogo do ano de 2023?", respostas: ["Baldur's Gate 3", "Zelda: Tears of the Kingdom", "Final Fantasy XVI"], gabarito: 0),
        Questao(pergunta: "Qual o jogo mais vendido de todos os tempos?", respostas: ["Minecraft", "Tetris", "GTA V"], gabarito: 2),
        Questao(pergunta: "Qual o melhor jogo de estratégia?", respostas: ["Civilization VI", "StarCraft II", "Age of Empires II"], gabarito: 0),
        Questao(pergunta: "Qual o jogo mais premiado de 2022?", respostas: ["The Last of Us Part II", "Hades", "Ghost of Tsushima"], gabarito: 0),
    Questao(pergunta: "Qual o melhor jogo de corrida?", respostas: ["Forza Horizon 5", "Gran Turismo 7", "Need for Speed: Heat"], gabarito: 0),
        Questao(pergunta: "Qual o jogo mais vendido de 2021?", respostas: ["FIFA 22", "Call of Duty: Vanguard", "Battlefield 2042"], gabarito: 1),
        Questao(pergunta: "Qual o jogo mais popular de todos os tempos?", respostas: ["Minecraft", "Fortnite", "League of Legends"], gabarito: 2),
        Questao(pergunta: "Qual o melhor jogo de ação e aventura?", respostas: ["The Legend of Zelda: Breath of the Wild", "Uncharted 4: A Thief's End", "God of War"], gabarito: 0),
        Questao(pergunta: "Qual o jogo mais premiado de 2020?", respostas: ["The Last of Us Part II", "Hades", "Ghost of Tsushima"], gabarito: 0),
]
