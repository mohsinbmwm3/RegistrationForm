//
//  ViewController.swift
//  RegistrationForm
//
//  Created by Khan, Mohsin on 03/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblVwForm: UITableView! {
        didSet {
            tblVwForm.delegate = self
            tblVwForm.dataSource = self
        }
    }
    var fields: [FormField] = [] {
        didSet {
            for field in fields {
                field.register(for: tblVwForm)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fields = [TextInputFormField(viewModel: TextInputViewModel(title: "Username")),
                  TextInputFormField(viewModel: TextInputViewModel(title: "Password", isSecure: true)),
                  ToggleInputFormField(viewModel: ToggleInputViewModel(title: "Stay Logged In", isOn: false))]
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tblVwForm.reloadData()
    }

}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fields.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return fields[indexPath.row].dequeue(for: tblVwForm, at: indexPath)
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return fields[indexPath.row].height
    }
}
