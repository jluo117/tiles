//
//  gameOverScreen.swift
//  9titles
//
//  Created by james luo on 9/15/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import UIKit

class gameOverScreen: UIViewController {
        override func viewDidLoad() {
            self.navigationItem.setHidesBackButton(true, animated:true);

        if theGame.victory{
            result.text = "Winner Winner Chicken Dinner"
        }
        else{
            result.text = "You Lose"
        }
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var result: UILabel!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
