//
//  gameController.swift
//  tiles
//
//  Created by james luo on 9/15/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import UIKit
var theGame = game(tiles: 9)
var count = 0
class gameController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func playGame(_ sender: UIButton) {
        if (theGame.positions[sender.tag].isBomb)!{
            self.performSegue(withIdentifier: "finishScreen", sender: self)
        }
        if (theGame.positions[sender.tag].isPressed){
            return
        }
        else{
            count += 1
            sender.backgroundColor = UIColor.black
            theGame.positions[sender.tag].isPressed = true
        }
        if (count == 8){
            theGame.victor = true
            self.performSegue(withIdentifier: "finishScreen", sender: self)
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
