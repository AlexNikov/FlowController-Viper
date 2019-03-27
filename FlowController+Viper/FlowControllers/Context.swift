//
//  Context.swift
//  FlowController+Viper
//
//  Created by Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//


protocol HasIUserDefaultsStorage
{
	var userDefaultsStorage: IUserDefaultsStorage { get }
}

final class Context: HasIUserDefaultsStorage
{
	lazy var userDefaultsStorage: IUserDefaultsStorage = {
		return StorageService()
	}()

}
