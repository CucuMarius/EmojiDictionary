//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Marius Adrian Cucu on 30/07/2017.
//  Copyright © 2017 Marius Adrian Cucu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var EmojiTableView: UITableView!
    
    
    var emojisArray = ["😃","😂","😇","😎","😜","😍","😡","😈","😥","💩"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        EmojiTableView.dataSource = self
        EmojiTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojisArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojisArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojisArray[indexPath.row]
        performSegue(withIdentifier: "moveToSecondViewController", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let definitionViewControllerDVC  = segue.destination as! DefinitionViewController
        definitionViewControllerDVC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

