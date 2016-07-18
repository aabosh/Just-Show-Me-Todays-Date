//
//  ViewController.swift
//  Just Show Me Today's Date
//
//  Created by Andrew Abosh on 2016-07-03.
//  Copyright © 2016 Andrew Abosh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    
    let date = DateFormatter.localizedString(from: NSDate() as Date, dateStyle: .full, timeStyle: .none)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateLabel.text = date
        
    }

}
