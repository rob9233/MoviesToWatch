//
//  Movie.swift
//  MoviesToWatch
//
//  Created by Roberto Fernandes on 19/10/2020.
//

import UIKit

struct Movie {
    let title: String
    let year: Int
    var image: UIImage {
        FileManager.loadImage(name: title)
        ?? MovieManager.defaultImage
    }
    let description: String
}
