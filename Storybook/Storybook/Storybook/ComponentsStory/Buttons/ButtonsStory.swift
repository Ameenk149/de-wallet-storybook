//
//  ButtonsStory.swift
//  IOSDesignSystem
//
//  Created by Muhammad Qadri on 30.03.25.
//

import DesignSystem
import SwiftUI

public struct ButtonsStory: View {
  public init() {}
  
  public var body: some View {
    VStack {
      VStack {
        Text("Outlined Button Style")
          .font(.headline)
          .padding()
        
        Button(action: {}) {
          Text("Label")
            .font(.headline)
            .padding()
        }
        .buttonStyle(DesignSystem.Components.Buttons.OutlinePressedButtonStyle())
        .padding()
      }
      
      VStack {
        Text("Text Button Style")
          .font(.headline)
          .padding()
        Button(action: {}) {
          Text("Label")
            .font(.headline)
            .foregroundStyle(.black)
            .padding()
        }
        .buttonStyle(DesignSystem.Components.Buttons.TextButtonStyle())
        .padding()
      }
      
      VStack {
        Text("Tonal Button Style")
          .font(.headline)
          .padding()
        Button(action: {}) {
          Text("Label")
            .font(.headline)
            .foregroundStyle(.black)
            .padding()
        }
        .buttonStyle(DesignSystem.Components.Buttons.TonalButtonStyle())
        .padding()
      }
      
      VStack {
        Text("Filled Pressed Button Style")
          .font(.headline)
          .padding()
        Button(action: {}) {
          Text("Label")
            .font(.headline)
            .foregroundStyle(.black)
            .padding()
        }
        .buttonStyle(DesignSystem.Components.Buttons.FilledPressedButtonStyle())
        .padding()
      }
    }
  }
}
