//
//  MainTableViewCell.swift
//  appJunio
//
//  Created by Pablo on 7/6/24.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var Description: UITextView!
    
    @IBOutlet weak var Title: UILabel!
    

    @IBOutlet weak var Year: UILabel!
    
    @IBOutlet weak var ImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
