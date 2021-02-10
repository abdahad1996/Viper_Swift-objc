//
//  notificationName.swift
//  espnFantasyApp
//
//  Created by engitech on 27/12/2019.
//  Copyright © 2019 prog. All rights reserved.
//

import Foundation
extension Notification.Name {
    static var createLeague: Notification.Name {
          return .init(rawValue: "createLeague") }
    static var mockDraft: Notification.Name {
          return .init(rawValue: "mockDraft") }
    static var getTeam: Notification.Name {
             return .init(rawValue: "getTeam") }
    
}
