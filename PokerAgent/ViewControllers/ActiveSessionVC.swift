//
//  ActiveSessionVC.swift
//  PokerAgent
//
//  Created by Alex Constantine on 5/16/18.
//  Copyright © 2018 Alex Constantine. All rights reserved.
//

import UIKit
import RealmSwift

class ActiveSessionVC: UIViewController {
    
    var realm = RealmService.shared.realm
    var currentSession: Session?
    
    
    @IBOutlet weak var betButton: UIButton!
    @IBOutlet weak var callButton: UIButton!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var foldButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func setCurrentSession(session: Session?) -> Void {
        if let session = session {
            self.currentSession = session
        } else {
            self.currentSession = nil
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
