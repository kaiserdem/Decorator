//
//  AlloyWheels.swift
//  PatternDecorator
//
//  Created by Kaiserdem on 28.08.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import Foundation

class AlloyWheels: MercedesDecorator {
  
  required init(decorator: MerscdesProtocol) {
    super.init(decorator: decorator)
  }
  override func getTitle() -> String {
    return super.getTitle() + " Alloy wheels"
  }
  override func getPrice() -> Int {
    return super.getPrice() + 1500
  }
}
