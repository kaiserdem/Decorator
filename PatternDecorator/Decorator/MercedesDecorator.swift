//
//  MercedesDecorator.swift
//  PatternDecorator
//
//  Created by Kaiserdem on 28.08.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import Foundation

class MercedesDecorator: MerscdesProtocol {
  
  private let decoratorType: MerscdesProtocol
  
  required init(decorator: MerscdesProtocol) {
    self.decoratorType = decorator
  }
  
  func getTitle() -> String {
    return decoratorType.getTitle()
  }
  
  func getPrice() -> Int {
    return Int(decoratorType.getPrice())
  }
  
}
