//
//  MovieManager.swift
//  MoviesToWatch
//
//  Created by Roberto Fernandes on 19/10/2020.
//

import UIKit


struct MovieManager {
    
    static let defaultImage = UIImage(systemName: "film.fill")!
    
    static let hardcodedMovies: [Movie] = [
        Movie(title: "The Shawshank Redemption", year: 1994, description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency."),
        Movie(title: "The Godfather", year: 1972, description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son."),
        Movie(title: "The Godfather: Part II", year: 1974, description: "The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate."),
        Movie(title: "The Dark Knight", year: 2008, description: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice."),
        Movie(title: "12 Angry Men", year: 1957, description: "A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence."),
        Movie(title: "Schindler's List", year: 1993, description: "In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis."),
        Movie(title: "The Lord of the Rings: The Return of the King", year: 2003, description: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring."),
        Movie(title: "Pulp Fiction", year: 1994, description: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption."),
        Movie(title: "The Good, the Bad and the Ugly", year: 1966, description: "A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery."),
        Movie(title: "The Lord of the Rings: The Fellowship of the Ring", year: 2001, description: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron."),
        Movie(title: "Fight Club", year: 1999, description: "TAn insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.")
    ]
}
