//
//  ColourPickerVc.swift
//  change colour app
//
//  Created by karim metawea on 2/11/19.
//  Copyright © 2019 karim metawea. All rights reserved.
//

import UIKit

class ColourPickerVc: UIViewController {
    
    var delegate : ColorTransferDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func colourBtnWasPressed(sender: UIButton){
        if delegate != nil {
            delegate?.userDidchose(color: sender.backgroundColor!, name: sender.titleLabel!.text!)
            navigationController?.popViewController(animated: true)
        }
       
    }
    

    
}
