//
//  Table.swift
//  PokerAgent
//
//  Created by Alex Constantine on 5/16/18.
//  Copyright © 2018 Alex Constantine. All rights reserved.
//

import Foundation
import RealmSwift

class Table {
    
    // Disable Instantiation
    private init() {}
    
    static let shared = Table()
    var session = Session()
    
    func populatePlayerSessions() {
//        session.addPlayerSession(playerSession: <#T##PlayerSession#>)
    }
    
    func setSession(session: Session) {
        self.session = session
    }
    
    
    func betAction() {
        
    }
    
    func callAction() {
        
    }
    
    func checkAction() {
        
    }
    
    func foldAction() {
        
    }
}
