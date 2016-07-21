//
//  ViewController.swift
//  SwiftProgNavControllerDemo
//
//  Created by Chad on 7/20/16.
//  Copyright © 2016 Chad Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  @IBOutlet weak var fourFiveSwitch: UISwitch!
  
  @IBAction func nextButton(sender: UIButton) {
    let vc = TwoViewController(nibName: "TwoViewController", bundle: nil)
    navigationController?.pushViewController(vc, animated: true)
  }
  
  
  @IBAction func fourButton(sender: UIButton) {
    if fourFiveSwitch.on {
      performSegueWithIdentifier("four", sender: self)
    } else {
      performSegueWithIdentifier("five", sender: self)
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  



}

