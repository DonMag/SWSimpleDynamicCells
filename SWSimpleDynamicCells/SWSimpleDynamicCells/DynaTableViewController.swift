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
	
	var data = TitlesAndBodies()
	
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
		return data.titles.count
	}

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Type1Cell", for: indexPath) as! Type1Cell
		
		cell.titleLabel.text = data.titles[indexPath.row]
		cell.bodyLabel.text = data.bodies[indexPath.row]

        return cell
    }

}
