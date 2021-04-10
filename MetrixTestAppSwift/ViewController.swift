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
        Metrix.newEvent(slug: "qixcu", attributes: ["name": "matin"])
        Metrix.newEvent(slug: "qixcu")
    }
    
    @IBAction func sendRevenueClick(_ sender: UIButton) {
        Metrix.newRevenue(slug: "ubdya", revenue: 124.0)
        Metrix.newRevenue(slug: "ubdya", revenue: 12.6, currency: .USD)
        Metrix.newRevenue(slug: "ubdya", revenue: 32.6, orderId: "someOrderId")
        Metrix.newRevenue(slug: "ubdya", revenue: 1244, currency: .EUR, orderId: "someOrderId2")
    }
    
    @IBAction func getAttributionClick(_ sender: UIButton) {

    }
}

