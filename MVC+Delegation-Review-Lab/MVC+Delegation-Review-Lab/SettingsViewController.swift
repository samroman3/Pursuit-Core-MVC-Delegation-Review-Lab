//
//  SettingsViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Sam Roman on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
 
    
    var delegate: Logic?
    


    
//    var size: CGFloat = 0.5
//    varlabel.font = UIFont(name: varlabel.font.fontName, size: senderValue)
    
    //make a computed property????
    //make a variable that sets font size according to slider value??????????????????????
    
    
    @IBOutlet weak var editLabel: UILabel!
    
    @IBOutlet weak var sliderOut: UISlider!
    
    
    @IBOutlet weak var stepperOut: UIStepper!
    
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
    editLabel.font = editLabel.font.withSize(CGFloat(sender.value))
        stepperOut.value = Double(sender.value)
        delegate?.getFontSize(value: CGFloat(sender.value))
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        editLabel.font = editLabel.font.withSize(CGFloat(Double(sender.value)))
        sliderOut.value = Float(sender.value)
        delegate?.getFontSize(value: CGFloat(sender.value))
        
        
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
