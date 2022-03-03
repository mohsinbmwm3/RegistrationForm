//
//  TextInputFormField.swift
//  RegistrationForm
//
//  Created by Khan, Mohsin on 03/02/22.
//

import UIKit

class TextInputFormField: NSObject {
    var viewModel: TextInputViewModel
    
    init(viewModel: TextInputViewModel) {
        self.viewModel = viewModel
    }
}
extension TextInputFormField: FormField {
    var height: CGFloat { 44.0 }
    func register(for tableView: UITableView) {
        tableView.register(UINib(nibName: "TextInputCell", bundle: nil), forCellReuseIdentifier: "TextInputCell")
    }
    func dequeue(for tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextInputCell", for: indexPath) as! TextInputCell
        cell.configure(viewModel: viewModel)
        return cell
    }
}
