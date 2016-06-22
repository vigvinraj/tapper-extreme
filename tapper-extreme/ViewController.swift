//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Vignesh Kumar Rajasekaran on 6/21/16.
//  Copyright © 2016 Vignesh Kumar Rajasekaran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    
    var maxTaps = 0
    var currentTaps = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl:UILabel!
    
    @IBAction func onButtonTapped(Sender: UIButton!){
        currentTaps++
        updateTapsLbl()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed(Sender: UIButton!){
        
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""
        {
            logoImg.hidden = true
            howManyTapsTxt.hidden = true
            playBtn.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLbl()
            
           
            
        }
    
    }
    
    func restartGame(){
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        howManyTapsTxt.hidden = false
        playBtn.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
    }
    
    func isGameOver() -> Bool{
        if currentTaps >= maxTaps{
            return true
        }
        else{
            return false
            
        }
    }
    
    func updateTapsLbl(){
        tapsLbl.text = "\(currentTaps)  Taps"
    }
}