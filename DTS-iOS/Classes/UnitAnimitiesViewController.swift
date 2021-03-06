//
//  UnitAnimitiesViewController.swift
//  DTS-iOS
//
//  Created by Andy Nyberg on 30/08/2016.
//  Copyright © 2016 Rapidzz. All rights reserved.
//

import UIKit
import QuartzCore

class UnitAnimitiesViewController: BaseViewController {

    @IBOutlet weak var constraintBottom: NSLayoutConstraint!
    @IBOutlet weak var btnSelectAnimities: UIButton!
    @IBOutlet weak var viewAminities: UIView!
    
    var constraintValue: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if constraintValue != nil {
            constraintBottom.constant = constraintValue!
        }
        Utils.formateButtonInView(self.viewAminities)
        self.btnSelectAnimities.layer.cornerRadius = 4
        self.btnSelectAnimities.backgroundColor = UIColor(hexString: "fbfaff")
        self.btnSelectAnimities.layer.cornerRadius = 4
        self.btnSelectAnimities.layer.borderWidth = 1
        self.btnSelectAnimities.layer.borderColor = UIColor(hexString: "dbdae0").CGColor
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(0.01 * Double(NSEC_PER_SEC)))
        dispatch_after(delayTime, dispatch_get_main_queue()) {
            self.populateFields()
        }
    }
    
    func populateFields() -> Void {
        for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
            let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
            if dict["field"] as! String == "unit_amen_ac" {
                let btn = self.viewAminities.viewWithTag(0) as! UIButton
                btn.selected = true
            }
            else if dict["field"] as! String == "unit_amen_parking_reserved" {
                let btn = self.viewAminities.viewWithTag(1) as! UIButton
                btn.selected = true
            }
            else if dict["field"] as! String == "unit_amen_balcony" {
                let btn = self.viewAminities.viewWithTag(2) as! UIButton
                btn.selected = true
            }
            else if dict["field"] as! String == "unit_amen_deck" {
                let btn = self.viewAminities.viewWithTag(3) as! UIButton
                btn.selected = true
            }
            else if dict["field"] as! String == "unit_amen_ceiling_fan" {
                let btn = self.viewAminities.viewWithTag(4) as! UIButton
                btn.selected = true
            }
            else if dict["field"] as! String == "unit_amen_dishwasher" {
                let btn = self.viewAminities.viewWithTag(5) as! UIButton
                btn.selected = true
            }
            else if dict["field"] as! String == "unit_amen_fireplace" {
                let btn = self.viewAminities.viewWithTag(6) as! UIButton
                btn.selected = true
            }
            else if dict["field"] as! String == "unit_amen_furnished" {
                let btn = self.viewAminities.viewWithTag(7) as! UIButton
                btn.selected = true
            }
            else if dict["field"] as! String == "unit_amen_laundry" {
                let btn = self.viewAminities.viewWithTag(8) as! UIButton
                btn.selected = true
            }
            else if dict["field"] as! String == "unit_amen_floor_carpet" {
                let btn = self.viewAminities.viewWithTag(9) as! UIButton
                btn.selected = true
            }
            else if dict["field"] as! String == "unit_amen_floor_hard_wood" {
                let btn = self.viewAminities.viewWithTag(10) as! UIButton
                btn.selected = true
            }
            else if dict["field"] as! String == "unit_amen_carpet" {
                let btn = self.viewAminities.viewWithTag(11) as! UIButton
                btn.selected = true
            }
        }
    }
    
    @IBAction func crossButtonTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func selectAnimitiesButtonTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func actionAnmitiesFiltersSelected(sender: AnyObject) {
        let button = sender as! UIButton
        if button.selected {
            button.selected = false
            switch button.tag {
            case 0:
                for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
                    let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
                    if dict["field"] as! String == "unit_amen_ac" {
                        AppDelegate.returnAppDelegate().arrSearchCriteria.removeObjectAtIndex(index)
                    }
                }
                break
            case 1:
                for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
                    let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
                    if dict["field"] as! String == "unit_amen_parking_reserved" {
                        AppDelegate.returnAppDelegate().arrSearchCriteria.removeObjectAtIndex(index)
                    }
                }
                break
            case 2:
                for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
                    let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
                    if dict["field"] as! String == "unit_amen_balcony" {
                        AppDelegate.returnAppDelegate().arrSearchCriteria.removeObjectAtIndex(index)
                    }
                }
                break
            case 3:
                for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
                    let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
                    if dict["field"] as! String == "unit_amen_deck" {
                        AppDelegate.returnAppDelegate().arrSearchCriteria.removeObjectAtIndex(index)
                    }
                }
                break
            case 4:
                for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
                    let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
                    if dict["field"] as! String == "unit_amen_ceiling_fan" {
                        AppDelegate.returnAppDelegate().arrSearchCriteria.removeObjectAtIndex(index)
                    }
                }
                break
            case 5:
                for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
                    let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
                    if dict["field"] as! String == "unit_amen_dishwasher" {
                        AppDelegate.returnAppDelegate().arrSearchCriteria.removeObjectAtIndex(index)
                    }
                }
                break
            case 6:
                for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
                    let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
                    if dict["field"] as! String == "unit_amen_fireplace" {
                        AppDelegate.returnAppDelegate().arrSearchCriteria.removeObjectAtIndex(index)
                    }
                }
                break
            case 7:
                for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
                    let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
                    if dict["field"] as! String == "unit_amen_furnished" {
                        AppDelegate.returnAppDelegate().arrSearchCriteria.removeObjectAtIndex(index)
                    }
                }
                break
            case 8:
                for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
                    let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
                    if dict["field"] as! String == "unit_amen_laundry" {
                        AppDelegate.returnAppDelegate().arrSearchCriteria.removeObjectAtIndex(index)
                    }
                }
                break
            case 9:
                for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
                    let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
                    if dict["field"] as! String == "unit_amen_floor_carpet" {
                        AppDelegate.returnAppDelegate().arrSearchCriteria.removeObjectAtIndex(index)
                    }
                }
                break
            case 10:
                for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
                    let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
                    if dict["field"] as! String == "unit_amen_floor_hard_wood" {
                        AppDelegate.returnAppDelegate().arrSearchCriteria.removeObjectAtIndex(index)
                    }
                }
                break
            case 11:
                for index in 0..<AppDelegate.returnAppDelegate().arrSearchCriteria.count {
                    let dict = AppDelegate.returnAppDelegate().arrSearchCriteria[index] as! NSDictionary
                    if dict["field"] as! String == "unit_amen_carpet" {
                        AppDelegate.returnAppDelegate().arrSearchCriteria.removeObjectAtIndex(index)
                    }
                }
                break
            
            default:
                break
            }
        }
        else {
            button.selected = true
            switch button.tag {
            case 0:
                let dict = ["field" : "unit_amen_ac", "operator" : "=", "value":1]
                AppDelegate.returnAppDelegate().arrSearchCriteria.addObject(dict)
                break
            case 1:
                let dict = ["field" : "unit_amen_parking_reserved", "operator" : "=", "value":1]
                AppDelegate.returnAppDelegate().arrSearchCriteria.addObject(dict)
                break
            case 2:
                let dict = ["field" : "unit_amen_balcony", "operator" : "=", "value":1]
                AppDelegate.returnAppDelegate().arrSearchCriteria.addObject(dict)
                break
            case 3:
                let dict = ["field" : "unit_amen_deck", "operator" : "=", "value":1]
                AppDelegate.returnAppDelegate().arrSearchCriteria.addObject(dict)
                break
            case 4:
                let dict = ["field" : "unit_amen_ceiling_fan", "operator" : "=", "value":1]
                AppDelegate.returnAppDelegate().arrSearchCriteria.addObject(dict)
                break
            case 5:
                let dict = ["field" : "unit_amen_dishwasher", "operator" : "=", "value":1]
                AppDelegate.returnAppDelegate().arrSearchCriteria.addObject(dict)
                break
            case 6:
                let dict = ["field" : "unit_amen_fireplace", "operator" : "=", "value":1]
                AppDelegate.returnAppDelegate().arrSearchCriteria.addObject(dict)
                break
            case 7:
                let dict = ["field" : "unit_amen_furnished", "operator" : "=", "value":1]
                AppDelegate.returnAppDelegate().arrSearchCriteria.addObject(dict)
                break
            case 8:
                let dict = ["field" : "unit_amen_laundry", "operator" : "=", "value":1]
                AppDelegate.returnAppDelegate().arrSearchCriteria.addObject(dict)
                break
            case 9:
                let dict = ["field" : "unit_amen_floor_carpet", "operator" : "=", "value":1]
                AppDelegate.returnAppDelegate().arrSearchCriteria.addObject(dict)
                break
            case 10:
                let dict = ["field" : "unit_amen_floor_hard_wood", "operator" : "=", "value":1]
                AppDelegate.returnAppDelegate().arrSearchCriteria.addObject(dict)
                break
            case 11:
                let dict = ["field" : "unit_amen_carpet", "operator" : "=", "value":1]
                AppDelegate.returnAppDelegate().arrSearchCriteria.addObject(dict)
                break
            
            default:
                break
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
