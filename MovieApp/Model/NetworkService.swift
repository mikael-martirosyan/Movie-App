//
//  NetworkService.swift
//  MovieApp
//
//  Created by Микаэл Мартиросян on 04.05.2023.
//

import Foundation
import Alamofire

class NetworkService {
    
    private let apiKey = "Q6JMGVS-3SAMSCM-N0HWDMW-G0W44PB"
    private let baseURL = "https://api.kinopoisk.dev/v1.3/"
    
    func getMovie(completion: @escaping (MovieRandomResponse) -> ()) {
        let path = "movie/random"
        let url = baseURL + path
        
        let headers: HTTPHeaders = [
            "accept": "application/json",
            "X-API-KEY": "Q6JMGVS-3SAMSCM-N0HWDMW-G0W44PB"
        ]
        
        AF.request(url, method: .get, headers: headers).responseData { response in
            guard let value = response.value else { return }
            
            print("Response: \(response)")
            print("Value: \(value)")
            
            do {
                let data = try JSONDecoder().decode(MovieRandomResponse.self, from: value)
                print("AF data: \(data)")
                completion(data)
            } catch {
                print(error.localizedDescription)
            }
            
            
        }
        
    }
    
    
    
}
