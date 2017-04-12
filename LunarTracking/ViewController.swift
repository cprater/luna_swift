//
//  ViewController.swift
//  LunarTracking
//
//  Created by Christopher Prater on 4/12/17.
//  Copyright © 2017 Christopher Prater. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Properties
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate let model = LunarPhaseModel()
    
    fileprivate lazy var dataSource: PhasesDataSource = {
        return PhasesDataSource(model: self.model)
    }()
    
    fileprivate lazy var headerView: LunarHeaderView = {
        let nib = Bundle.main.loadNibNamed("LunarHeaderView", owner: self, options: nil)
        guard let headerView = nib?.first as? LunarHeaderView else {
            fatalError("Could not load LunarHeaderView from nib")
        }
        
        return headerView
    }()
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.dataSource.tableView = self.tableView!
        
        self.tableView.isPagingEnabled = true
        self.tableView.rowHeight = 44.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        // Set headerView after subviews have been rendered
        self.tableView.tableHeaderView = self.headerView
    }
}

