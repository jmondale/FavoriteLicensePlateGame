//
//  StateViewController.swift
//  FavoriteLicensePlateGame
//
//  Created by Jaye Mondale on 9/29/16.
//  Copyright © 2016 5mConsult. All rights reserved.
//

import UIKit

class StateViewController: UIViewController {
    
    struct TableViewCellIdentifiers {
        static let stateCell = "StateCell"
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    var searchResults: [State] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.contentInset = UIEdgeInsets(top: 64, left: 0, bottom: 0, right: 0)
        tableView.rowHeight = 80
        
        createSomeFakeData()
        
        let cellNib = UINib(nibName: TableViewCellIdentifiers.stateCell, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: TableViewCellIdentifiers.stateCell)
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
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCellIdentifiers.stateCell, for: indexPath) as! StateCell
        
        if searchResults.count == 0 {
            cell.nameLabel.text = "(Nothing found)"
            cell.artistNameLabel.text = ""
        } else {
            let searchResult = searchResults[indexPath.row]
            cell.nameLabel.text = searchResult.name
            cell.artistNameLabel.text = searchResult.artistName
        }
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
