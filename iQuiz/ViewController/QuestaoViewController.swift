//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Lucas Moraes on 28/09/23.
//

import UIKit


class QuestaoViewController: UIViewController {
    
    var perguntaAtual: Int = 0;
    var pontuacao: Int = 0;
    
    
    
    
    @IBOutlet weak var tituloPerguntaLabel: UILabel!
    
    @IBOutlet var botoesColection: [UIButton]!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configurarLayout()
        configurarQuestao()
        
    }
    
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = listaQuestoes[perguntaAtual].gabarito == sender.tag
        
        if usuarioAcertouResposta {
            pontuacao += 1
            print("O usuário acertou!")
            sender.backgroundColor = UIColor.corDeFundoVerde
        } else {
            sender.backgroundColor = UIColor.corDeFundoVermelho
        }
        
        if perguntaAtual < listaQuestoes.count - 1 {
            perguntaAtual += 1
            Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
//            configurarQuestao()
        } else {
            navegaParaTeladesempenho()
        }
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        for botao in botoesColection {
            botao.layer.cornerRadius = 12
            
        }
        
    }
    
    func navegaParaTeladesempenho(){
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
    
    @objc func configurarQuestao() {
        tituloPerguntaLabel.text = listaQuestoes[perguntaAtual].pergunta
        tituloPerguntaLabel.numberOfLines = 0
        tituloPerguntaLabel.textAlignment = .center
        for botao in botoesColection {
            let tituloBotao = listaQuestoes[perguntaAtual].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoViewController = segue.destination as? DesempenhoViewController else {
            return
        }
        desempenhoViewController.pontuacao = pontuacao
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
