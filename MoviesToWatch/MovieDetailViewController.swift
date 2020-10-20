//
//  MovieDetailViewController.swift
//  MoviesToWatch
//
//  Created by Roberto Fernandes on 19/10/2020.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var changeImageBtn: UIButton!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    let movie: Movie
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieTitleLabel.text = movie.title
        movieYearLabel.text = String(movie.year)
        movieImageView.image = movie.image
        descriptionTextView.text = movie.description 
    }
    
    required init?(coder: NSCoder) {
        fatalError("Movie not passed to MovieDetailViewController")
    }
    
    init?(coder: NSCoder, movie: Movie) {
        self.movie = movie
        super.init(coder: coder)
    }
    @IBAction func pickImage(_ sender: Any) {
        let imagePircker = UIImagePickerController()
        imagePircker.delegate = self
        imagePircker.sourceType = .photoLibrary
        imagePircker.allowsEditing = true
        present(imagePircker, animated: true)
    }
    
}

extension MovieDetailViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] as? UIImage
        if let safeImage = image {
            movieImageView.image = safeImage
            FileManager.saveImage(image: safeImage, name: movie.title)
        }
        dismiss(animated: true)
    }
}
