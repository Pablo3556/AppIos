//
//  movie.swift
//  appJunio
//
//  Created by Pablo on 7/6/24.
//

import Foundation
import UIKit

class Movie{
    var title: String
    var description : String
    var year: String
    var imageView : UIImage
    
    init(title: String, description: String, year: String, imageView: UIImage) {
        self.title = title
        self.description = description
        self.year = year
        self.imageView = imageView
    }
}
