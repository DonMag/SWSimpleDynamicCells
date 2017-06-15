//
//  DynaTableViewController.swift
//  SWSimpleDynamicCells
//
//  Created by Don Mag on 6/15/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class Type1Cell: UITableViewCell {
	
	@IBOutlet weak var titleLabel: UILabel!
	
	@IBOutlet weak var bodyLabel: UILabel!

	override func awakeFromNib() {
		super.awakeFromNib()

		titleLabel.font = UIFont.preferredFont(forTextStyle: .caption1)
		bodyLabel.font = UIFont.preferredFont(forTextStyle: .body)
		
		// just to make it easy to see this code executed
		titleLabel.textColor = .red
		bodyLabel.textColor = .blue
	}
	
}

class DynaTableViewController: UITableViewController {
	
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
		"This will be enough too wrap onto a second line.",
		"Have you tried turning it off and back on again?",
		"Let's see how this works."
	]
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		tableView.estimatedRowHeight = 200
		tableView.rowHeight = UITableViewAutomaticDimension
		
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
	}

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Type1Cell", for: indexPath) as! Type1Cell
		
		cell.titleLabel.text = titles[indexPath.row]
		cell.bodyLabel.text = bodies[indexPath.row]

        return cell
    }

}
