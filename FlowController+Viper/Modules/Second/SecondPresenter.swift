//
//  SecondPresenter.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

protocol SecondModuleInput: AnyObject
{
	var callBack: (() -> Void)? { get set }
}

protocol SecondViewOutput: AnyObject
{
	func viewDidLoad()
}

final class SecondPresenter: SecondModuleInput
{
	fileprivate let interactor: SecondInteractorInput
	weak var view: SecondViewInput?

	var callBack: (() -> Void)?

	init(interactor: SecondInteractorInput) {
		self.interactor = interactor
	}
}

// MARK: SecondViewOutput
extension SecondPresenter: SecondViewOutput
{
	func viewDidLoad() {

	}
}
