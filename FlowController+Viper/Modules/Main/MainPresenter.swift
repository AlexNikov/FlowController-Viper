//
//  MainPresenter.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

protocol MainModuleInput: AnyObject
{
	var callBack: (() -> Void)? { get set }
	var callBackFirst: (() -> Void)? { get set }
	var callBackSecond: (() -> Void)? { get set }
}

protocol MainViewOutput: AnyObject
{
	func viewDidLoad()
	func tapExit()
	func tapFirst()
	func tapSecond()
}

final class MainPresenter: MainModuleInput
{
	fileprivate let interactor: MainInteractorInput
	weak var view: MainViewInput?

	var callBack: (() -> Void)?
	var callBackFirst: (() -> Void)?
	var callBackSecond: (() -> Void)?

	init(interactor: MainInteractorInput) {
		self.interactor = interactor
	}
}

// MARK: MainViewOutput
extension MainPresenter: MainViewOutput
{
	func tapFirst() {
		callBackFirst?()
	}

	func tapSecond() {
		callBackSecond?()
	}

	func viewDidLoad() {
	}

	func tapExit() {
		interactor.deleteLogin()
		callBack?()
	}


}
