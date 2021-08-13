//
//  ViewController.swift
//  instagram
//
//  Created by NAZGUL on 11/8/21.
//

import UIKit
import SnapKit


class ViewController: UIViewController  {
    private lazy var newsTableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.dataSource = self
        view.rowHeight = 450
        view.estimatedRowHeight = UITableView.automaticDimension
        view.register(NewsCell.self, forCellReuseIdentifier: "NewsCell")
        return view
    }()
    
    override func viewDidLoad() {
        view.addSubview(newsTableView)
        newsTableView.snp.makeConstraints{ (make) in
            make.left.right.bottom.top.equalToSuperview()
            
        }
        
    }
    
    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let view = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath)
        return view
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
}
