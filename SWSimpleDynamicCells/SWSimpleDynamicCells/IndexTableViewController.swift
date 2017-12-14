//
//  IndexTableViewController.swift
//  SWSimpleDynamicCells
//
//  Created by Don Mag on 12/14/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class IndexTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
		let b = UIBarButtonItem(title: "Replace", style: .plain, target: self, action: #selector(replaceCurrentVC))
		self.navigationItem.rightBarButtonItem = b
		
    }

	func replaceCurrentVC() -> Void {
		
		if let vc = storyboard?.instantiateViewController(withIdentifier: "SectionBKG") as? SectionBKGTableViewController {
			self.navigationController?.viewControllers = [vc]
		}
		
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		if indexPath.row == 3 {
			replaceCurrentVC()
		}
	}
	
}
