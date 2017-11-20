//
//  Card.swift
//  Cards
//
//  Created by Trevin Wisaksana on 20/11/2017.
//  Copyright © 2017 Trevin Wisaksana. All rights reserved.
//

import RealmSwift

final class Card: Object {
    
    @objc dynamic var name: String = ""
    @objc dynamic var occupancy: String = ""
    @objc dynamic var phoneNumber: String = ""
    @objc dynamic var email: String = ""
    @objc dynamic var website: String = ""
    @objc dynamic var address: String = ""
    
}


