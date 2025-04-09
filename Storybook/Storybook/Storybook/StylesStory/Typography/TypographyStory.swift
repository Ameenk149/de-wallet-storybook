//
//  TypographyStory.swift
//  IOSDesignSystem
//
//  Created by Muhammad Qadri on 30.03.25.
//

import SwiftUI
import DesignSystem

public struct TypographyStory: View {
  public init() {}
  
  public var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 16) {
        typographySection(title: "Display", styles: [
          ("Large", DesignSystem.Styles.Typography.Display.large, -0.25),
          ("Medium", DesignSystem.Styles.Typography.Display.medium, 0),
          ("Small", DesignSystem.Styles.Typography.Display.small, 0)
        ])
        
        typographySection(title: "Headline", styles: [
          ("Large", DesignSystem.Styles.Typography.Headline.large, 0),
          ("Medium", DesignSystem.Styles.Typography.Headline.medium, 0),
          ("Small", DesignSystem.Styles.Typography.Headline.small, 0)
        ])
        
        typographySection(title: "Title", styles: [
          ("Large", DesignSystem.Styles.Typography.Title.large, 0),
          ("Medium", DesignSystem.Styles.Typography.Title.medium, 0.15),
          ("Small", DesignSystem.Styles.Typography.Title.small, 0.1)
        ])
        
        typographySection(title: "Label", styles: [
          ("Large", DesignSystem.Styles.Typography.Label.large, 0.1),
          ("Medium", DesignSystem.Styles.Typography.Label.medium, 0.5),
          ("Small", DesignSystem.Styles.Typography.Label.small, 0.5)
        ])
        
        typographySection(title: "Body", styles: [
          ("Large", DesignSystem.Styles.Typography.Body.large, 0.5),
          ("Medium", DesignSystem.Styles.Typography.Body.medium, 0.25),
          ("Small", DesignSystem.Styles.Typography.Body.small, 0.4)
        ])
      }
      .padding()
    }
  }
  
  private func typographySection(title: String, styles: [(String, Font, CGFloat)]) -> some View {
    VStack(alignment: .leading, spacing: 8) {
      Text(title)
        .font(.headline)
        .padding(.bottom, 4)
      
      ForEach(styles, id: \.0) { style in
        Text("\(title) \(style.0)")
          .font(style.1)
          .tracking(style.2)
      }
    }
  }
}
