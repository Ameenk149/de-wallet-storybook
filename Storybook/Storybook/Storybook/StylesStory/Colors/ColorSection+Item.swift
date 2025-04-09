//
//  ColorSection.swift
//  Storybook
//
//  Created by Muhammad Qadri on 01.04.25.
//

import SwiftUI

struct ColorSection: View {
  let sectionTitle: String
  let colorInfo: [String: Color]
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(sectionTitle)
        .font(.headline)
        .padding(.leading)
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 16) {
          ForEach(sortedColorKeys, id: \.self) { key in
            if let color = colorInfo[key] {
              ColorItem(title: key, color: color)
                .padding(.leading)
            }
          }
        }
      }
    }
    .padding()
    .background {
      RoundedRectangle(cornerRadius: 10)
        .foregroundStyle(.gray.opacity(0.15))
        .padding(.horizontal)
    }
  }

  private var sortedColorKeys: [String] {
    colorInfo.keys.sorted { (key1, key2) -> Bool in
      let number1 = extractNumber(from: key1)
      let number2 = extractNumber(from: key2)
      return number1 < number2
    }
  }
  
  private func extractNumber(from key: String) -> Int {
    let parts = key.split(separator: " ")
    if let number = parts.last, let intNumber = Int(number) {
      return intNumber
    }
    return 0
  }
}


struct ColorItem: View {
  let title: String
  let color: Color
  
  var body: some View {
    VStack {
      Text(title)
        .font(.callout)
        .monospaced()
        .frame(width: 100, alignment: .leading)
      RoundedRectangle(cornerRadius: 10)
        .fill(color)
        .frame(width: 100, height: 100)
        .cornerRadius(8)
    }
  }
}
