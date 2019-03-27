//
//  SecondFlowController.swift
//  FlowController+Viper
//
//  Created by Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//

import UIKit

class SecondFlowController: IFlowController {
	var navigationController: UINavigationController
	private let factory: SecondFlowControllerFactory

	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
		self.factory = SecondFlowControllerFactory()
	}

	func start() {
		let (vc, presenter) = factory.buildSecond()
		navigationController.pushViewController(vc, animated: true)
	}
}
