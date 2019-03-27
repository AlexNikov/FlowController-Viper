//
//  FirstFlowController.swift
//  FlowController+Viper
//
//  Created by Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//

import UIKit

class FirstFlowController: IFlowController
{
	var navigationController: UINavigationController
	private let factory: FirstFlowControllerFactory

	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
		self.factory = FirstFlowControllerFactory()
	}

	func start() {
		let (vc, presenter) = factory.buildFirst()
		navigationController.pushViewController(vc, animated: true)
	}
}
