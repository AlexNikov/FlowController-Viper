//
//  FirstAssembly.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

import UIKit

final class FirstAssembly
{
	typealias Output = (vc: UIViewController, presenter: FirstModuleInput)
	func build() -> Output {
		let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
		guard let viewController = storyBoard.instantiateViewController(withIdentifier: "FirstViewController") as? FirstViewController else {
			fatalError()
		}

		let interactor = FirstInteractor()
		let presenter = FirstPresenter(interactor: interactor)

		viewController.output = presenter
		presenter.view = viewController

		return (viewController, presenter)
	}
}
