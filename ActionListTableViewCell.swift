//
//  ActionListTableViewCell.swift
//  SocketPlay
//
//  Created by MP-11 on 30/05/18.
//  Copyright © 2018 MP-11. All rights reserved.
//

import UIKit

class ActionListTableViewCell: UITableViewCell, ReusableCell {
  
  typealias ModelType = ActionListCellViewModel
  
  @IBOutlet weak var label: UILabel!
  
  func setupModel(model: ActionListCellViewModel) {
    // YOU WILL GET YOUR DATA
  }

}
