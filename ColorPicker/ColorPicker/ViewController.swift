//
//  ViewController.swift
//  ColorPicker
//
//  Created by Gabriela Ruiz Alvarez on 2/13/24.
//

import UIKit


class ViewController: UIViewController {
    //MARK: IB Outlets
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenSwitch: UISwitch!
    
    @IBOutlet weak var colorView: UIView!
    
    
    //MARK: -Instance Propertes
    
    
    //MARK: -VDL
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor()
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor =
           UIColor.black.cgColor
    }
    
    //MARK: -IB ACTIONS
    
    @IBAction func reset(_ sender: Any) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false

        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        
        
        updateColor()
        updateControls()
    }
    @IBAction func switchChanged(_ sender: UISwitch)
    {
        // when switch changes, this will happen
        // colorView.backgroundColor = .red
        //        if sender.isOn {
        //            colorView.backgroundColor = .red
        //        }
        //        else {
        //            colorView.backgroundColor = .black
        //        }
        //
        updateColor()
        updateControls()
    }
    
    //MARK: Instance Methods
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = 1
        }
        if greenSwitch.isOn {
            green = 1
        }
        if blueSwitch.isOn { 
            blue = 1
        }
        
        let color = UIColor(red: red, green: green,blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func updateControls(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
}
