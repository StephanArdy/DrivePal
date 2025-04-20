//
//  StatefulPreviewWrapper.swift
//  DrivePal
//
//  Created by stephan on 17/04/25.
//

import SwiftUI

struct StatefulPreviewWrapper<Value, Content: View>: View {
    @State var value: Value
    var content: (Binding<Value>) -> Content
    
    init(_ initialValue: Value, content: @escaping (Binding<Value>) -> Content) {
        self._value = State(wrappedValue: initialValue)
        self.content = content
    }
    
    var body: some View {
        content($value)
    }
}
