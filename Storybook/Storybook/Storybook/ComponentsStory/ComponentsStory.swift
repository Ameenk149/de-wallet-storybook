//
//  ComponentsStory.swift
//  Storybook
//
//  Created by Muhammad Qadri on 01.04.25.
//

import SwiftUI

public struct ComponentsStory: View {
  public init() {}
  
  public var body: some View {
    NavigationView {
      List {
        NavigationLink("Buttons", destination: ButtonsStory())
      }
      .navigationTitle("Styles")
    }
  }
}

