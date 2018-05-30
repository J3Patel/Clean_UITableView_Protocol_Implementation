//
//  ActionListCellViewModel.swift
//  SocketPlay
//
//  Created by MP-11 on 30/05/18.
//  Copyright © 2018 MP-11. All rights reserved.
//

import UIKit

class ActionListCellViewModel: NSObject, CellViewModel {

  typealias CellType = ActionListTableViewCell
  
  let data: String
  
  init(value: String) {
    data = value
    super.init()
  }
}
