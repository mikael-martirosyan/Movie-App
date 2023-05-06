//
//  ViewController.swift
//  MovieApp
//
//  Created by Микаэл Мартиросян on 19.04.2023.
//

import UIKit

class HomeViewController: UITableViewController {
    
    struct MovieStruct {
        let name: String
        let year: String
        let rating: String
    }
    
    let mockData = MovieStruct(name: "Test", year: "1999", rating: "4.0")
    
    var data: MovieRandomResponse?
    let networkService = NetworkService()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConfiguration()
        setupUI()
        setupSubviews()
        setupConstraints()
    }
    
    private func setupConfiguration() {
        tableView.register(HomeTableViewCell.self)
    }
    
    private func setupUI() {
        
    }
    
    private func setupSubviews() {
        
    }

    private func setupConstraints() {
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as HomeTableViewCell
        
//        cell.nameLabel.text = mockData.name
//        cell.yearLabel.text = mockData.year
//        cell.ratingLabel.text = mockData.rating
        
        DispatchQueue.global().async {
            self.networkService.getMovie { [weak self] data in
                self?.data = data
                print("Home data: \(data)")
                
                DispatchQueue.main.async {
                    cell.nameLabel.text = data.name
                    cell.yearLabel.text = String(describing: data.year)
                    cell.ratingLabel.text = String(describing: data.rating.kp)
                }
            }
        }
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = MovieInfoController()
        vc.modalPresentationStyle = .fullScreen

//        vc.nameLabel.text = mockData.name
//        vc.yearLabel.text = mockData.year
//        vc.ratingLabel.text = mockData.rating
        
        vc.data = data

        navigationController?.pushViewController(vc, animated: true)
    }
    
}

