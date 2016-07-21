import RequestKit

public struct VSTokenConfiguration: Configuration {
    public var apiEndpoint: String
    public var accessToken: String?
    public var refreshToken: String?
    public var expirationDate: NSDate?
    public let errorDomain = VSTeamServicesKitErrorDomain

    public init(json: [String: AnyObject], url: String = visualStudioBaseURL) {
        apiEndpoint = url
        accessToken = json["access_token"] as? String
        refreshToken = json["refresh_token"] as? String
        let expiresIn = json["expires_in"] as? Int
        let currentDate = NSDate()
        expirationDate = currentDate.dateByAddingTimeInterval(NSTimeInterval(expiresIn ?? 0))
    }

    public init(_ token: String? = nil, refreshToken: String? = nil, expirationDate: NSDate? = nil, url: String = visualStudioBaseURL) {
        apiEndpoint = url
        accessToken = token
        self.expirationDate = expirationDate
        self.refreshToken = refreshToken
    }
}
