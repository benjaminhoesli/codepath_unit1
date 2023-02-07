//
//  DetailViewController.swift
//  Module 1
//
//  Created by Benjamin Hoesli on 02.02.23.
//

import UIKit

class DetailViewController: UIViewController {

    var car: Car?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let car=car{
            ImageView.image=car.image
            DetailTitle.text=car.name
            Information.text=car.text
        }

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var DetailTitle: UILabel!
    
    @IBOutlet weak var Information: UILabel!
    
    @IBOutlet weak var ImageView: UIImageView!
}
