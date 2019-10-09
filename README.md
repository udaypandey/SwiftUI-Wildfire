# SwiftUI & Pre IOS 13 Support

This is a sample project which allows SwiftUI and pre IOS 13 code to coexist and provide support till IOS 9.

### Requirements

The requirement came from an existing project which supports IOS 9 and will continue to support IOS 9 for atleast a year or two. At the same time, there is a requirement to build a new version of the app using SwiftUI.

This project does not try to provide a way for SwiftUI to work before IOS 13. Infact it just allows a way to support the existing app for versions prior to IOS 13 and switch to SwiftUI based code for 13 and beyond.

### How it works

* In AppDelegate, mark new UISceneSession APIs as IOS 13 only. Conditionally build pre IOS 13 UI in `didFinishLaunchingWithOptions` callback.

```
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        guard #available(iOS 13.0, *) else {
            // Code for earlier OS
            let window = UIWindow()

            let rootViewController = ...
            window.rootViewController = rootViewController
            self.window = window
            window.makeKeyAndVisible()

            return true
        }

        return true
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }

```
* Mark SceneDelgate as IOS 13 only

```
@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }
}
```

* Mark all SwiftUI app code as IOS 13 only.

```
@available(iOS 13.0.0, *)
struct ContentView: View {
    var body: some View {
    }
}

@available(iOS 13.0.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```
