//
//  ViewModel.swift
//  SocketPlay
//
//  Created by MP-11 on 29/05/18.
//  Copyright © 2018 MP-11. All rights reserved.
//

import UIKit

protocol CellViewModel where Self: NSObject, CellType: ReusableCell, CellType.ModelType == Self {
  associatedtype CellType
}
