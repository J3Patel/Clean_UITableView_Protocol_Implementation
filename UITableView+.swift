//
//  UITableVIew+.swift
//  SocketPlay
//
//  Created by MP-11 on 29/05/18.
//  Copyright © 2018 MP-11. All rights reserved.
//

import UIKit

extension UITableView {

  func cellForModel<T: CellViewModel>(at: IndexPath, model: T) -> T.CellType  {
    let cell: T.CellType = dequeueReusableCell()
    cell.setupModel(model: model)
    return cell
  }
  
  func dequeueReusableCell<T: ReusableCell>() -> T {
    return self.dequeueReusableCell(withIdentifier: T.reuseIdentifier) as! T
  }
}

