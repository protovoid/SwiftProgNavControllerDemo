//
//  ViewController.swift
//  SwiftProgNavControllerDemo
//
//  Created by Chad on 7/20/16.
//  Copyright © 2016 Chad Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController,TwoVCDelegate {
  
  var vcCount:Int = 0 {
    didSet {
      navigationItem.title = "Count: \(vcCount)"
    }
  }
  
  func didFinishTwoVC(controller: TwoViewController) {
    vcCount = controller.vcCount + 1
    controller.navigationController?.popViewControllerAnimated(true)
  }
  
  
  @IBOutlet weak var fourFiveSwitch: UISwitch!
  
  @IBAction func nextButton(sender: UIButton) {
    let vc = TwoViewController(nibName: "TwoViewController", bundle: nil)
    vc.vcCount = vcCount
    vc.delegate = self 
    navigationController?.pushViewController(vc, animated: true)
  }
  
  
  @IBAction func fourButton(sender: UIButton) {
    if fourFiveSwitch.on {
      performSegueWithIdentifier("five", sender: self)
    } else {
      performSegueWithIdentifier("four", sender: self)
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  



}

