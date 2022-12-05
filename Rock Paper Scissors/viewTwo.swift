//
//  viewTwo.swift
//  Rock Paper Scissors
//
//  Created by Huber, Jakob - Student on 11/18/22.
//

import UIKit

class viewTwo: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        intOnethroughThree = Int.random(in: 1...3)
        declareWinner(ourChoice: receivingInteger, cpuChoice: intOnethroughThree)
    }
    
    @IBOutlet weak var loser1: UILabel!
    var receivingString = ""
    var receivingInteger = 0
    
    var intOnethroughThree = Int.random(in: 1...3)
    
    @IBOutlet weak var playerImage: UIImageView!
    
    @IBOutlet weak var computerImage1: UIImageView!
    
    
    
    func declareWinner(ourChoice: Int, cpuChoice: Int){
        if receivingInteger == 0 && intOnethroughThree == 1 {
            loser1.text = "Loser"
        }
      
        else if receivingInteger == 1 && intOnethroughThree == 2 {
            loser1.text = "Loser" }
       
       else if receivingInteger == 2 && intOnethroughThree == 0 {
            loser1.text = "loser"}
        
       else if receivingInteger == 0 && intOnethroughThree == 0 {
            loser1.text = "Tie"
        }
       else if receivingInteger == 1 && intOnethroughThree == 1 {
            loser1.text = "Tie"
        }
       else if receivingInteger == 2 && intOnethroughThree == 2 {
            loser1.text = "Tie"
        }
       else if receivingInteger == 0 && intOnethroughThree == 2 {
            loser1.text = "Winner"
        }
       else if receivingInteger == 1 && intOnethroughThree == 0 {
            loser1.text = "Winner"
        }
        else if receivingInteger == 2 && intOnethroughThree == 1 {
            loser1.text = "Winner"
            
        }
        
        if receivingInteger == 0 {
           playerImage.image = UIImage(named:"Rok")
       }
       
        else if receivingInteger == 1 {
            playerImage.image = UIImage(named:"paper")
        }
            
        else if receivingInteger == 2 {
            playerImage.image = UIImage(named:"scissors")
        }
            
        if receivingInteger == 0{
            computerImage1.image = UIImage(named:"Rok")
        }
        else if receivingInteger == 1 {
            computerImage1.image = UIImage(named:"paper")
        }
        else if receivingInteger == 2 {
            computerImage1.image = UIImage(named:"scissors")
        }
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

