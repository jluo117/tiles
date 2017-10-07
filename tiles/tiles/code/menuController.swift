//
//  menuController.swift
//  tiles
//
//  Created by james luo on 9/18/17.
//  Copyright © 2017 james luo. All rights reserved.
//

import UIKit
var trapCount = 1
var keyCount = 1
var theGame = game()
class menuController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBOutlet weak var hint: UISwitch!
    
    
    @IBAction func trap(_ sender: UIButton) {
        trapCount = sender.tag
    }
    
    @IBAction func key(_ sender: UIButton) {
        keyCount = sender.tag
    }
    @IBAction func gameSelect(_ sender: UIButton) {
        let gameSize = sender.tag
        theGame.buildGame(size: gameSize, key: keyCount, trap: trapCount)
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
