//
//  PanframeRoof.swift
//  PatternDecorator
//
//  Created by Kaiserdem on 28.08.2019.
//  Copyright © 2019 Kaiserdem. All rights reserved.
//

import Foundation

class PanframeRoof: MercedesDecorator {
  
  required init(decorator: MerscdesProtocol) {
    super.init(decorator: decorator)
  }
  override func getTitle() -> String {
    return super.getTitle() + " Premium roof"
  }
  override func getPrice() -> Int {
    return super.getPrice() + 2000
  }
}
