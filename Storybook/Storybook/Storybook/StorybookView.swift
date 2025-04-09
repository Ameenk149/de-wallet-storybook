//
//  StorybookView.swift
//  IOSDesignSystem
//
//  Created by Muhammad Qadri on 30.03.25.
//


import SwiftUI

public struct StorybookView: View {
  public init() {}
  
  public var body: some View {
    NavigationView {
      List {
        NavigationLink("Styles", destination: StylesStory())
        NavigationLink("Components", destination: ComponentsStory())
      }
      .navigationTitle("Storybook")
    }
  }
}
