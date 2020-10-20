//
//  FileManagerExtension.swift
//  MoviesToWatch
//
//  Created by Roberto Fernandes on 19/10/2020.
//

import UIKit

extension FileManager {

    static var documentDirectoryURL: URL {
        return `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
    
    static func saveImage(image: UIImage, name: String) {
        let imageURL = FileManager.documentDirectoryURL.appendingPathComponent(name)
        if let jpgData = image.jpegData(compressionQuality: 0.7) {
            try? jpgData.write(to: imageURL, options: .atomicWrite)
        }
    }
    
    static func loadImage(name: String) -> UIImage? {
        let imageURL = FileManager.documentDirectoryURL.appendingPathComponent(name)
        return UIImage(contentsOfFile: imageURL.path)
    }
    
}
