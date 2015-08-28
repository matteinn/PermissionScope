//
//  PermissionConfigs.swift
//  PermissionScope
//
//  Created by Nick O'Neill on 8/25/15.
//  Copyright © 2015 That Thing in Swift. All rights reserved.
//

import Foundation
import HealthKit
import Accounts

/**
*  Protocol for permission configurations.
*/
@objc public protocol PermissionConfig {
    /// Permission type
    var type: PermissionType { get }
    /// Message for the body label of the dialog presented when requesting access.
    var message: String { get }
}

@objc public class NotificationsPermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .Notifications
    public let message: String
    public let notificationCategories: Set<UIUserNotificationCategory>?
    
    public init(message: String, notificationCategories: Set<UIUserNotificationCategory>? = .None) {
        self.notificationCategories = notificationCategories
        self.message                = message
    }
}

@objc public class LocationWhileInUsePermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .LocationInUse
    public let message: String
    
    public init(message: String) {
        self.message = message
    }
}

@objc public class LocationAlwaysPermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .LocationAlways
    public let message: String
    
    public init(message: String) {
        self.message = message
    }
}

@objc public class ContactsPermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .Contacts
    public let message: String
    
    public init(message: String) {
        self.message = message
    }
}

@objc public class EventsPermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .Events
    public let message: String
    
    public init(message: String) {
        self.message = message
    }
}

@objc public class MicrophonePermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .Microphone
    public let message: String
    
    public init(message: String) {
        self.message = message
    }
}

@objc public class CameraPermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .Camera
    public let message: String
    
    public init(message: String) {
        self.message = message
    }
}

@objc public class PhotosPermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .Photos
    public let message: String
    
    public init(message: String) {
        self.message = message
    }
}

@objc public class RemindersPermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .Reminders
    public let message: String
    
    public init(message: String) {
        self.message = message
    }
}

@objc public class BluetoothPermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .Bluetooth
    public let message: String
    
    public init(message: String) {
        self.message = message
    }
}

@objc public class MotionPermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .Motion
    public let message: String
    
    public init(message: String) {
        self.message = message
    }
}

@objc public class CloudKitPermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .CloudKit
    public let message: String
    
    public init(message: String) {
            self.message = message
    }
}

@objc public class HealthPermissionConfig: NSObject, PermissionConfig {
    public let type: PermissionType = .HealthKit
    public let message: String
    public let healthTypesToShare: Set<HKSampleType>?
    public let healthTypesToRead: Set<HKObjectType>?
    public let strictMode: Bool
    
    public init(message: String, healthTypesToShare: Set<HKSampleType>?,
        healthTypesToRead: Set<HKObjectType>?, strictMode: Bool = false) {
            self.healthTypesToShare = healthTypesToShare
            self.healthTypesToRead = healthTypesToRead
            self.message = message
            self.strictMode = strictMode
    }
}