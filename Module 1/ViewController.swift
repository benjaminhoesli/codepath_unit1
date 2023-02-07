//
//  ViewController.swift
//  Module 1
//
//  Created by Benjamin Hoesli on 30.01.23.
//

import UIKit

struct Car {
    var name:String?
    var image:UIImage?
    var text:String?
}

class ViewController: UIViewController {
    
    
    
    let horsepower = Car(name:"Power",image:UIImage(named:"horsepower")!,text:"Lightning McQueen, the iconic racing car from the Cars franchise, boasts a massive 800 horsepower engine. This impressive amount of power allows him to reach top speeds and perform incredible feats on the racetrack." )
    let speed = Car(name:"Speed", image:UIImage(named:"speed")!,text:"Lightning McQueen, the star of the Cars franchise, is known for his impressive top speed of 200 mph. This makes him one of the fastest racers on the track." )
    let torque = Car(name:"Torque", image:UIImage(named:"torque")!,text:"Lightning McQueen, the iconic racing car from the Cars franchise, boasts an impressive torque of 800 lb-ft. This high torque, combined with his speed and agility, makes him a force to be reckoned with on the racetrack." )
    
    
    var cars:[Car]=[]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cars=[horsepower,speed,torque]
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue",
           let detailViewController = segue.destination as? DetailViewController,  let button = sender as? UIButton {
            if button.tag == 0 {
                detailViewController.car = cars[0]
            } else if button.tag == 1 {
                detailViewController.car = cars[1]
            } else if button.tag == 2 {
                detailViewController.car = cars[2]
            }
        }
    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
}
