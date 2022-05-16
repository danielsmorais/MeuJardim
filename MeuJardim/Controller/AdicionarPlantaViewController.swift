//
//  AdicionarPlantaViewController.swift
//  MeuJardim
//
//  Created by Aluno02 on 10/05/22.
//  Copyright © 2022 Daniel Morais. All rights reserved.
//

import UIKit


class AdicionarPlantaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var textFieldPlanta: UITextField!
    @IBOutlet weak var datapiker: UIDatePicker!
    @IBOutlet weak var buttonSalvar: UIButton!
    
    @IBOutlet weak var collectionPlanta: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionPlanta.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        
        collectionPlanta.delegate = self
        collectionPlanta.dataSource = self
        
        self.textFieldPlanta.roundCorners(cornerRadius: 15)

        self.buttonSalvar.roundCorners(cornerRadius: 15)

    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //ollectionPlanta.frame = view.bounds
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath)
        
        return cell
    }

    
    @IBAction func actionSalvar(_ sender: Any) {
        
    }
    

}
