//
//  JokeViewController.swift
//  DREAM CATCH
//
//  Created by 髙野拓弥 on 2021/05/03.
//

import UIKit
import Foundation

struct Jokes: Codable {
    let contents: Contents
    
//    enum CodingKeys: String, CodingKey {
//        case contents = "contents"
//    }
    
    struct Contents: Codable {
        let categories: [Category]
        
//        enum CodingKeys: String, CodingKey {
//            case categories = "categories"
//        }
        
        struct Category: Codable {
            let description: String

//            enum CodingKeys: String, CodingKey {
//                case description = "description"
//            }
        }
    }
}

class JokesViewController: UIViewController {
    
    private let cellId = "cellId"
    private var jokes = [Category]()
    
    let tableView: UITableView = {
        let tv = UITableView()
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.frame.size = view.frame.size
        tableView.backgroundColor = .black
        tableView.separatorColor = .lightGray
        tableView.separatorInset.left = 0
        
        navigationItem.title = "元気がでる言葉"
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register( UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        let headers = [
            "x-rapidapi-key": "d9943d2979mshdb102131da6e048p187e0fjsn83064e35795c",
            "x-rapidapi-host": "jokes.p.rapidapi.com"
        ]
        
        let request = NSMutableURLRequest(url: NSURL(string: "https://jokes.p.rapidapi.com/jod/categories")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) in
            if (error != nil) {
                print("error: ",error)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print("httpResponse: ",httpResponse)
            }
            
            if let data = data {
                do {
                    let joke = try JSONDecoder().decode(Jokes.self, from: data)
//                    self.jokes = joke.contents.categories
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                        print("json: ", joke)
                    }
                    
                } catch(let error) {
                    print("情報の取得に失敗しました。:", error)
                }
            }
        })
        
        dataTask.resume()
        
    }
    
}

extension JokesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jokes.description.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cellId")
        print("jokes: " ,jokes)

//        cell.textLabel?.text = jokes[indexPath.row] .description
        cell.textLabel?.textColor = .white
        cell.textLabel?.numberOfLines = 0

        cell.backgroundColor = .black
        cell.selectionStyle = UITableViewCell.SelectionStyle.none

        cell.translatesAutoresizingMaskIntoConstraints = false

        return cell
    }

}
