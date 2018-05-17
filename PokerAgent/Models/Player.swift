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
    dynamic var id = 0
    dynamic var name: String = "Anon"
    dynamic var isUser: Bool = false
    dynamic var isAnon: Bool = true
    dynamic var comments: String? = ""
    dynamic var discoveryDate: Date = Date()
    dynamic var sessions: List<Session> = List<Session>()
    dynamic var currentSession: Session? = nil
    
    convenience init(isUser: Bool?, comments: String?) {
        self.init()
        if let isUser = isUser {
            self.isUser = isUser
        }
        if let comments = comments {
            self.comments = comments
        }
    }
    
    func addSession() -> Void {
        
    }
    
    func removeSession() -> Void {
        
    }
    
    func setCurrentSession(session: Session?) {
        if let session = session {
            self.currentSession = session
        } else {
            self.currentSession = nil
        }
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
