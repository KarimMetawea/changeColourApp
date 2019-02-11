//
//  ViewController.swift
//  change colour app
//
//  Created by karim metawea on 2/11/19.
//  Copyright © 2019 karim metawea. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController , ColorTransferDelegate {

    @IBOutlet weak var colourNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func userDidchose(color: UIColor, name: String) {
        view.backgroundColor! = color
        colourNameLbl.text! = name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "choseColor"{
            guard let colorPickerVC = segue.destination as? ColourPickerVc else {return}
            colorPickerVC.delegate = self
        }
    }
    

    


}


