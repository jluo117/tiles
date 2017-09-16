//
//  gameController.swift
//  9titles
//
//  Created by james luo on 9/14/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import UIKit
var theGame = game()
class gameController: UIViewController {

    var hitCount = 0
    override func viewDidLoad() {
        self.navigationItem.setHidesBackButton(true, animated:true)
        theGame.clear()
        hitCount = 0
        //reboot.backgroundColor = UIColor.white
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //@IBOutlet var reboot: [UIButton]!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    
    
    @IBAction func tile(_ sender: UIButton) {
        
        let pos = sender.tag
        if theGame.tiles[pos].isBomb{
            performSegue(withIdentifier: "GameOver", sender: self)
        }
        
        
        
        if theGame.tiles[pos].pressed{
            return
        }
            
            
        
        else{
            theGame.tiles[pos].pressed = true
            self.hitCount += 1
            sender.backgroundColor = UIColor.black
        }
        
        if hitCount == 8{
            theGame.victory = true
            performSegue(withIdentifier: "GameOver", sender: self)
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
