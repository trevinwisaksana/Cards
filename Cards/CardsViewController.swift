//
//  CardsViewController.swift
//  Cards
//
//  Created by Trevin Wisaksana on 20/11/2017.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import UIKit
import RealmSwift

final class CardsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var listOfCards: Results<Card>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfCards = RealmHelper.retrieveCards()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listOfCards.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCell
        let card = listOfCards[indexPath.row]
        
        cell.nameLabel.text = card.name
        cell.occupancyLabel.text = card.occupancy
        cell.phoneNumberLabel.text = card.phoneNumber
        cell.emailLabel.text = card.email
        cell.addressLabel.text = card.address
        cell.websiteLabel.text = card.website
        
        return cell
        
    }
    
}
