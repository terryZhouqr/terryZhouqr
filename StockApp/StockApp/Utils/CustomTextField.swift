//
//  CustomTextField.swift
//  StockApp
//
//  Created by 周秦睿 on 2022/4/22.
//

import Foundation
import SwiftUI

struct CustomTextField: View{
    
    var placeholder: Text
    
    @Binding var text: String
    
    var editinChange: (Bool) -> Void = { _ in }
    var commit: () -> Void = {}
    
    var body: some View {
        ZStack(alignment: .leading){
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: editinChange, onCommit: commit)
        }
    }
}
