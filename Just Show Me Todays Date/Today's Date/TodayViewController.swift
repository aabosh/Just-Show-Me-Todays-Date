//
//  TodayViewController.swift
//  Today's Date
//
//  Created by Andrew Abosh on 2016-07-03.
//  Copyright © 2016 Andrew Abosh. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var dateLabel: UILabel!
    
    let date = DateFormatter.localizedString(from: NSDate() as Date, dateStyle: .full, timeStyle: .none)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: ((NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        dateLabel.text = date
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
