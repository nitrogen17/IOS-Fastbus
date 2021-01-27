//
//  BusListCell.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 10/21/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class BusListCell: UITableViewCell {

    @IBOutlet weak var labelCell: UILabel!
    @IBOutlet weak var resultCell: UILabel!
    @IBOutlet weak var priceCell: UILabel!
    @IBOutlet weak var busLogo: UIImageView!

    var cellClosure: (() -> Void)?

    /// Closure for index
    @IBAction func didTap(_ sender: Any) {
        cellClosure?()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
