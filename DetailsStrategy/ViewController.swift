//
//  ViewController.swift
//  DetailsStrategy
//
//  Created by ahmed gado on 4/12/20.
//  Copyright © 2020 ahmed gado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonAPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "ShowtitleVC") as! ShowtitleVC
        vc.detailsStrategy = ButtonADetails(itemId: 0, itemDetails: .buttonA(nil))
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func buttonBPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "ShowtitleVC") as! ShowtitleVC
              vc.detailsStrategy = ButtonBDetails(itemId: 0, itemDetails: .buttonB(nil))
              navigationController?.pushViewController(vc, animated: true)
    }
    
}

