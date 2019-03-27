//
//  AuthInteractor.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

// Interactor Input
protocol AuthInteractorInput
{
	func save(login: String)
}

final class AuthInteractor: AuthInteractorInput
{
	typealias Dependencies = HasIUserDefaultsStorage
	
	let userDefaultsStorage: IUserDefaultsStorage

	init(context: Dependencies) {
		self.userDefaultsStorage = context.userDefaultsStorage
	}

	func save(login: String) {
		userDefaultsStorage.save(value: login, key: .auth)
	}
}
