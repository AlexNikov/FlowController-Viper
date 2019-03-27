//
//  FirstFlowControllerFactory.swift
//  FlowController+Viper
//
//  Created by Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//

class FirstFlowControllerFactory
{
	func buildFirst() ->FirstAssembly.Output {
		return FirstAssembly().build()
	}
}
