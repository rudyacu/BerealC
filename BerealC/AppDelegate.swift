import UIKit

import ParseSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        ParseSwift.initialize(applicationId: "dhGsSwSD5n6gyxkIkJB1m0CKc71ZBXdujmL0SvXy",
                              clientKey: "suz9m1iE0ypOHCn0eUXHwqNEloRYssCvhcEbglSU",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)

        return true
    }


    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}

struct GameScore: ParseObject {
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    var playerName: String?
    var points: Int?
}

extension GameScore {

    init(playerName: String, points: Int) {
        self.playerName = playerName
        self.points = points
    }
}


