//
//  MainViewController.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

import UIKit

protocol MainViewInput: AnyObject
{
}

final class MainViewController: UIViewController
{
	var output: MainViewOutput?

	override func viewDidLoad() {
		super.viewDidLoad()
		output?.viewDidLoad()
	}

	deinit {

	}
}

// MARK: Button Action
extension MainViewController
{
	@IBAction func Exit(_ sender: Any) {
		output?.tapExit()
	}

	@IBAction func tapFirst(_ sender: Any) {
		output?.tapFirst()
	}

	@IBAction func tapSecond(_ sender: Any) {
		output?.tapSecond()
	}
}

extension MainViewController: MainViewInput
{

}
