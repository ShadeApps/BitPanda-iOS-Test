//
//  HapticHelper.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import UIKit

protocol HapticHelpable {
    func vibrate(_ haptic: HapticType)
}

public enum HapticType {

    case light
    case medium
    case heavy
    case error
    case warning
    case success
    case selectionChanged

    var impactStyle: UIImpactFeedbackGenerator.FeedbackStyle? {
        switch self {
        case .light:
            return .light
        case .medium:
            return .medium
        case .heavy:
            return .heavy
        default:
            return nil
        }
    }

    var notificationStyle: UINotificationFeedbackGenerator.FeedbackType? {
        switch self {
        case .error:
            return .error
        case .warning:
            return .warning
        case .success:
            return .success
        default:
            return nil
        }
    }
}

struct HapticHelper: HapticHelpable {

    public func vibrate(_ haptic: HapticType) {
        if let style = haptic.impactStyle {
            let feedbackGenerator = UIImpactFeedbackGenerator(style: style)
            feedbackGenerator.prepare()
            feedbackGenerator.impactOccurred()
        } else if let notificationStyle = haptic.notificationStyle {
             UINotificationFeedbackGenerator().notificationOccurred(notificationStyle)
        } else if haptic == .selectionChanged {
            UISelectionFeedbackGenerator().selectionChanged()
        }
    }
}
