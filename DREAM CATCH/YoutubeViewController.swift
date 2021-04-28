//
//  YoutubeViewController.swift
//  DREAM CATCH
//
//  Created by 髙野拓弥 on 2021/04/28.
//

import UIKit
import Alamofire

class YoutubeViewController: UIViewController {
    
    @IBOutlet weak var videoListCollectionView: UICollectionView!
    
    private let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoListCollectionView.delegate = self
        videoListCollectionView.dataSource = self
        
        videoListCollectionView.register(UINib(nibName: "VideoListCell", bundle: nil), forCellWithReuseIdentifier: cellId)
        
        let urlString = "https://www.googleapis.com/youtube/v3/search?q=lebronjames&key=AIzaSyBMchvJKgYkEVGgw2BdAcT9q_-y6pu9QHA&part=snippet"
        
        let request = AF.request(urlString)
        
        request.responseJSON { (response) in
            do {
                guard let data = response.data else { return }
                let decode = JSONDecoder()
                let video = try decode.decode(Video.self, from: data)
                print("video: ", video.items.count)
            } catch {
                print("変換に失敗しました。: ", error)
            }
        }
    }
}

extension YoutubeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.view.frame.width
        
        return .init(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = videoListCollectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! VideoListCell
        return cell
    }
}
