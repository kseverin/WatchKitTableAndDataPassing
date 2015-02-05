//
//  InterfaceController.swift
//  WatchKit_SimpleTable WatchKit Extension
//
//  Created by Kerde Severin on 2/4/15.
//  Copyright (c) 2015 Kerde Severin. All rights reserved.
//

import WatchKit

class InterfaceController: WKInterfaceController {

    let rangerData = ["Red Ranger","Blue Ranger","Pink Ranger","Yellow Ranger","Black Ranger"]
    
    @IBOutlet weak var rangerTable: WKInterfaceTable!
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        summonTheRangers()
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
    
    private func summonTheRangers() {
        
        self.rangerTable.setNumberOfRows(rangerData.count, withRowType: "itsMorphinTime")
        
        for i in 0..<rangerData.count {
            
            let currentRow = self.rangerTable.rowControllerAtIndex(i) as PowerRangerRowController
            currentRow.powerName.setText(rangerData[i])
            var rangerImage = UIImage(named: rangerData[i])
            currentRow.powerImage.setImage(rangerImage)
        }
    }

    override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
        
        let selectedRanger = self.rangerData[rowIndex];
        
        return selectedRanger
    }
    
}
