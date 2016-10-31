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
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backgroundTaskIdentifier = UIApplication.shared.beginBackgroundTask(expirationHandler: {
            UIApplication.shared.endBackgroundTask(self.backgroundTaskIdentifier!)
        })
        
        timer = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(ViewController.awesomeTask), userInfo: nil, repeats: true)
    }
    
    func awesomeTask() {
        let date = Date()
        print("update on \(date)")
    }

    @IBAction func stopTImerHandler(_ sender: UIButton) {
        timer?.invalidate()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

