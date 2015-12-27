//
//  ViewController.swift
//  Multitaps Game
//
//  Created by Piotr Nejman on 27.12.2015.
//  Copyright © 2015 pinej. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properies
    var currentAdds = 0
    var whatToAdd = 0
    var numA = 0
    
    var result = 0
    
    //Outlets
    @IBOutlet weak var logo: UIImageView!

    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var whatAddTxt: UITextField!
    
    @IBOutlet weak var addLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPlayBtnPressed(sender: AnyObject) {

        
        if whatAddTxt.text != nil && whatAddTxt.text != "" {
            logo.hidden = true
            playBtn.hidden = true
            whatAddTxt.hidden = true
            
            addBtn.hidden = false
            addLbl.hidden = false
            addLbl.text = "Press ADD to add"

            
          whatToAdd = Int(whatAddTxt.text!)!
         
            currentAdds = 0
            
        }
    }

 
    @IBAction func onAddBtn(sender: AnyObject) {
        
        updateAddsLabel()
        if gameOver() {
            restartGame()
        }
        
        
        
    }
    
    func updateAddsLabel() {

    
        result = currentAdds * whatToAdd
        
        addLbl.text = "\(result) + \(whatToAdd) = \((result) + (whatToAdd))"
        
        currentAdds++

        
    }
    
    func restartGame() {
        whatAddTxt.text = ""
        logo.hidden = false
        playBtn.hidden = false
        whatAddTxt.hidden = false
        
        addBtn.hidden = true
        addLbl.hidden = true
        
        currentAdds = 0
    }
    
    func gameOver() -> Bool{
        if currentAdds >= 10 {
            return true
        } else {
            return false
            
        }
    }
    
}

