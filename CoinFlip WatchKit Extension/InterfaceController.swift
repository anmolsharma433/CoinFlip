//
//  InterfaceController.swift
//  CoinFlip WatchKit Extension
//
//  Created by Anmol Sharma on 2019-11-04.
//  Copyright © 2019 anmol. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var FlipLabel: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    @IBAction func FlipButtonPressed() {
        FlipLabel.setText("Flipping The Coin.")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0)
        {
            self.FlipLabel.setText("Flipping The Coin..")
            DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1.0)
            {
                self.FlipLabel.setText("Flipping The Coin...")
                DispatchQueue.main.asyncAfter(wallDeadline: .now() + 1.0){
                    let randomFlip = Bool.random()
                    if (randomFlip)
                    {
                        self.FlipLabel.setText("It's Heads")
                    }
                    else{
                        self.FlipLabel.setText("It's Tail")
                    }
                }
            }
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
