//
//  AuthViewController.swift
//  FlowController+Viper
//
//  Created Алексей Молокович on 26/03/2019.
//  Copyright © 2019 Алексей Молокович. All rights reserved.
//
//

import UIKit

protocol AuthViewInput: AnyObject
{
}

final class AuthViewController: UIViewController
{
	var output: AuthViewOutput?
	@IBOutlet weak var textView: UITextField!

	override func viewDidLoad() {
		super.viewDidLoad()
		output?.viewDidLoad()
	}
	@IBAction func tapLogin(_ sender: Any) {
		guard let login = textView.text else { return }

		output?.login(login: login)
	}

	deinit {

	}

}

// MARK: Button Action
extension AuthViewController
{

}

extension AuthViewController: AuthViewInput
{

}
