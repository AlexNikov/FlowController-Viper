//
//  MainFlowController.swift
//  FlowController+Viper
//
//  Created by Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//

import UIKit

class MainFlowController: IFlowController
{
	var navigationController = UINavigationController()
	private let factory: MainFlowControllerFactory
	private var childFlowController: IFlowController?
	var vc: UIViewController?

	init() {
		self.factory = MainFlowControllerFactory(context: Context())
	}

	func start() {
		if Context().userDefaultsStorage.load(key: .auth) != nil {
			openMain()
		}
		else {
			openAuth()
		}
	}

	func openAuth() {

		let (vc, presenter) = factory.buildAuth()
		presenter.callBack = { [weak self] in
			self?.openMain()
		}
		navigationController = UINavigationController(rootViewController: vc)
		UIApplication.shared.delegate?.window??.rootViewController = navigationController
	}

	func openMain() {
		let (vc, presenter) = factory.buildMain()
		self.vc = vc
		navigationController = UINavigationController(rootViewController: vc)
		UIApplication.shared.delegate?.window??.rootViewController = navigationController

		presenter.callBack = { [weak self] in
			self?.openAuth()
		}

		presenter.callBackFirst = { [weak self] in
			guard let self = self else { return }
			self.childFlowController = self.factory.buildFirstFlow(flowController: self)
			self.childFlowController?.start()
		}

		presenter.callBackSecond = { [weak self] in
			guard let self = self else { return }
			self.childFlowController = self.factory.buildSecondFlow(flowController: self)
			self.childFlowController?.start()
		}

	}
}
