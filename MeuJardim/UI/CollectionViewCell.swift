//
//  CollectionViewCell.swift
//  MeuJardim
//
//  Created by Aluno02 on 16/05/22.
//  Copyright © 2022 Daniel Morais. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    static let identifier = "collectionCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        var images: [UIImage] = []
        
        for p in 1..<11 {
            images.append(UIImage(named: "\(p)")!)
        }
        
        images.compactMap({ $0 })
        
        imageView.image = images.randomElement()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
}
