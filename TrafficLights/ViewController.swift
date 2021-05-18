//
//  ViewController.swift
//  TrafficLights
//
//  Created by Козар Ігор on 18.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var buttonStart: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redLight.layer.masksToBounds = true
        redLight.layer.cornerRadius = 60
        redLight.layer.borderWidth = 2
        redLight.alpha = 0.3
        
        yellowLight.layer.masksToBounds = true
        yellowLight.layer.cornerRadius = 60
        yellowLight.layer.borderWidth = 2
        yellowLight.alpha = 0.3
        
        greenLight.layer.masksToBounds = true
        greenLight.layer.cornerRadius = 60
        greenLight.layer.borderWidth = 2
        greenLight.alpha = 0.3
        
        buttonStart.layer.masksToBounds = true
        buttonStart.layer.cornerRadius = 15
        buttonStart.layer.borderWidth = 2
        
        
        
    }
    var index = 0
    @IBAction func changeName(_ sender: UIButton) {
        buttonStart.setTitle("Next", for: .normal)
        
        
        switch index {
        case 0:
            redLight.alpha = 1
            print("red light \(index)")
        case 1:
            redLight.alpha = 0.3
            yellowLight.alpha = 1
            print ("yellow Light \(index)")
        case 2:
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
            print("green Light \(index)")
        case 3 :
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        default:
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
        }
        self.index += 1
        if index == 4{
            index = 0
            buttonStart.setTitle("Start", for: .normal)
        }

        
    }
}
        

    


