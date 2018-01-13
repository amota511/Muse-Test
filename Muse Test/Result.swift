//
//  Result.swift
//  Muse Test
//
//  Created by amota511 on 11/20/15.
//  Copyright © 2015 Aaron Motayne. All rights reserved.
//
import UIKit
//import Foundation
//import SpriteKit

class Result : UIViewController  {
    
    @IBOutlet var ResultText: UITextView!
   
   
    var Str = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       ResultText.text = Str
     //ResultText.text = "HEY"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func dismissResultView(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
}
