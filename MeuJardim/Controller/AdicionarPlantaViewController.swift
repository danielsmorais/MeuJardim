//
//  AdicionarPlantaViewController.swift
//  MeuJardim
//
//  Created by Aluno02 on 10/05/22.
//  Copyright © 2022 Daniel Morais. All rights reserved.
//

import UIKit


class AdicionarPlantaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
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
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)

    }
    
    @objc private func hideKeyboard(){
        self.view.endEditing(true)
    }
    
    @objc private func keyboardWillShow(notification: NSNotification){
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardHeight = keyboardFrame.cgRectValue.height
            let bottomSpace = self.view.frame.height - (buttonSalvar.frame.origin.y + buttonSalvar.frame.height)
            self.view.frame.origin.y -= keyboardHeight - bottomSpace + 10
        }
    }
    
    @objc private func keyboardWillHide(){
        self.view.frame.origin.y = 0
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)    }


    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // collectionPlanta.frame = view.bounds
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(
            width: collectionPlanta.frame.width/2-10-3, height: collectionPlanta.frame.height/2-3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        collectionPlanta.deselectItem(at: indexPath, animated: false)
        print("Seção \(indexPath.section) e celula \(indexPath.row)")
        
        return
    }
    
    @IBAction func actionSalvar(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
