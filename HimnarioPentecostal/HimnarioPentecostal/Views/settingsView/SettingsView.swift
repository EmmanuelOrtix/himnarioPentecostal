//
//  SettingsView.swift
//  HimnarioPentecostal
//
//  Created by Emmanuel Ortiz Matus on 12-10-23.
//

import SwiftUI
struct SettingsView: View {
    var inputArray: [String] = [
        "Andrew",
        "Adam",
        "David"
    ]
    @State var groupedArray: [String: [String]] = [:]
    var body: some View {
        List {
            ForEach(groupedArray.keys.sorted(), id: \.self) {key in
                Section(header: Text(key)) {
                    ForEach(groupedArray[key]!, id: \.self) {value in
                        Text(value)
                    }
                }
            }
        }
        .onAppear {
            groupedArray = Dictionary(
                grouping: inputArray,
                by: {$0.first?.uppercased() ?? ""}
            ).mapValues{$0.sorted()}
        }
    }
}

#Preview {
    SettingsView()
}
