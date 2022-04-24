//
//  QuoteManagerProtocol.swift
//  StockApp
//
//  Created by 周秦睿 on 2022/4/21.
//

import Foundation

protocol QuoteManagerProtocol{
    var quotes: [Quote]{get set}
    func download(stocks: [String],completion: @escaping (Result<[Quote], NetworkError>)->Void)
}
