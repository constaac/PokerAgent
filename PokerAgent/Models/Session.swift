//
//  Session.swift
//  PokerAgent
//
//  Created by Alex Constantine on 5/16/18.
//  Copyright © 2018 Alex Constantine. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class Session: Object {
    dynamic var id = 0
    dynamic var startDate: Date = Date()
    dynamic var endDate: Date? = nil
    dynamic var location: String = ""
    dynamic var totalHands: Int16 = 0
    dynamic var chipPosition: Int8 = 0
    dynamic var roundActive = false
    dynamic var playerSessions = List<PlayerSession>()
    
    convenience init(location: String) {
        self.init()
        self.location = location
    }
    
    func addPlayerSession(playerSession: PlayerSession) -> Void {
        self.playerSessions.append(playerSession)
    }
    
    func removePlayerSession(playerSession: PlayerSession) -> Void {
        let playerSessionIndex = self.playerSessions.index(of: playerSession)
        if let playerSessionIndex = playerSessionIndex {
            self.playerSessions.remove(at: playerSessionIndex)
        }
    }
    
    func editLocation(location: String) -> Void {
        self.location = location
    }
    
    func setEndDate() -> Void {
        self.endDate = Date()
    }
    
    func startRound() -> Void {
        self.roundActive = true
    }
    
    func endRound() -> Void {
        self.roundActive = false
        self.totalHands += 1
    }
    
    func setChipPositionAtPlayer(playerSession: PlayerSession) -> Void {
        let playerSessionIndex = self.playerSessions.index(of: playerSession)
        if let playerSessionIndex = playerSessionIndex {
            self.chipPosition = Int8(playerSessionIndex)
        }
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
