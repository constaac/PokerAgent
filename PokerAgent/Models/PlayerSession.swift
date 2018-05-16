//
//  PlayerSession.swift
//  PokerAgent
//
//  Created by Alex Constantine on 5/16/18.
//  Copyright © 2018 Alex Constantine. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class PlayerSession: Object {
    dynamic var id = UUID().uuidString
    dynamic var sessionID: String = ""
    dynamic var playerID: String = ""
    dynamic var isSitting: Bool = true
    dynamic var isButton: Bool = false
    
    dynamic var handsSeen: Int = 0
    dynamic var VPIP: [Int] = []
    dynamic var PFR: [Int] = []
    
    convenience init(sessionID: String, playerID: String) {
        self.init()
        self.sessionID = sessionID
        self.playerID = playerID
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
}
