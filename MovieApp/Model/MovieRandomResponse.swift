//
//  MovieRandomResponse.swift
//  MovieApp
//
//  Created by Микаэл Мартиросян on 04.05.2023.
//

import Foundation

struct MovieRandomResponse: Decodable {
    let name: String
    let year: Int
    let rating: MovieRandomRating 
}

struct MovieRandomRating: Decodable {
    let kp: Double // Kinopoisk rating
}


/*
 
 {
   "id": 666,
   "externalId": {
     "kpHD": "48e8d0acb0f62d8585101798eaeceec5",
     "imdb": "tt0232500",
     "tmdb": 9799
   },
   "name": "Человек паук",
   "alternativeName": "Spider man",
   "enName": "Spider man",
   "names": [
     {
       "name": "string",
       "language": "string",
       "type": "string"
     }
   ],
   "type": "movie",
   "typeNumber": 1,
   "year": 2023,
   "description": "string",
   "shortDescription": "string",
   "slogan": "string",
   "status": "completed",
   "rating": {
     "kp": 6.2,
     "imdb": 8.4,
     "tmdb": 3.2,
     "filmCritics": 10,
     "russianFilmCritics": 5.1,
     "await": 6.1
   },
   "votes": {
     "kp": "60000",
     "imdb": "50000",
     "tmdb": 10000,
     "filmCritics": 10000,
     "russianFilmCritics": 4000,
     "await": 34000
   },
   "movieLength": 120,
   "ratingMpaa": "pg13",
   "ageRating": 16,
   "logo": {
     "url": "string"
   },
   "poster": {
     "url": "string",
     "previewUrl": "string"
   },
   "backdrop": {
     "url": "string",
     "previewUrl": "string"
   },
   "videos": {
     "trailers": [
       {
         "url": "https://www.youtube.com/embed/ZsJz2TJAPjw",
         "name": "Official Trailer",
         "site": "youtube",
         "type": "TRAILER",
         "size": 0
       }
     ],
     "teasers": [
       {
         "url": "https://www.youtube.com/embed/ZsJz2TJAPjw",
         "name": "Official Trailer",
         "site": "youtube",
         "type": "TRAILER",
         "size": 0
       }
     ]
   },
   "genres": [
     {
       "name": "string"
     }
   ],
   "countries": [
     {
       "name": "string"
     }
   ],
   "persons": [
     {
       "id": 6317,
       "photo": "https://st.kp.yandex.net/images/actor_iphone/iphone360_6317.jpg",
       "name": "Пол Уокер",
       "enName": "Paul Walker",
       "description": "string",
       "profession": "string",
       "enProfession": "string"
     }
   ],
   "reviewInfo": {
     "count": 0,
     "positiveCount": 0,
     "percentage": "string"
   },
   "seasonsInfo": [
     {
       "number": 0,
       "episodesCount": 0
     }
   ],
   "budget": {
     "value": 207283,
     "currency": "€"
   },
   "fees": {
     "world": {
       "value": 207283,
       "currency": "€"
     },
     "russia": {
       "value": 207283,
       "currency": "€"
     },
     "usa": {
       "value": 207283,
       "currency": "€"
     }
   },
   "premiere": {
     "country": "США",
     "world": "2023-02-25T02:44:39.359Z",
     "russia": "2023-02-25T02:44:39.359Z",
     "digital": "string",
     "cinema": "2023-02-25T02:44:39.359Z",
     "bluray": "string",
     "dvd": "string"
   },
   "similarMovies": [
     {
       "id": 0,
       "name": "string",
       "enName": "string",
       "alternativeName": "string",
       "type": "string",
       "poster": {
         "url": "string",
         "previewUrl": "string"
       }
     }
   ],
   "sequelsAndPrequels": [
     {
       "id": 0,
       "name": "string",
       "enName": "string",
       "alternativeName": "string",
       "type": "string",
       "poster": {
         "url": "string",
         "previewUrl": "string"
       }
     }
   ],
   "watchability": {
     "items": [
       {
         "name": "string",
         "logo": {
           "url": "string"
         },
         "url": "string"
       }
     ]
   },
   "releaseYears": [
     {
       "start": 2022,
       "end": 2023
     }
   ],
   "top10": 1,
   "top250": 200,
   "ticketsOnSale": true,
   "totalSeriesLength": 155,
   "seriesLength": 20,
   "isSeries": true,
   "audience": [
     {
       "count": 1000,
       "country": "Россия"
     }
   ],
   "facts": [
     {
       "value": "string",
       "type": "string",
       "spoiler": true
     }
   ],
   "imagesInfo": {
     "postersCount": 0,
     "backdropsCount": 0,
     "framesCount": 0
   },
   "productionCompanies": [
     {
       "name": "string",
       "url": "string",
       "previewUrl": "string"
     }
   ]
 }
 
 
 
 
 */
