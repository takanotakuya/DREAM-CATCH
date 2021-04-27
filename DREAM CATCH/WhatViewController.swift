//
//  WhatViewController.swift
//  DREAM CATCH
//
//  Created by 髙野拓弥 on 2021/04/27.
//

import UIKit

class WhatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var table2View: UITableView!
    
    var todoList = [String]()
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table2View.register(UITableViewCell.self, forCellReuseIdentifier: "todoCell")
        if let storedTodoList = userDefaults.array(forKey: "todoList2") as? [String] {
            todoList.append(contentsOf: storedTodoList)
        }
    }
    
    @IBAction func addBtn2Action(_ sender: Any) {
        let alertController = UIAlertController(title: "やりたいことを追加", message: "やりたいことを入力", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField(configurationHandler: nil)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (acrion: UIAlertAction) in
            if let textField = alertController.textFields?.first {
                self.todoList.insert(textField.text!, at: 0)
                self.table2View.insertRows(at: [IndexPath(row: 0, section: 0)], with: UITableView.RowAnimation.right)
                self.userDefaults.set(self.todoList, forKey: "todoList2")
            }
        }
        alertController.addAction(okAction)
        let cancelButton = UIAlertAction(title: "CANCEL", style: UIAlertAction.Style.cancel, handler: nil)
        alertController.addAction(cancelButton)
        present(alertController, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table2View.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        let todoTitle = todoList[indexPath.row]
        cell.textLabel?.text = todoTitle
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            todoList.remove(at: indexPath.row)
            table2View.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
            userDefaults.set(todoList, forKey: "todoList2")
        }
    }
}
