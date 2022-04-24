//
//  ImageCache.swift
//  StockApp
//
//  Created by 周秦睿 on 2022/4/22.
//

import UIKit

protocol ImageCache {
    subscript(_url: URL)->UIImage? {get set}
}

struct TemporaryImageCache: ImageCache {
    private let cache: NSCache<NSURL, UIImage> = {
        let cache = NSCache<NSURL, UIImage>()
        cache.countLimit = 100
        cache.totalCostLimit = 1024 * 1024 * 100
        return cache
    }()
    
    subscript(_ key: URL)-> UIImage? {
        get{ cache.object(forKey: key as NSURL)}
        set{ newValue == nil ? cache.removeObject(forKey: key as NSURL) : cache.setObject(newValue!, forKey: key as NSURL)}
    }
}
