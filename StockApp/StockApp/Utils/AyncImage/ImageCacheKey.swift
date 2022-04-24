//
//  ImageCacheKey.swift
//  StockApp
//
//  Created by 周秦睿 on 2022/4/22.
//

import SwiftUI

struct ImageCacheKey: EnvironmentKey {
    static let defaultValue: ImageCache = TemporaryImageCache()
}

extension EnvironmentValues {
    var imageCache: ImageCache {
        get{ self[ImageCacheKey.self] }
        set { self[ImageCacheKey.self] = newValue}
    }
}
