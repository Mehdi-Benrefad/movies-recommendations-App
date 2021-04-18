//
//  ViewController.swift
//  movies-recommendations-App
//
//  Created by Mehdi Benrefad on 17/04/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{

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
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        //let cell=tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        let movie = Movie.list[indexPath.row]
        
        //cell.textLabel?.text = movie.title
        //cell.detailTextLabel?.text = String(movie.year)
        
        cell.configure(number : indexPath.row, title: movie.title, year: movie.year)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            Movie.removeMovie(indexPath.row)
            //Movie.list.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}

