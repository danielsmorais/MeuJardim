//
//  MeuJardimViewController.swift
//  MeuJardim
//
//  Created by Aluno02 on 10/05/22.
//  Copyright © 2022 Daniel Morais. All rights reserved.
//

import UIKit

class MeuJardimViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewJardim: UITableView!

    
    var jardim: [Planta] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableViewJardim.delegate = self
        self.tableViewJardim.dataSource = self
        
        tableViewJardim.roundCorners(cornerRadius: 15.0)
        
        for p in 1..<11 {
            jardim.append(Planta(name: "Planta \(p)", imageName: "\(p).png", time: NSDate() as Date))
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jardim.count
    }
    
        //construcao
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let j = jardim[indexPath.row]
        let cell = tableViewJardim.dequeueReusableCell(withIdentifier: "plantaCell", for: indexPath) as! jardimTableViewCell
        cell.labelPlanta.text = j.name
        cell.imagePlanta.image = UIImage(named: j.imageName)
    
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    // cria menú de deslize para apagar a lista
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") {action, indexPath in
            self.jardim.remove(at: indexPath.row)
            self.tableViewJardim.deleteRows(at: [indexPath], with: .automatic)
        }
        
        return [deleteAction]
    }
    
    
}

    


