//
//  MockAlamofireSessionManager.swift
//  dubizzleTestTests
//
//  Created by Mapple Technologioes on 10/02/2021.
//

import Foundation
import Alamofire
struct MockAlamofire {
    
    //FOR USING OUR OWN PROTOCOL AND NOT USING  NETWROK
//    Created session Configuration object with ephemeral to avoid write caches, cookies, or credentials to disk
    static let mockAlamofireManager: Alamofire.SessionManager = {
        let configuration = URLSessionConfiguration.ephemeral
        configuration.protocolClasses = [MockURLProtocol.self]
        let manager = Alamofire.SessionManager(configuration: configuration)
        return manager
    }()
    
}
