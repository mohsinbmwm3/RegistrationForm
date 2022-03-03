//
//  FormField.swift
//  RegistrationForm
//
//  Created by Khan, Mohsin on 03/02/22.
//

import Foundation
import UIKit

protocol FormField: AnyObject {
    var height: CGFloat { get }
    
    func register(for tableView: UITableView)
    func dequeue(for tableView: UITableView, at indexPath: IndexPath) -> UITableViewCell
}
