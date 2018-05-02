//
//  ViewController.swift
//  Simple TableView 01
//
//  Created by D7702_10 on 2018. 5. 2..
//  Copyright © 2018년 hsw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,
UITableViewDelegate{

    @IBOutlet weak var mtv: UITableView!
    var animale = ["고양이","원숭이","강아지","돼지","햄스터"]
    var country = ["한국","태국","미국","중국","일본"]
    var img = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // delegate와 ViewController 연결
        mtv.dataSource = self
        mtv.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animale.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // cell 메모리 재활용
        let identifier = "RE"
        let cell = mtv.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        //cell에 이미지 넣기
        let myImage = UIImage(named:"\(indexPath.row+1).jpg")
        cell.imageView?.image = myImage
        cell.textLabel?.text = animale[indexPath.row]
        cell.detailTextLabel?.text = country[indexPath.row]
        return cell
    }
}


