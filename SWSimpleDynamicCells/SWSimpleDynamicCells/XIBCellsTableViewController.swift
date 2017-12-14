//
//  XIBCellsTableViewController.swift
//  SWSimpleDynamicCells
//
//  Created by Don Mag on 6/16/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class XIBCellsTableViewController: UITableViewController {
		
	var data = TitlesAndBodies()
	
    override func viewDidLoad() {
        super.viewDidLoad()
	
		let xibCellNIB = UINib(nibName: "FromXIBTableViewCell", bundle:nil)
		tableView.register(xibCellNIB, forCellReuseIdentifier: "xibCell")

		tableView.estimatedRowHeight = 200
		tableView.rowHeight = UITableViewAutomaticDimension
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data.titles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "xibCell", for: indexPath) as! FromXIBTableViewCell

		cell.titleLabel.text = data.titles[indexPath.row]
		cell.bodyLabel.text = data.bodies[indexPath.row]
		
        return cell
    }
	
}
