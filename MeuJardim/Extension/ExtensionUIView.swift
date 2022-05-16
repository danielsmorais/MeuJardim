//
//  ExtensionUIButton.swift
//  MeuJardim
//
//  Created by Aluno02 on 10/05/22.
//  Copyright © 2022 Daniel Morais. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    func roundCorners(cornerRadius: CGFloat){
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
        //self.clipsToBounds = true
    }
}
