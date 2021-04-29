//
//  WantViewController.swift
//  DREAM CATCH
//
//  Created by 髙野拓弥 on 2021/04/27.
//

import UIKit

class WantViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var table3View: UITableView!
    
    var todoList = [String]()
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table3View.register(UITableViewCell.self, forCellReuseIdentifier: "todoCell")
        if let storedTodoList = userDefaults.array(forKey: "todoList3") as? [String] {
            todoList.append(contentsOf: storedTodoList)
        }
    }
    
    @IBAction func addBtn3Action(_ sender: Any) {
        let alertController = UIAlertController(title: "なりたい自分を追加", message: "なりたい自分を入力", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField(configurationHandler: nil)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (acrion: UIAlertAction) in
            if let textField = alertController.textFields?.first {
                self.todoList.insert(textField.text!, at: 0)
                self.table3View.insertRows(at: [IndexPath(row: 0, section: 0)], with: UITableView.RowAnimation.right)
                self.userDefaults.set(self.todoList, forKey: "todoList3")
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
        let cell = table3View.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        let todoTitle = todoList[indexPath.row]
        cell.textLabel?.text = todoTitle
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            todoList.remove(at: indexPath.row)
            table3View.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
            userDefaults.set(todoList, forKey: "todoList3")
        }
    }
}
