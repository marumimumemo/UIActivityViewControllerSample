//
//  ViewController.swift
//  UIActivityViewControllerSample
//
//  Created by satoshi.marumoto on 2020/03/30.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pushActivityButton(sender: AnyObject) {
        
        let shareText = "シェアてきすと"
        guard let shareUrl = URL(string: "http://www.apple.com/") else { return }
        guard let image = UIImage(named: "park") else { return }
        
        let items = [shareText, shareUrl, image] as [Any]
        
        let activityVc = UIActivityViewController(activityItems: items, applicationActivities: nil)
        
        present(activityVc, animated: true, completion: nil)
    }

}
