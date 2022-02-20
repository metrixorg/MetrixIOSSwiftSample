//
//  ViewController.swift
//  MetrixTestAppSwift
//
//  Created by Matin on 9/16/20.
//  Copyright © 2020 Metrix. All rights reserved.
//

import UIKit
import Metrix

class ViewController: UIViewController {

    @IBOutlet var userIdLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendEventClick(_ sender: UIButton) {
        MetrixClient.newEvent(slug: "jqgjh", attributes: ["name": "matin"])
        MetrixClient.newEvent(slug: "jqgjh")
    }
    
    @IBAction func sendRevenueClick(_ sender: UIButton) {
        MetrixClient.newRevenue(slug: "prfrn", revenue: 124.0)
        MetrixClient.newRevenue(slug: "prfrn", revenue: 12.6, currency: .USD)
        MetrixClient.newRevenue(slug: "prfrn", revenue: 32.6, orderId: "someOrderId")
        MetrixClient.newRevenue(slug: "prfrn", revenue: 1244, currency: .EUR, orderId: "someOrderId2")
    }
}

