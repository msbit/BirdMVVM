//
//  ViewController.swift
//  BirdMVVM
//
//  Created by tom on 13/4/19.
//  Copyright © 2019 tom. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var purchaseFeeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "Swifty")!
        let swifty = BirdModel(name: "Swifty", rarity: .veryRare, image: image)
        
        let viewModel = BirdViewModel(model: swifty)
        
        nameLabel.text = viewModel.name
        imageView.image = viewModel.image
        purchaseFeeLabel.text = viewModel.purchaseFeeText
    }


}

