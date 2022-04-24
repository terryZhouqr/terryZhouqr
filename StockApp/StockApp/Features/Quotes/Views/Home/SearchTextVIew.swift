//
//  SearchTextVIew.swift
//  StockApp
//
//  Created by 周秦睿 on 2022/4/22.
//

import SwiftUI

struct SearchTextVIew: View {
    
    @Binding var searchTerm: String
    
    var body: some View{
        CustomTextField(placeholder: Text("Search").foregroundColor(Color.gray), text: $searchTerm)
            .foregroundColor(.white)
            .padding(.leading, 40)
            .frame(height: 30)
            .background(ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius:
                    5).fill(Color.gray.opacity(0.6))
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.gray)
                    .padding(.leading, 10)
            })
    }
}

struct SearchTextVIew_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextVIew(searchTerm: .constant(""))
    }
}
