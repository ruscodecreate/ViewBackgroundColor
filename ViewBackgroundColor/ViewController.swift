//
//  ViewController.swift
//  ViewBackgroundColor
//
//  Created by Владислав Крисько on 15/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderColor()
    }
    
    @IBAction func changeColor() {
        changeViewColor()
        labelValue()
    }
    
    private func changeViewColor() {
        
        viewColor.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
    
    private func sliderColor() {
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
    }
    
    private func labelValue() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        return
    }
    
}



