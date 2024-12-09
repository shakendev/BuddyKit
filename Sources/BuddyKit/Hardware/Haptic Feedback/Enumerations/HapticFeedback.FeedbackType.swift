//
//  HapticFeedback.FeedbackType.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - HapticFeedback.FeedbackType

@available(iOS 18.0, *)
extension HapticFeedback {

    // MARK: - Public enumerations

    ///
    ///
    ///
    public enum FeedbackType {

        ///
        ///
        ///
        case error

        ///
        ///
        ///
        case warning

        ///
        ///
        ///
        case success

        ///
        ///
        ///
        case soft(intensity: Intensity)

        ///
        ///
        ///
        case light(intensity: Intensity)

        ///
        ///
        ///
        case medium(intensity: Intensity)

        ///
        ///
        ///
        case heavy(intensity: Intensity)

        ///
        ///
        ///
        case rigid(intensity: Intensity)

        ///
        ///
        ///
        case selection
    }
}
