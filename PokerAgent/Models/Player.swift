//
//  Player.swift
//  PokerAgent
//
//  Created by Alex Constantine on 5/16/18.
//  Copyright © 2018 Alex Constantine. All rights reserved.
//
// Represents Both Named and Anonymous Players

import Foundation
import RealmSwift

@objcMembers class Player: Object {
    dynamic var id = UUID().uuidString
    dynamic var name: String = "Anon"
    dynamic var isUser: Bool = false
    dynamic var isAnon: Bool = true
    dynamic var isMale: Bool = true
    dynamic var ageRange: String? = "Unspecified"
    dynamic var comments: String? = ""
    dynamic var discoveryDate: Date = Date()
    dynamic var playerSessions = List<PlayerSession>()
    
    convenience init(isMale: Bool, name: String?, isUser: Bool?, comments: String? = "", ageRange: String?) {
        self.init()
        self.isMale = isMale
        if let name = name {
            self.name = name
        }
        if let isUser = isUser {
            self.isUser = isUser
            self.isAnon = false
        }
        if let comments = comments {
            self.comments = comments
        }
        if let ageRange = ageRange {
            self.ageRange = ageRange
        }
    }
    
    
    // GETTERS and SETTERS
    // ---------------------------------------------------------------------------------

    func addPlayerSession(playerSession: PlayerSession) -> Void {
        self.playerSessions.append(playerSession)
    }
    
    func removePlayerSession(playerSession: PlayerSession) -> Void {
        let playerSessionIndex = self.playerSessions.index(of: playerSession)
        if let playerSessionIndex = playerSessionIndex {
            self.playerSessions.remove(at: playerSessionIndex)
        }
    }
    
    func setPlayerName(name: String) -> Void {
        self.name = name
        self.isAnon = false
    }
    
    func setComments(comments: String) -> Void {
        self.comments = comments
    }
    
    func setAgeRange(ageRange: String) -> Void {
        self.ageRange = ageRange
    }
    
    func timeSinceDiscovery() -> TimeInterval {
        return self.discoveryDate.timeIntervalSinceNow
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
