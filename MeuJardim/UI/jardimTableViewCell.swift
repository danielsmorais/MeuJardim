//
//  jardimTableViewCell.swift
//  MeuJardim
//
//  Created by Aluno02 on 13/05/22.
//  Copyright © 2022 Daniel Morais. All rights reserved.
//

import UIKit

class jardimTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imagePlanta: UIImageView!
    @IBOutlet weak var labelPlanta: UILabel!
    @IBOutlet weak var labelHorario: UILabel!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
                
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
