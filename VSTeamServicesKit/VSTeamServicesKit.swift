import RequestKit

let visualStudioBaseURL = "https://app.vssps.visualstudio.com/"
public let VSTeamServicesKitErrorDomain = "com.nerdishbynature.VSTeamServicesKit"

public struct VSTeamService {
    public let configuration: VSTokenConfiguration

    public init(_ config: VSTokenConfiguration = VSTokenConfiguration()) {
        configuration = config
    }
}

internal extension Router {
    internal var URLRequest: NSURLRequest? {
        return request()
    }
}
