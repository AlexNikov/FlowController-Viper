//
//  StorageService.swift
//  FlowController+Viper
//
//  Created by Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//


import Foundation

enum StorageKeyType: String
{
	case auth
}

protocol IUserDefaultsStorage
{
	func save(value: Any?, key: StorageKeyType)
	func load(key: StorageKeyType) -> Any?
}

final class StorageService: IUserDefaultsStorage
{
	func save(value: Any?, key: StorageKeyType) {
		UserDefaults.standard.set(value, forKey: key.rawValue)
	}

	func load(key: StorageKeyType) -> Any? {
		return UserDefaults.standard.object(forKey: key.rawValue)
	}
}
