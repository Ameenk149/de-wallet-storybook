//
//  StylesStory.swift
//  Storybook
//
//  Created by Muhammad Qadri on 01.04.25.
//
import SwiftUI

public struct StylesStory: View {
  public init() {}
  
  public var body: some View {
    NavigationView {
      List {
        NavigationLink("Typography", destination: TypographyStory())
        NavigationLink("Colors", destination: ColorsStory())
      }
      .navigationTitle("Styles")
    }
  }
}
