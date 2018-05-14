//
//  ViewController.swift
//  UISlide
//
//  Created by D7703_24 on 2018. 5. 14..
//  Copyright © 2018년 D7703_24. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var mySlide: UISlider!
    
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var nowNum: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTable.dataSource = self
        myTable.delegate = self
    }
    @IBAction func SlideNum(_ sender: Any) {
        nowNum.text = String(Int(mySlide.value))
         myTable.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = myTable.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        let tableValue = String(Int(mySlide.value) + indexPath.row)
        cell.textLabel?.text = tableValue
        return  cell
    }

}

