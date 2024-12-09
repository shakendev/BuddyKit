//
//  BasicHaptic.Intensity.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - BasicHaptic.Intensity

@available(iOS 18.0, *)
extension BasicHaptic {

    // MARK: - Public enumerations

    ///
    ///
    ///
    public enum Intensity: CGFloat {

        ///
        ///
        ///
        case weak = 0.2

        ///
        ///
        ///
        case low = 0.4

        ///
        ///
        ///
        case medium = 0.6

        ///
        ///
        ///
        case high = 0.8

        ///
        ///
        ///
        case strong = 1
    }
}
