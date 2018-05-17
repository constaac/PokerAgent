//
//  PlayerSession.swift
//  PokerAgent
//
//  Created by Alex Constantine on 5/17/18.
//  Copyright © 2018 Alex Constantine. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class PlayerSession: Object {
    dynamic var id = 0
    dynamic var session: Session?
    dynamic var player: Player?
    dynamic var stats = Statistics()
    
    convenience init(session: Session, player: Player) {
        self.init()
        self.session = session
        self.player = player
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
