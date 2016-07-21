//
//  ThreeViewController.swift
//  SwiftProgNavControllerDemo
//
//  Created by Chad on 7/20/16.
//  Copyright © 2016 Chad Williams. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {

  
  @IBAction func backButton(sender: UIButton) {
    navigationController?.popViewControllerAnimated(true)
  }
  
  
  @IBAction func rootButton(sender: UIButton) {
    navigationController?.popToRootViewControllerAnimated(true)
  }
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



}
