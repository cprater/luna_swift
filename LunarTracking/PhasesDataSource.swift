//
//  PhasesDataSource.swift
//  LunarTracking
//
//  Created by Christopher Prater on 4/12/17.
//  Copyright © 2017 Christopher Prater. All rights reserved.
//

import UIKit

class PhasesDataSource: NSObject {
    // MARK: Properties
    fileprivate var phases: [Phase] = []
    fileprivate let model: LunarPhaseModel
    
    weak var tableView: UITableView? {
        didSet {
            self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
            self.tableView?.reloadData()
        }
    }
    
    // MARK: Initialization
    init(model: LunarPhaseModel) {
        self.model = model
        super.init()
    }
}

extension PhasesDataSource: UITableViewDataSource {
    // Set number of rows in table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.phases.count
    }
    
    // Configure individual cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        
        guard let phaseCell  = cell as? PhaseTableViewCell else { return cell }
        phaseCell.viewModel = viewModel(for: indexPath)
        
        return cell
    }
}
