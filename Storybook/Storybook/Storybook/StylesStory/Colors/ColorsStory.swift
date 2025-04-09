//
//  ColorsStory.swift
//  IOSDesignSystem
//
//  Created by Muhammad Qadri on 30.03.25.
//

import DesignSystem
import SwiftUI

public struct ColorsStory: View {
  public init() {}
  
  public var body: some View {
    VStack {
      ScrollView(.vertical, showsIndicators: false) {
        ColorSection(
          sectionTitle: DesignSystem.Styles.Colors.primaryColors.0,
          colorInfo: DesignSystem.Styles.Colors.primaryColors.1
        )
        
        ColorSection(
          sectionTitle: DesignSystem.Styles.Colors.secondaryColors.0,
          colorInfo: DesignSystem.Styles.Colors.secondaryColors.1
        )
        
        ColorSection(
          sectionTitle: DesignSystem.Styles.Colors.tertiaryColors.0,
          colorInfo: DesignSystem.Styles.Colors.tertiaryColors.1
        )
        
        ColorSection(
          sectionTitle: DesignSystem.Styles.Colors.errorColors.0,
          colorInfo: DesignSystem.Styles.Colors.errorColors.1
        )
        
        ColorSection(
          sectionTitle: DesignSystem.Styles.Colors.neutralColors.0,
          colorInfo: DesignSystem.Styles.Colors.neutralColors.1
        )
        
        ColorSection(
          sectionTitle: DesignSystem.Styles.Colors.neutralVariantColors.0,
          colorInfo: DesignSystem.Styles.Colors.neutralVariantColors.1
        )
        
      }
      Spacer()
    }
    .navigationTitle("Colors")
  }
}
