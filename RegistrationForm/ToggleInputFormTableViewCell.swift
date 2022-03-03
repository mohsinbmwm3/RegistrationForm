//
//  ToggleInputFormTableViewCell.swift
//  RegistrationForm
//
//  Created by Khan, Mohsin on 03/02/22.
//

import UIKit

class ToggleInputFormTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var switchField: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(viewModel: ToggleInputViewModel) {
        lblTitle.text = viewModel.title()
        switchField.isOn = viewModel.isOn()
    }
}
