//
//  ViewController.swift
//  movies-recommendations-App
//
//  Created by Mehdi Benrefad on 17/04/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // a chaque fois la vue apparait dans l'ecran on recharge les donnees a nouveau pour etre toujours a jour
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Movie.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        let movie = Movie.list[indexPath.row]
        
        cell.textLabel?.text = movie.title
        cell.detailTextLabel?.text = String(movie.year)
        
        return cell
    }
}

