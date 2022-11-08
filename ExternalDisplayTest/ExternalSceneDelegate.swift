import SwiftUI

class ExternalSceneDelegate: UIResponder, UIWindowSceneDelegate {

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = scene as? UIWindowScene else {
      return
    }
    let screen = windowScene.screen
    print("availableModes", screen.availableModes)
    print("currentMode", screen.currentMode!)
    print("preferredMode", screen.preferredMode!)
    print("bounds", screen.bounds)
    print("nativeBounds", screen.nativeBounds)
    print("nativeScale", screen.nativeScale)
    print("scale", screen.scale)
//    screen.currentMode = screen.availableModes.last!
  }
}
