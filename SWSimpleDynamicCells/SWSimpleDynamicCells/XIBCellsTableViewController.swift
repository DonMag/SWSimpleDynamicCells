//
//  XIBCellsTableViewController.swift
//  SWSimpleDynamicCells
//
//  Created by Don Mag on 6/16/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class XIBCellsTableViewController: UITableViewController {
	
	var titles = [
		"Length",
		"No Wrap",
		"Wrap",
		"Wrap",
		"Testing",
		]
	
	var bodies = [
		"This all works well — until the content label's exceeds the width of the cell by just a little bit. The cells resize properly if it wraps a little bit past the end of the cell, and then this content is hidden.",
		"This will be enough to wrap onto a second line.",
		"This will be enough tooooooo wrap onto a second line.",
		"Have you tried turning it off and back on again? Why, yes I have!",
		"Let's see how this works."
	]
	
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
        return titles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "xibCell", for: indexPath) as! FromXIBTableViewCell

		cell.titleLabel.text = titles[indexPath.row]
		cell.bodyLabel.text = bodies[indexPath.row]
		
        return cell
    }
	
}
