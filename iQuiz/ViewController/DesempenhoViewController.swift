//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Lucas Moraes on 29/09/23.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuacao: Int?

    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBOutlet weak var percentualLabel: UILabel!
    
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configuraLayout()
        configuraTextosDesempenho()
    }
    
    func configuraLayout() {
        botaoReiniciarQuiz.layer.cornerRadius = 15
        navigationItem.hidesBackButton = true
    }
    
    func configuraTextosDesempenho(){
        guard let pontuacao = pontuacao else {return}
        resultadoLabel.text = "Você acertou \(pontuacao) de \(listaQuestoes.count) questões"
        let percentual: Int = (pontuacao*100) / listaQuestoes.count
        percentualLabel.text = "Percentual final: \(percentual)%"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
