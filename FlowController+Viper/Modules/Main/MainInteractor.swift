//
//  MainInteractor.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

// Interactor Input
protocol MainInteractorInput
{
	func deleteLogin()
}

final class MainInteractor: MainInteractorInput
{
	typealias Dependencies = HasIUserDefaultsStorage

	let userDefaultsStorage: IUserDefaultsStorage

	init(context: Dependencies) {
		self.userDefaultsStorage = context.userDefaultsStorage
	}

	func deleteLogin() {
		userDefaultsStorage.save(value: nil, key: .auth)
	}
}
