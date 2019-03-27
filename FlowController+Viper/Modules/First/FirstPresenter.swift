//
//  FirstPresenter.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

protocol FirstModuleInput: AnyObject
{
	var callBack: (() -> Void)? { get set }
}

protocol FirstViewOutput: AnyObject
{
	func viewDidLoad()
}

final class FirstPresenter: FirstModuleInput
{
	fileprivate let interactor: FirstInteractorInput
	weak var view: FirstViewInput?

	var callBack: (() -> Void)?

	init(interactor: FirstInteractorInput) {
		self.interactor = interactor
	}
}

// MARK: FirstViewOutput
extension FirstPresenter: FirstViewOutput
{
	func viewDidLoad() {

	}
}
