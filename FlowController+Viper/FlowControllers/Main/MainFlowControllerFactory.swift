//
//  MainFlowControllerFactory.swift
//  FlowController+Viper
//
//  Created by Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//


class MainFlowControllerFactory
{

	let context: Context

	init(context: Context) {
		self.context = context
	}

	func buildAuth() ->AuthAssembly.Output {
		return AuthAssembly().build(context: context)
	}

	func buildMain() ->MainAssembly.Output {
		return MainAssembly().build(context: context)
	}

	func buildFirstFlow(flowController: IFlowController) -> IFlowController{
		return FirstFlowController(navigationController: flowController.navigationController)
	}

	func buildSecondFlow(flowController: IFlowController) -> IFlowController{
		return SecondFlowController(navigationController: flowController.navigationController)
	}
}
