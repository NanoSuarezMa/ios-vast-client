//
//  VastLinearCreative.swift
//  VastClient
//
//  Created by John Gainfort Jr on 4/6/18.
//  Copyright © 2018 John Gainfort Jr. All rights reserved.
//

import Foundation

struct LinearCreativeElements {
    static let creative = "Creative"
    static let linear = "Linear"
    static let duration = "Duration"
    static let trackingevents = "TrackingEvents"
    static let videoclicks = "VideoClicks"
    static let mediafiles = "MediaFiles"
}

struct LinearCreativeAttributes {
    static let adid = "AdID"
    static let id = "id"
}

public struct VastLinearCreative {
    let adId: String
    let id: String
    var duration = 0
    var trackingEvents = [VastTrackingEvent]()
    var videoClicks = [VastVideoClick]()
    public var mediaFiles = [VastMediaFile]()
}

extension VastLinearCreative {
    public init(attrDict: [String: String]) {
        var adId = ""
        var id = ""
        for (key, value) in attrDict {
            switch key {
            case LinearCreativeAttributes.adid:
                adId = value
            case LinearCreativeAttributes.id:
                id = value
            default:
                break
            }
        }
        self.adId = adId
        self.id = id
    }
}
