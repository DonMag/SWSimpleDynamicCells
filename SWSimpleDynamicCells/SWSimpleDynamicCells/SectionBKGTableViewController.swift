//
//  SectionBKGTableViewController.swift
//  SWSimpleDynamicCells
//
//  Created by Don Mag on 12/14/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class Type2Cell: UITableViewCell {
	
	@IBOutlet weak var titleLabel: UILabel!
	
	@IBOutlet weak var bodyLabel: UILabel!
	
}

class SectionBKGTableViewController: UITableViewController {

	var data = TitlesAndBodies()
	
	let bkImageView: UIImageView = {
		let v = UIImageView()
		v.image = UIImage(named: "s1")
		return v
	}()

	override func viewDidLayoutSubviews() {
		let sRect = tableView.rect(forSection: 0)
		bkImageView.frame = sRect
		tableView.insertSubview(bkImageView, at: 0)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		tableView.estimatedRowHeight = 200
		tableView.rowHeight = UITableViewAutomaticDimension
		
	}
	
	// MARK: - Table view data source
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 4
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		if section == 0 {
			return data.titles.count
		}
		return 3
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Type2Cell", for: indexPath) as! Type2Cell
		
		if indexPath.section == 0 {
			cell.titleLabel.text = data.titles[indexPath.row]
			cell.bodyLabel.text = data.bodies[indexPath.row]
			cell.backgroundColor = .clear
		} else {
			cell.titleLabel.text = "Section \(indexPath.section + 1)"
			cell.bodyLabel.text = "Body for row \(indexPath.row)"
		}
		
		return cell
	}
	
}
