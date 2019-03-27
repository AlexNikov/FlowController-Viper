//
//  SecondViewController.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

import UIKit

protocol SecondViewInput: AnyObject
{

}

final class SecondViewController: UIViewController
{
	var output: SecondViewOutput?

	override func viewDidLoad() {
		super.viewDidLoad()
		output?.viewDidLoad()
	}
}

// MARK: Button Action
extension SecondViewController
{

}

extension SecondViewController: SecondViewInput
{

}
