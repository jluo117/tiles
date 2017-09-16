//
//  endScreen.swift
//  tiles
//
//  Created by james luo on 9/15/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import UIKit

class endScreen: UIViewController {

    @IBOutlet weak var message: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if theGame.victor!{
            message.text = "Winner Winner Chicken Dinner"
        }
        else{
            message.text = "Try Again"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func menu(_ sender: Any) {
        self.performSegue(withIdentifier: "startScreen", sender: self)
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
