//
//  Movie.swift
//  movies-recommendations-App
//
//  Created by Mehdi Benrefad on 17/04/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import Foundation

struct Movie {
    var title = ""
    var year = 0

    static var list = [
        Movie(title: "The Shawshank Redemption", year: 1994),
        Movie(title: "The Godfather", year: 1972),
        Movie(title: "The Dark Knight", year: 2008),
        Movie(title: "The Godfather: Part II", year: 1974),
        Movie(title: "Avengers: Infinity War", year: 2018),
        Movie(title: "Schindler's List", year: 1993),
        Movie(title: "Pulp Fiction", year: 1994),
        Movie(title: "The Lord of the Rings: The Return of the King", year: 2003),
        Movie(title: "12 Angry Men", year: 1957),
        Movie(title: "The Good, the Bad and the Ugly", year: 1966),
        Movie(title: "The Lord of the Rings: The Fellowship of the Ring", year: 2001),
        Movie(title: "Inception", year: 2010),
        Movie(title: "Forrest Gump", year: 1994),
        Movie(title: "Fight Club", year: 1999),
        Movie(title: "Star Wars: Episode V - The Empire Strikes Back", year: 1980),
        Movie(title: "The Matrix", year: 1999),
        Movie(title: "Goodfellas", year: 1990),
        Movie(title: "The Lord of the Rings: The Two Towers", year: 2002),
        Movie(title: "One Flew Over the Cuckoo's Nest", year: 1975),
        Movie(title: "Seven Samurai", year: 1954),
        Movie(title: "Interstellar", year: 2014),
        Movie(title: "Star Wars: Episode IV - A New Hope", year: 1977),
        Movie(title: "Se7en", year: 1995),
        Movie(title: "LÃ©on: The Professional", year: 1994),
        Movie(title: "The Silence of the Lambs", year: 1991),
        Movie(title: "Saving Private Ryan", year: 1998),
        Movie(title: "City of God", year: 2002),
        Movie(title: "The Usual Suspects", year: 1995),
        Movie(title: "Spirited Away", year: 2001),
        Movie(title: "Life Is Beautiful", year: 1997),
        Movie(title: "It's a Wonderful Life", year: 1946),
        Movie(title: "City Lights", year: 1931),
        Movie(title: "Coco", year: 2017),
        Movie(title: "Gladiator", year: 2000),
        Movie(title: "The Lion King", year: 1994),
        Movie(title: "Back to the Future", year: 1985),
        Movie(title: "The Green Mile", year: 1999),
        Movie(title: "The Prestige", year: 2006),
        Movie(title: "Apocalypse Now", year: 1979),
        Movie(title: "The Departed", year: 2006),
        Movie(title: "Alien", year: 1979),
        Movie(title: "Whiplash", year: 2014),
        Movie(title: "Psycho", year: 1960),
        Movie(title: "Raiders of the Lost Ark", year: 1981),
        Movie(title: "The Intouchables", year: 2011),
        Movie(title: "Terminator 2", year: 1991),
        Movie(title: "Memento", year: 2000),
        Movie(title: "American History X", year: 1998),
        Movie(title: "The Pianist", year: 2002),
        Movie(title: "Casablanca", year: 1942)
    ]
    
    
    
    static func removeMovie(_ index:Int){
        list.remove(at: index)
        
    }
    
}


