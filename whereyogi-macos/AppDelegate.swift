//
//  AppDelegate.swift
//  whereyogi-macos
//
//  Created by Jeff Liu on 12/26/19.
//  Copyright © 2019 Jeff Liu. All rights reserved.
//

import Cocoa
import Branch

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
          // Create a Branch configuration object with your key:
          let configuration = BranchConfiguration(key: "key_live_igTdpT9cigREKYlQt5abZeocrwkCS0mo")

          // Start Branch:
        Branch.sharedInstance.start(with: configuration)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

