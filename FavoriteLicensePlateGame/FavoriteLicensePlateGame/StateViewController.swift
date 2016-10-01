//
//  ViewController.swift
//  FavoriteLicensePlateGame
//
//  Created by Jaye Mondale on 9/29/16.
//  Copyright © 2016 5mConsult. All rights reserved.
//

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
    
    var states = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let cellNib = UINib(nibName: "StateCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "StateCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension StateViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension StateViewController: UITableViewDelegate {
    
}

