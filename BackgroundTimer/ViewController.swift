//
//  ViewController.swift
//  BackgroundTimer
//
//  Created by Hafiz on 02/11/2015.
//  Copyright © 2015 Rakit PLT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var backgroundTaskIdentifier: UIBackgroundTaskIdentifier?
    var timer: NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundTaskIdentifier = UIApplication.sharedApplication().beginBackgroundTaskWithExpirationHandler({
            UIApplication.sharedApplication().endBackgroundTask(self.backgroundTaskIdentifier!)
        })
        
        timer = NSTimer.scheduledTimerWithTimeInterval(60, target: self, selector: "awesomeTask", userInfo: nil, repeats: true)
    }
    
    func awesomeTask() {
        let date = NSDate()
        print("update on \(date)")
    }

    @IBAction func stopTImerHandler(sender: UIButton) {
        timer?.invalidate()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

