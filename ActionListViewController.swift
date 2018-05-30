//
//  ActionListViewController.swift
//  SocketPlay
//
//  Created by MP-11 on 27/05/18.
//  Copyright © 2018 MP-11. All rights reserved.
//

import UIKit

class ActionListViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  let data: [String] = ["ABC",
                        "PQD",
                        "123231",
                        "12341231",
                        "1212ede34",
                        "23vc43",
                        "34fqcw4r",
                        "ergfrtgert",
                        "setrgtgrtg",
                        "stgrtgdrtg",
                        "stgrtvrt"]
  
  var viewModel: [ActionListCellViewModel] = []
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.register(UINib(nibName: "ActionListTableViewCell", bundle: nil), forCellReuseIdentifier: "ActionListTableViewCell")
    for data in  data {
      viewModel.append(ActionListCellViewModel(value: data))
    }
    
    tableView.dataSource = self
    tableView.delegate = self

  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }

}

extension ActionListViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return tableView.cellForModel(at: indexPath, model: viewModel[indexPath.row])
  }
}
