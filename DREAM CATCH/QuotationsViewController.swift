////
////  QuotationsViewController.swift
////  DREAM CATCH
////
////  Created by 髙野拓弥 on 2021/05/01.
////
//
//import UIKit
//import Foundation
//
//struct Quotations: Codable {
//    let quote: String
//    let author: String
//    
//    enum CodingKeys: String, CodingKey {
//        case quote = "quote"
//        case author = "author"
//    }
//}
//
//class QuotationsViewController: UIViewController {
//    
//    private let cellId = "cellId"
//    private var quotations = [Quotations]()
//    var getJson: NSDictionary!
//    
//    let tableView: UITableView = {
//        let tv = UITableView()
//        return tv
//    }()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        view.addSubview(tableView)
//        tableView.frame.size = view.frame.size
//        tableView.backgroundColor = .black
//        tableView.separatorColor = .lightGray
//        tableView.separatorInset.left = 0
//        
//        navigationItem.title = "名言集"
//        
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.register( UITableViewCell.self, forCellReuseIdentifier: cellId)
//        
//        let headers = [
//            "x-rapidapi-key": "d9943d2979mshdb102131da6e048p187e0fjsn83064e35795c",
//            "x-rapidapi-host": "andruxnet-random-famous-quotes.p.rapidapi.com"
//        ]
//        
//        let request = NSMutableURLRequest(url: NSURL(string: "https://andruxnet-random-famous-quotes.p.rapidapi.com/?count=10&cat=famous")! as URL,
//                                          cachePolicy: .useProtocolCachePolicy,
//                                          timeoutInterval: 10.0)
//        request.httpMethod = "GET"
//        request.allHTTPHeaderFields = headers
//        
//        let session = URLSession.shared
//        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) in
//            if (error != nil) {
//                print("error: ",error)
//            } else {
//                let httpResponse = response as? HTTPURLResponse
//                print("httpResponse: ",httpResponse)
//            }
//            
//            if let data = data {
//                do {
//                    let quotation = try JSONDecoder().decode([Quotations].self, from: data)
//                    self.quotations = quotation
//                    DispatchQueue.main.async {
//                        self.tableView.reloadData()
//                    }
//                    print("json: ", quotation)
//                } catch(let err) {
//                    print("情報の取得に失敗しました。:", err)
//                }
//            }
//        })
//        
//        dataTask.resume()
//    }
//    
//}
//
//extension QuotationsViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 120
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return  quotations.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cellId")
//        print("quotations: " ,quotations)
//        
//        cell.textLabel?.text = quotations[indexPath.row] .quote
//        cell.textLabel?.textColor = .white
//        cell.textLabel?.numberOfLines = 0
//        
//        cell.detailTextLabel?.text = quotations[indexPath.row] .author
//        cell.detailTextLabel?.textColor = .lightGray
//        cell.detailTextLabel?.numberOfLines = 0
//        
//        cell.backgroundColor = .black
//        cell.selectionStyle = UITableViewCell.SelectionStyle.none
//        
//        
//        cell.translatesAutoresizingMaskIntoConstraints = false
//
//        return cell
//    }
//    
//}
