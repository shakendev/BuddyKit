//
//  HapticFeedbackGeneratable.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - HapticFeedbackGeneratable

///
///
///
@MainActor
@available(iOS 18.0, *)
public protocol HapticFeedbackGeneratable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    func generate(with feedbackType: HapticFeedback.FeedbackType)
}
