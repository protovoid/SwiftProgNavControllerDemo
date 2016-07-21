//
//  ViewController.swift
//  SwiftProgNavControllerDemo
//
//  Created by Chad on 7/20/16.
//  Copyright © 2016 Chad Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBAction func nextButton(sender: UIButton) {
    let vc = TwoViewController(nibName: "TwoViewController", bundle: nil)
    navigationController?.pushViewController(vc, animated: true)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  



}

