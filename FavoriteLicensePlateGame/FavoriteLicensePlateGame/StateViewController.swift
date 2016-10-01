//
//  StateViewController.swift
//  FavoriteLicensePlateGame
//
//  Created by Jaye Mondale on 9/29/16.
//  Copyright © 2016 5mConsult. All rights reserved.
//

import UIKit

class StateViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var searchResults: [State] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.contentInset = UIEdgeInsets(top: 64, left: 0, bottom: 0, right: 0)
        
        createSomeFakeData()
    }
    
    func createSomeFakeData() {
        searchResults = []
        for i in 0...2 {
            let state = State()
            state.name = String(format: "Fake Result %d for ", i)
            state.artistName = "California"
            searchResults.append(state)
        }
        tableView.reloadData()
    }
}

extension StateViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResults.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "SearchResultCell"
        
        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        }
        
        let state = searchResults[indexPath.row]
        cell.textLabel!.text = state.name
        cell.detailTextLabel!.text = state.artistName
        
        return cell
    }
}

extension StateViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if searchResults.count == 0 {
            return nil
        } else {
            return indexPath
        }
    }
}
