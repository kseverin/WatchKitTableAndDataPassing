//
//  PowerDetailInterfaceController.swift
//  WatchKit_SimpleTable
//
//  Created by Kerde Severin on 2/4/15.
//  Copyright (c) 2015 Kerde Severin. All rights reserved.
//

import WatchKit

class PowerDetailInterfaceController: WKInterfaceController {

    @IBOutlet weak var rangerName: WKInterfaceLabel!
    @IBOutlet weak var background: WKInterfaceGroup!
    
    var selectedRanger:String?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        selectedRanger = context as? String
        setRangerPersonalization()
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    
    func setRangerPersonalization(){
               
        switch selectedRanger! {
            
            case "Red Ranger":
            background.setBackgroundColor(UIColor.redColor())
            case "Yellow Ranger":
            background.setBackgroundColor(UIColor.yellowColor())
            case "Blue Ranger":
            background.setBackgroundColor(UIColor.blueColor())
            case "Pink Ranger":
            background.setBackgroundColor(UIColor.purpleColor())
            default:
            background.setBackgroundColor(UIColor.blackColor())
        }
        
        rangerName.setText(selectedRanger)
    }
    
    
    @IBAction func addBtnTapped()
    {
        let parentData = ["selectedItem" : selectedRanger!]
        
        WKInterfaceController.openParentApplication(parentData, reply: nil)
    }
}
