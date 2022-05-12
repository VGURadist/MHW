//
//  ViewController.swift
//  HW1
//
//  Created by proff on 4/26/22.
//

import UIKit

class TableViewController: UITableViewController {
   
    var likesCountDidTap: Int = 0
    var isCh: Bool = false
    var dbModelArray: [DataModel] {
        let tcell = (1...13).map{
            DataModel(

            image: UIImage(named: String($0))!,
                      author: authors[authors.index(authors.startIndex, offsetBy: $0-1)],
                      description: names[names.index(names.startIndex, offsetBy: $0-1)],
            likesCount: Int.random(in: 1..<1111))
        }
        return tcell
    }
                 
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }

    private func setupTableView() {
        tableView.allowsSelection = false
        tableView.separatorColor = .clear
        
        let nib = UINib(nibName: ImageTableCell.reuseIdentifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: ImageTableCell.reuseIdentifier)
    }
}

extension TableViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        430
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dbModelArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableCell.reuseIdentifier, for: indexPath) as! ImageTableCell
        cell.configure(dbModelArray: dbModelArray, indexPath: indexPath)
        return cell
    }
}
