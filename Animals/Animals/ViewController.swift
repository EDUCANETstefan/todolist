//
//  ViewController.swift
//  Animals
//
//  Created by Stefan Rajilić on 05/11/2019.
//  Copyright © 2019 Stefan Rajilić. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
    }

    @IBAction func bOpenEmptyView(_ sender: Any) {
        performSegue(withIdentifier: "ssEmptyView", sender: nil)
    }

    @IBAction func item(_ sender: UITextField) {
    }
    
    @IBAction func add(_ sender: UIButton) {
    }
    
    private let todo = [" "]
    
    @IBOutlet weak var tvAnimals: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = todo[indexPath.item]
        
        return cell
    }
}

