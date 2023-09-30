//
//  ViewController.swift
//  iQuiz
//
//  Created by Lucas Moraes on 26/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
        
        
    }
    func configuraLayout(){
        botaoIniciarQuiz.layer.cornerRadius = 12.0
        botaoIniciarQuiz.backgroundColor = UIColor(red: 102/255, green: 250/255, blue: 51/255, alpha: 0.5)
        navigationItem.hidesBackButton = true
    }
    
    
    @IBAction func botaoPressionado(_ sender: Any) {
        print("O botão foi usado")
    }
    
    

}

