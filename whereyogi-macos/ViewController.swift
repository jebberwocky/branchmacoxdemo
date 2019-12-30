//
//  ViewController.swift
//  whereyogi-macos
//
//  Created by Jeff Liu on 12/26/19.
//  Copyright © 2019 Jeff Liu. All rights reserved.
//

import Cocoa
import Branch

class ViewController: NSViewController {
    
    
    
    @IBOutlet weak var sendEButton: NSButton!
    @IBOutlet weak var sendCButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func sendCustomEvent(button: NSButton)
    {
        Branch.sharedInstance.logEvent(
            BranchEvent.customEvent(withName: "MAC_JEFF_EVENT"));
        let alert: NSAlert = NSAlert()
        alert.messageText = "MAC_JEFF_EVENT Event Sent"
        alert.informativeText = "MAC_JEFF_EVENT Event Sent"
        alert.addButton(withTitle:"OK")
        let res = alert.runModal()
    }

    @IBAction func sendCommerceEvent(button: NSButton)
    {
        let event = BranchEvent.standardEvent(.purchase)
        event.transactionID    = "tx-12344555"
        event.currency         = .USD
        event.revenue          = 12.70
        event.shipping         = 10.20
        event.tax              = 2.50
        event.coupon           = "coupon_code"
        event.affiliation      = "store_affiliation"
        event.eventDescription = "Shopper made a purchase."
        event.searchQuery      = "Fashion Scarf"
        event.customData       = [
            "Item_Color": "Red",
            "Item_Size":  "Large"
        ]
        Branch.sharedInstance.logEvent(event)
        
        let alert: NSAlert = NSAlert()
        alert.messageText = "Commerce Event Sent"
        alert.informativeText = "Commerce Event Sent"
        alert.addButton(withTitle:"OK")
        let res = alert.runModal()
    }
}

