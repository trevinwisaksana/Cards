//
//  RealmHelper.swift
//  Cards
//
//  Created by Trevin Wisaksana on 20/11/2017.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import RealmSwift

final class RealmHelper {
    
    // Use this function to add the card to the Realm database
    static func add(_ card: Card) {
        let realm = try! Realm()
        try! realm.write() {
            realm.add(card)
        }
    }
    
    // Use this function to retrieve all the cards in the database
    static func retrieveCards() -> Results<Card> {
        let realm = try! Realm()
        return realm.objects(Card.self)
    }
    
}

