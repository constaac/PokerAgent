//
//  Player.swift
//  PokerAgent
//
//  Created by Alex Constantine on 5/16/18.
//  Copyright © 2018 Alex Constantine. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class Player: Object {
    dynamic var id = UUID().uuidString
    dynamic var name: String = "Anon"
    dynamic var isAnon: Bool = true
    dynamic var comments: String? = nil
    dynamic var discoveryDate: Date = Date()
    dynamic var playerSessions: [String] = []
    
    convenience init(sessionID: String, comments: String?) {
        self.init()
        self.comments = comments
        self.playerSessions.append(sessionID)
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
