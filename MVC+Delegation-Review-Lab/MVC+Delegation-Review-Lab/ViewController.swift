//
//  ViewController.swift
//  MVC+Delegation-Review-Lab
//
//  Created by Benjamin Stone on 8/19/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, Logic {
    
    var currentSize: CGFloat = 17
    func getFontSize(value: CGFloat) {
        currentSize = value
        tableViewOut.reloadData()
    }
    
    
    let movies = Movie.allMovies
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        cell.textLabel?.text = movies[indexPath.row].name
        
        cell.detailTextLabel?.text = String(movies[indexPath.row].year)
        cell.textLabel!.font = cell.textLabel?.font.withSize(currentSize)
        cell.detailTextLabel!.font = cell.detailTextLabel?.font.withSize(currentSize - 5.0)
       return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SettingsViewController {
            destination.delegate = self
            destination.setSize = currentSize
            
        }
    }

    
    
    @IBOutlet weak var tableViewOut: UITableView!
    
    
    override func viewDidLoad() {
        tableViewOut.delegate = self
        tableViewOut.dataSource = self
        super.viewDidLoad()
        
    }


}

