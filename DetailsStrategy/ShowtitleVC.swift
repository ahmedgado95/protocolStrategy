//
//  ShowtitleVC.swift
//  DetailsStrategy
//
//  Created by ahmed gado on 4/12/20.
//  Copyright © 2020 ahmed gado. All rights reserved.
//

import UIKit

class ShowtitleVC: UIViewController {
    var detailsStrategy: STR!

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = detailsStrategy.title
        getDate(url: detailsStrategy.getDetailsUrlRequest())
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func getDate(url : String)  {
        print(url)
        nameLabel.text = "\( detailsStrategy.name) \(url)"
    }

}
