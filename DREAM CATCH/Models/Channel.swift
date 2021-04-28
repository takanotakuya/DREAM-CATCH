//
//  Channel.swift
//  DREAM CATCH
//
//  Created by 髙野拓弥 on 2021/04/28.
//

import Foundation

class Channel: Decodable {
    
    let items: [ChannelItem]
    
}

class ChannelItem: Decodable {
    
    let snippet: ChannelSnippet
    
}

class ChannelSnippet: Decodable {
    
    let thumbnails: Thumbnail
    
}

