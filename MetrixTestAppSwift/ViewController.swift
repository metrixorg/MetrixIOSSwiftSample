//
//  ViewController.swift
//  MetrixTestAppSwift
//
//  Created by Matin on 9/16/20.
//  Copyright © 2020 Metrix. All rights reserved.
//

import UIKit
import MetrixSdk

class ViewController: UIViewController {

    @IBOutlet var userIdLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        userIdLabel.text = "Metrix UserId: " + "\n" + (Metrix.mxid() ?? "")
    }

    @IBAction func sendEventClick(_ sender: UIButton) {
        let myAttributes = [
            "first_name": "Mohammad",
            "last_name": "Bagheri",
            "manufacturer": "Nike",
            "product_name": "shirt",
            "type": "sport",
            "size": "large"]
        let myMetrics : [String: NSNumber] = [:]
        let event = MXCustomEvent(slug: "msdok", attributes:myAttributes, metrics:myMetrics)
        Metrix.trackCustomEvent(event)
    }
    
    @IBAction func sendRevenueClick(_ sender: UIButton) {
        Metrix.trackRevenue("giaoj", withValue: 12000, currency: MXCurrency.IRR, orderId: "myOrderId")
    }
    
    @IBAction func getAttributionClick(_ sender: UIButton) {
        Metrix.requestAttribution()
    }
}

