//
//  ComputerModel.swift
//  OOP
//
//  Created by Leonnardo Benjamin Hutama on 15/05/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import Foundation

class ComputerModel:NSObject{
    var processor: String
    var vga: String
    var ram: Int
    var isOn: Bool
    
    init(computerProcessor: String, computerVga: String, computerRam:Int, computerIsOn:Bool) {
        self.processor = computerProcessor
        self.vga = computerVga
        self.ram = computerRam
        self.isOn = computerIsOn
    }
    
    func Shutdown(){
        if isOn == true{
            isOn = false
            print("computer is shut down")
        }
        else{
            isOn = true
            print("computer is power on")
        }
    }
}
