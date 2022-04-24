//
//  GlobalQuote.swift
//  StockApp
//
//  Created by 周秦睿 on 2022/4/20.
//

import Foundation

struct GlobalQuoteResponse: Codable{
    var quote: Quote
    
    private enum CodingKeys: String, CodingKey{
        case quote = "Global Quote"
    }
}
