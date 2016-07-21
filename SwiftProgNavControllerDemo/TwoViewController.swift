//
//  TwoViewController.swift
//  SwiftProgNavControllerDemo
//
//  Created by Chad on 7/20/16.
//  Copyright © 2016 Chad Williams. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

  
  @IBAction func backButton(sender: UIButton) {
    navigationController?.popViewControllerAnimated(true)
  }
  
  
  @IBAction func nextButton(sender: UIButton) {
    let vc = ThreeViewController(nibName: "ThreeViewController", bundle: nil)
    navigationController?.pushViewController(vc, animated: true)
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



}
