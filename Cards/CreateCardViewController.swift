//
//  CreateCardViewController.swift
//  Cards
//
//  Created by Trevin Wisaksana on 20/11/2017.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//


import UIKit

final class CreateCardViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var occupationTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var websiteTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    
    @IBAction func backButtonAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func createButtonAction(_ sender: Any) {
        
        let card = Card()
        
        guard let name = nameTextField.text else {
            print("Don't forget your name!")
            return
        }
        
        card.name = name
        card.occupancy = occupationTextField.text!
        card.phoneNumber = phoneNumberTextField.text!
        card.email = emailAddressTextField.text!
        card.website = websiteTextField.text!
        card.address = addressTextField.text!
        
        let cardsVC = presentingViewController as? CardsViewController
        RealmHelper.add(card)
        cardsVC?.collectionView.reloadData()
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
