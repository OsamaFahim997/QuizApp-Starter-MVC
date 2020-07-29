//
//  AViewController.swift
//  QuizApp
//
//  Created by Osama Fahim on 24/07/2020.
//  Copyright © 2020 Gwinyai. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("DID LOAD CALLED1")
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        print("VIEW WILL APPEAR CALLED1")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
