//
//  DescriptionView.swift
//  appJunio
//
//  Created by Pablo on 7/6/24.
//

import UIKit

class DescriptionView: UIViewController {
    @IBOutlet weak var descrip: UITextView!
    @IBOutlet weak var anno: UILabel!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    
    var Title: String?
    var Year: String?
    var summary: String?
    var imageMovie: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()

        self.descrip!.text = summary
        self.titulo!.text = Title
        self.anno!.text = Year
        self.image!.image = imageMovie
        
        
    }
    
    
   

}
