//
//  QuoteCell.swift
//  StockApp
//
//  Created by 周秦睿 on 2022/4/22.
//

import SwiftUI

struct QuoteCell: View {
    var quote: Quote
    
    var body: some View {
        HStack{
            Text(quote.symbol)
                .font(.body)
                .bold()
            
            Spacer()
            
            Spacer()
            
            VStack{
                Text(quote.price)
                    .bold()
                
                Text(quote.change)
                    .padding(.horizontal)
                    .frame(width: 100)
                    .background(RoundedRectangle(cornerRadius: 5).fill(Double(quote.change)! > 0.0 ? Color.green : Color.red), alignment: .trailing)
            }
        }
    }
}

struct QuoteCell_Previews: PreviewProvider {
    static var previews: some View {
        QuoteCell(quote: Quote(symbol: "AAPL", open: "135.90", high: "136.39", low: "133.77", price: "135.13", change: "-0.26", changePercent: "-0.19%"))
    }
}
