//
//  FirstViewController.swift
//  lumoo_demo
//
//  Created by Andreas Denk on 24.07.18.
//  Copyright © 2018 Andreas Denk. All rights reserved.
//

import UIKit
class DiscoverCell:UITableViewCell{
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_distance: UILabel!


}

class DiscoverViewController: UITableViewController {

    @IBOutlet var table_discover: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table_discover.dataSource = self
        table_discover.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> DiscoverCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "discoverCell", for: indexPath) as! DiscoverCell
        if indexPath.row % 2 == 0{
            cell.img.image = UIImage(named: "Profilbild")

        }else{
            cell.img.image = UIImage(named: "profilbild2")

        }

        return cell
    }


}

