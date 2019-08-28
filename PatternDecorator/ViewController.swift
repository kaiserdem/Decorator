//
//  ViewController.swift
//  PatternDecorator
//
//  Created by Kaiserdem on 28.08.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var typeLabel: UILabel!
  @IBOutlet weak var priceLabel: UILabel! {
    didSet {
      priceLabel.text = String(merscedes.getPrice()) + "$"
    }
  }
  var merscedes: MerscdesProtocol = MercedesCClass()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.typeLabel.text = "Mercedes C-Class Basic"
   
  }

  @IBAction func segmentadControl(_ sender: UISegmentedControl) {
    
    switch sender.selectedSegmentIndex {
    case 0:
      merscedes = MercedesCClass()
      priceLabel.text = String(merscedes.getPrice()) + "$"
      typeLabel.text = merscedes.getTitle()
      
    case 1:
      merscedes = MercedesCClass()
      merscedes = AlloyWheels(decorator: merscedes)
      priceLabel.text = String(merscedes.getPrice()) + "$"
      typeLabel.text = merscedes.getTitle()
      
    case 2:
      merscedes = MercedesCClass()
      merscedes = PanframeRoof(decorator: merscedes)
      priceLabel.text = String(merscedes.getPrice()) + "$"
      typeLabel.text = merscedes.getTitle()
   
    default:
      break
    }
  }
  
}

