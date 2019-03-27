//
//  IFlowController.swift
//  FlowController+Viper
//
//  Created by Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//

import UIKit

protocol IFlowController: AnyObject
{
	var navigationController: UINavigationController { get }

	func start()
}

