//
//  GameScreenViewController.swift
//  RPS
//
//  Created by Mert Agcakoyun on 25.11.2018.
//  Copyright © 2018 Mert Agcakoyun. All rights reserved.
//

import UIKit

class GameScreenViewController: UIViewController {

    @IBOutlet weak var UserNameLabel: UILabel!
    @IBOutlet weak var UserScoreLabel: UILabel!
    @IBOutlet weak var ComputerLabel: UILabel!
    @IBOutlet weak var ComputerScoreLabel: UILabel!
    @IBOutlet weak var UserChoiceLabel: UILabel!
    @IBOutlet weak var ComputerChoiceLabel: UILabel!
    var userPoints = 0;
    var pcPoints = 0;
    let choiceArray=["Rock","Paper","Scissors"];
    
    @IBOutlet weak var WinnerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func RockClicked(_ sender: Any) {
        let randomSelected = Int(arc4random_uniform(3));
        let pcSelected = choiceArray[randomSelected];
        if pcSelected == "Rock" {
            UserChoiceLabel.text = "Your Choice : Rock";
            ComputerChoiceLabel.text="Computers Choice : Rock";
            WinnerLabel.text = "Draw";
            ComputerScoreLabel.text = String (pcPoints);
            UserScoreLabel.text = String(userPoints);
            
        }else if pcSelected == "Paper"{
            UserChoiceLabel.text = "Your Choice : Rock";
            ComputerChoiceLabel.text="Computers Choice : Paper";
            WinnerLabel.text = "Computer Won";
            pcPoints = pcPoints+1;
            ComputerScoreLabel.text = String (pcPoints);
            UserScoreLabel.text = String(userPoints);
        }
        else if pcSelected == "Scissors"{
            UserChoiceLabel.text = "Your Choice : Rock";
            ComputerChoiceLabel.text="Computers Choice : Scissors";
            WinnerLabel.text = "User Won";
            userPoints = userPoints+1;
            UserScoreLabel.text = String(userPoints);
            ComputerScoreLabel.text = String (pcPoints);
            
        }
    }
    @IBAction func PaperClicked(_ sender: Any) {
        var randomSelected = Int(arc4random_uniform(3));
        var pcSelected = choiceArray[randomSelected];
        if pcSelected == "Rock" {
            UserChoiceLabel.text = "Your Choice : Paper";
            ComputerChoiceLabel.text="Computers Choice : Rock";
            WinnerLabel.text = "User Won";
            userPoints = userPoints+1;
            UserScoreLabel.text = String(userPoints);
            ComputerScoreLabel.text = String (pcPoints);
        }else if pcSelected == "Paper"{
            UserChoiceLabel.text = "Your Choice : Paper";
            ComputerChoiceLabel.text="Computers Choice : Paper";
            WinnerLabel.text = "Draw";
            UserScoreLabel.text = String(userPoints);
            ComputerScoreLabel.text = String (pcPoints);
            
            
        }
        else if pcSelected == "Scissors"{
            UserChoiceLabel.text = "Your Choice : Paper";
            ComputerChoiceLabel.text="Computers Choice : Scissors";
            WinnerLabel.text = "Computer Won";
            pcPoints = pcPoints+1;
            ComputerScoreLabel.text = String (pcPoints);
            UserScoreLabel.text = String(userPoints);
            
        }
        
    }
    @IBAction func ScissorsClicked(_ sender: Any) {
        var randomSelected = Int(arc4random_uniform(3));
        var pcSelected = choiceArray[randomSelected];
        if pcSelected == "Rock" {
            UserChoiceLabel.text = "Your Choice : Scissors";
            ComputerChoiceLabel.text = "Computers Choice : Rock";
            WinnerLabel.text = "Computer Won";
            pcPoints = pcPoints+1;
            ComputerScoreLabel.text = String (pcPoints);
            UserScoreLabel.text = String(userPoints);
        }else if pcSelected == "Paper"{
            UserChoiceLabel.text = "Your Choice : Scissors";
            ComputerChoiceLabel.text = "Computers Choice : Paper";
            WinnerLabel.text = "User won";
            userPoints = userPoints+1;
            UserScoreLabel.text = String(userPoints);
            ComputerScoreLabel.text = String (pcPoints);
        }
        else if pcSelected == "Scissors"{
            UserChoiceLabel.text = "Your Choice : Scissors";
            ComputerChoiceLabel.text = "Computers Choice : Scissors";
            WinnerLabel.text = "Draw";
            UserScoreLabel.text = String(userPoints);
            ComputerScoreLabel.text = String (pcPoints);
            
        }
        
    }
    
    @IBAction func exitClicked(_ sender: Any) {
        performSegue(withIdentifier: "exitClicked", sender: nil)
    }
    
    }
    



