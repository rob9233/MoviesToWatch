//
//  ViewController.swift
//  MoviesToWatch
//
//  Created by Roberto Fernandes on 19/10/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBSegueAction func showMovieDetail(_ coder: NSCoder) -> MovieDetailViewController? {
        guard let indexPath = tableView.indexPathForSelectedRow else {
            return nil
        }
        let movie = MovieManager.hardcodedMovies[indexPath.row]
        
        return MovieDetailViewController(coder: coder, movie: movie)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MovieManager.hardcodedMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(MovieCell.self)", for: indexPath) as? MovieCell
        else {
            fatalError("MovieCell cellForRowAt error")
        }
        
        let movie = MovieManager.hardcodedMovies[indexPath.row]
        cell.movieTitle?.text = movie.title
        cell.movieImage?.image = movie.image
        cell.movieYear?.text = String(movie.year)
        
        return cell
    }
}

