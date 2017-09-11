//
//  FynTableViewController.swift
//  SWSimpleDynamicCells
//
//  Created by Don Mag on 9/11/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class FourLabelCell: UITableViewCell {
	
	@IBOutlet weak var amountLabel: UILabel!
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var priceLabel: UILabel!
	@IBOutlet weak var eanLabel: UILabel!
	
}

class FynTableViewController: UITableViewController {

	var randomTitles = [
		"This is the first title.",
		"Here is the second title.",
		"The third title is longer than the first two titles.",
		"The Title for the fourth row is really long. So long, in fact, that it should wrap to a bunch of lines and look kinda strange.",
		"Bet you could guess this is the 5th title!",
		]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		tableView.estimatedRowHeight = 80
		tableView.rowHeight = UITableViewAutomaticDimension
		
	}
	
	// MARK: - Table view data source
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return randomTitles.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "FourLabelCell", for: indexPath) as! FourLabelCell
		
		// Configure the cell...
		cell.amountLabel.text = "\(indexPath.row)x"
		cell.priceLabel.text = "€ 123,45"
		cell.eanLabel.text = "EAN \(indexPath)"
		
		cell.titleLabel.text = randomTitles[indexPath.row]
		
		return cell
	}
	
}
