//
//  ViewController2.swift
//  OOP
//
//  Created by Leonnardo Benjamin Hutama on 15/05/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var isOnLabel: UILabel!
    @IBOutlet weak var processorLabel: UILabel!
    @IBOutlet weak var vgaLabel: UILabel!
    @IBOutlet weak var ramLabel: UILabel!
    
    var computerInstance: ComputerModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        computerInstance = ComputerModel(computerProcessor: "Core i7", computerVga: "Nvidia", computerRam: 16, computerIsOn: true)
        
        updateUI()
    }
    
    func updateUI(){
        if let instance = computerInstance{
            if instance.isOn == true{
                isOnLabel.text = "Computer is On"
            }
            else{
                isOnLabel.text = "Computer is Off"
            }
            
            processorLabel.text = instance.processor
            vgaLabel.text = instance.vga
            ramLabel.text = "\(instance.ram)"
        }
    }

    @IBAction func shutDownButton(_ sender: UIButton) {
        if let instance = computerInstance{
            instance.Shutdown()
            updateUI()
        }
    }
}
