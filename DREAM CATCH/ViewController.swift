//
//  ViewController.swift
//  DREAM CATCH
//
//  Created by 髙野拓弥 on 2021/04/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dreamTextField: UITextField!
    @IBOutlet weak var dreamLabel: UILabel!
    
    @IBOutlet weak var whatdoTextField: UITextField!
    @IBOutlet weak var whatdoLabel: UILabel!
    
    @IBOutlet weak var wanttobeTextField: UITextField!
    @IBOutlet weak var wanttobeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dreamTextField.placeholder = "夢を入力"
        whatdoTextField.placeholder = "やりたいことを入力"
        wanttobeTextField.placeholder = "なりたい自分を入力"
    }

    @IBAction func dreamButton(_ sender: Any) {
        self.dreamLabel.text = self.dreamTextField.text;
    }
    @IBAction func whatdoButton(_ sender: Any) {
        self.whatdoLabel.text = self.whatdoTextField.text;
    }
    @IBAction func wanttodoButton(_ sender: Any) {
        self.wanttobeLabel.text = self.wanttobeTextField.text;
    }
    
}

