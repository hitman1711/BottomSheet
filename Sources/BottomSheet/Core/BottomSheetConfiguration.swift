//
//  BottomSheetConfiguration.swift
//  BottomSheetDemo
//
//  Created by Mikhail Maslo on 15.08.2022.
//  Copyright © 2022 Joom. All rights reserved.
//

import UIKit

public struct BottomSheetConfiguration {
    public enum PullBarConfiguration {
        public struct PullBarAppearance {
            public let height: CGFloat
            public let topOffset: CGFloat
            public let color: UIColor
            
            public init(height: CGFloat, topOffset: CGFloat, color: UIColor) {
                self.height = height
                self.topOffset = topOffset
                self.color = color
            }
        }
        
        case hidden
        case visible(PullBarAppearance)
        
        public static let `default`: PullBarConfiguration = .visible(PullBarAppearance(
            height: 20,
            topOffset: 6,
            color: UIColor(red: 203 / 255.0, green: 213 / 255.0, blue: 222 / 255.0, alpha: 1)
        ))
    }

    public struct ShadowConfiguration {
        public let backgroundColor: UIColor
        public let blur: UIBlurEffect.Style?

        public init(backgroundColor: UIColor, blur: UIBlurEffect.Style? = nil) {
            self.backgroundColor = backgroundColor
            self.blur = blur
        }

        public static let `default` = ShadowConfiguration(backgroundColor: UIColor.black.withAlphaComponent(0.6))
    }

    public let cornerRadius: CGFloat
    public let pullBarConfiguration: PullBarConfiguration
    public let shadowConfiguration: ShadowConfiguration

    public init(
        cornerRadius: CGFloat,
        pullBarConfiguration: PullBarConfiguration,
        shadowConfiguration: ShadowConfiguration
    ) {
        self.cornerRadius = cornerRadius
        self.pullBarConfiguration = pullBarConfiguration
        self.shadowConfiguration = shadowConfiguration
    }

    public static let `default` = BottomSheetConfiguration(
        cornerRadius: 10,
        pullBarConfiguration: .default,
        shadowConfiguration: .default
    )
}
