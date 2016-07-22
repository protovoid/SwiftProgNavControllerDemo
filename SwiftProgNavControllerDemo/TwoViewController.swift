//
//  TwoViewController.swift
//  SwiftProgNavControllerDemo
//
//  Created by Chad on 7/20/16.
//  Copyright © 2016 Chad Williams. All rights reserved.
//

import UIKit

protocol TwoVCDelegate {
  func didFinishTwoVC(controller:TwoViewController)
}

class TwoViewController: UIViewController {
  
  var delegate:TwoVCDelegate!=nil
  var vcCount:Int = 0

  
  @IBAction func backButton(sender: UIButton) {
    //navigationController?.popViewControllerAnimated(true)
    delegate.didFinishTwoVC(self)
  }
  
  
  @IBAction func nextButton(sender: UIButton) {
    let vc = ThreeViewController(nibName: "ThreeViewController", bundle: nil)
    navigationController?.pushViewController(vc, animated: true)
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()
      navigationItem.title = "Count: \(vcCount)"
      //print("\(vcCount) ")

        // Do any additional setup after loading the view.
    }



}
