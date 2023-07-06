//
//  ViewController.swift
//  card game
//
//  Created by Ashvin Alva on 03/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
        
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var cpuScore: UILabel!
    
    var player = 0
    var cpu = 0
    
    @IBAction func dealTapped(_ sender: Any) {
        print("hello world..!")
        
//        var overlap = overLayerViewController()
//        overlap.appear(self,"Player")
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)

        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")

        if leftNumber > rightNumber{
            player += 1
        }

        else if rightNumber > leftNumber{
            cpu += 1
        }

        playerScore.text = String(player)
        cpuScore.text = String(cpu)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}

