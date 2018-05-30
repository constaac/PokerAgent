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
    var players: Results<Player>!
    
    @IBOutlet weak var betButton: ActionButton!
    @IBOutlet weak var callButton: ActionButton!
    @IBOutlet weak var checkButton: ActionButton!
    @IBOutlet weak var foldButton: ActionButton!
    
    @IBAction func homeTapped() {
        self.navigationController?.isNavigationBarHidden = false
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        super.viewWillAppear(animated)
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
