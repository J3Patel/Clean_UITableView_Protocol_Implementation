//
//  ReusableCell.swift
//  SocketPlay
//
//  Created by MP-11 on 29/05/18.
//  Copyright © 2018 MP-11. All rights reserved.
//

import UIKit

protocol ReusableCell where Self: UITableViewCell, ModelType: CellViewModel {
  associatedtype ModelType
  static var reuseIdentifier: String { get }
  func setupModel(model: ModelType)
}

extension ReusableCell {
  static var reuseIdentifier: String {
    return String(describing: Self.self)
  }
}

