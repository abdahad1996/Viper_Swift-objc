 
 
import Foundation
import XCTest
@testable import dubizzleTest

//custom protocol to subclass urlprotocol to prevent network hit when calling alamofire request
class MockURLProtocol: URLProtocol {
    
    //What we provide in this property network will return as a response
    static var requestHandler: ((URLRequest) throws -> (HTTPURLResponse?, Data?, Error?))?
    
    override class func canInit(with request: URLRequest) -> Bool {
        return true
    }
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }
    override func startLoading() {
      returnMockResponse()
    }
    override func stopLoading() {
        returnMockResponse()
    }
    
    func returnMockResponse() {
        guard let handler = MockURLProtocol.requestHandler else {
            XCTFail("Received unexpected request with no handler set")
            return
        }
        do {
            let (response, data, error) = try handler(request)
            
            if let response = response { client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed) }
            if let data = data { client?.urlProtocol(self, didLoad: data);  client?.urlProtocolDidFinishLoading(self) }
            if let error = error { client?.urlProtocol(self, didFailWithError: error) }
            
        }catch{
            client?.urlProtocol(self, didFailWithError: error)
        }
    }
}
