//
//  HeaderView.swift
//  StockApp
//
//  Created by 周秦睿 on 2022/4/22.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    private let dataFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd"
        return formatter
    } ()

    @Binding var stocks: [String]

    @State private var showSearch = false

    var body: some View{
        HStack{
            VStack(alignment: .leading, spacing: -5){
                Text("Stocks")
                    .foregroundColor(.white)
                    .bold()

                Text("\(Date(), formatter: dataFormatter)")
                    .foregroundColor(.gray)
                    .bold()
            }.font(.title)

            Spacer()

            Button {
                showSearch.toggle()
            }label: {
                Image(systemName: "plus")
                    .font(.title)
                    .foregroundColor(.white)
            }.sheet(isPresented: $showSearch, onDismiss: {
                
            }, content: {
                Text("Search view will go here")
            })
        }.background(Color.black)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View{
        HeaderView(stocks: .constant(["AAPL", "GOOG"]))
    }
}
