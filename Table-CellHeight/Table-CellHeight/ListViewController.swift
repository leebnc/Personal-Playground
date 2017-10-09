//
//  ListViewController.swift
//  Table-CellHeight
//
//  Created by Lee Choongwon on 2017. 10. 9..
//  Copyright © 2017년 Choongwon. All rights reserved.
//

import UIKit

class ListViewController : UITableViewController {
    
    var list = [String]()
    
    @IBAction func add(_ sender: Any) {
        
        let alert = UIAlertController(title: "목록 입력", message: "추가될 글을 작성해주세요", preferredStyle: .alert)
        
        alert.addTextField() {
            (tf) in
            tf.placeholder = "내용을 입력하세요"
        }
        
        let ok = UIAlertAction(title: "OK", style: .default) {
            (_) in
            
            if let title = alert.textFields?[0].text {
                self.list.append(title)
                self.tableView.reloadData()
            }
        }
        
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(ok)
        alert.addAction(cancel)
        
        self.present(alert, animated: false)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // *** cell 아이디를 가진 셀을 읽어온다. 없으면 UITableViewCell 인스턴스를 생성한다. ***
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell()
        
        // *** 셀의 기본 텍스트 레이블 행 수 제한을 없앤다 ***
        cell.textLabel?.numberOfLines = 0
        
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.estimatedRowHeight = 50
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }
}
