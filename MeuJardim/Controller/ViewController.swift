//
//  ViewController.swift
//  MeuJardim
//
//  Created by Aluno02 on 09/05/22.
//  Copyright © 2022 Daniel Morais. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonAdicionarPlanta: UIButton!
    @IBOutlet weak var buttonMeuJardim: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    self.buttonAdicionarPlanta?.roundCorners(cornerRadius: 15)
    self.buttonMeuJardim.roundCorners(cornerRadius: 15)
    }


    @IBAction func actionAdicionarPlanta(_ sender: Any) {
        
        let addplanta = storyboard?.instantiateViewController(identifier: "adicionarPlanta_vc") as! AdicionarPlantaViewController
        present(addplanta, animated: true)
        
    }
    
    @IBAction func actionMeuJardin(_ sender: Any) {
        let meuJardim = storyboard?.instantiateViewController(identifier: "meuJardim_vc") as! MeuJardimViewController
        present(meuJardim, animated: true)
        
    }
}

