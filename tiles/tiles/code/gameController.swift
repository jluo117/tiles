//
//  gameController.swift
//  9titles
//
//  Created by james luo on 9/14/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import UIKit

class gameController: UIViewController {

        override func viewDidLoad() {
        self.navigationItem.setHidesBackButton(true, animated:true)
        if theGame.played{
            theGame.clear()
        }
        //reboot.backgroundColor = UIColor.white
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //@IBOutlet var reboot: [UIButton]!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBOutlet weak var errorCheck: UILabel!
//performSegue(withIdentifier: "GameOver", sender: self)
    
    
    @IBAction func tile(_ sender: UIButton) {
        let stat = theGame.buttonPress(tag: sender.tag)
        if stat == "Game Over"{
            performSegue(withIdentifier: "GameOver", sender: self)
        }
        
        if stat == "Win"{
            performSegue(withIdentifier: "GameOver", sender: self)
        }
        if stat == "Good"{
            sender.backgroundColor = UIColor.black
        }
        
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
