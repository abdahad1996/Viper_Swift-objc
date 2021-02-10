//
//  HttpService.swift
//  GreenGrocery
//
//  Created by Viswanathan Venkitachelam on 12/06/19.
//  Copyright © 2019 LetsCodeEasy. All rights reserved.
//

import Alamofire

protocol HttpService {
    var sessionManger: SessionManager { get set }
    func request(_ urlRequest: URLRequestConvertible) -> DataRequest
}
