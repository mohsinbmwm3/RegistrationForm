//
//  ToggleInputFormField.swift
//  RegistrationForm
//
//  Created by Khan, Mohsin on 03/02/22.
//

import Foundation
import UIKit

final class ToggleInputFormField {
    var viewModel: ToggleInputViewModel
    
    init(viewModel: ToggleInputViewModel) {
        self.viewModel = viewModel
    }
}
extension ToggleInputFormField: FormField {
    var height: CGFloat { 44.0 }
    
    func register(for tableView: UITableView) {
        tableView.register(UINib(nibName: "ToggleInputFormTableViewCell", bundle: nil), forCellReuseIdentifier: "ToggleInputFormTableViewCell")
    }
    func dequeue(for tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToggleInputFormTableViewCell", for: indexPath) as! ToggleInputFormTableViewCell
        cell.configure(viewModel: viewModel)
        return cell
    }
    
}
