//
//  TextInputCell.swift
//  RegistrationForm
//
//  Created by Khan, Mohsin on 03/02/22.
//

import UIKit

class TextInputCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtFldContent: UITextField! {
        didSet {
            txtFldContent.textAlignment = .right
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func configure(viewModel: TextInputViewModel) {
        lblTitle.text = viewModel.title()
        txtFldContent.placeholder = viewModel.title()
        txtFldContent.text = viewModel.value()
        txtFldContent.isSecureTextEntry = viewModel.isSecure()
    }
}
