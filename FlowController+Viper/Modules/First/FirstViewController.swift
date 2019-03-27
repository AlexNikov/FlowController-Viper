//
//  FirstViewController.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

import UIKit

protocol FirstViewInput: AnyObject
{

}

final class FirstViewController: UIViewController
{
	var output: FirstViewOutput?

	override func viewDidLoad() {
		super.viewDidLoad()
		output?.viewDidLoad()
	}
}

// MARK: Button Action
extension FirstViewController
{

}

extension FirstViewController: FirstViewInput
{

}
