import SwiftUI

class ExternalSceneDelegate: UIResponder, UIWindowSceneDelegate {

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = scene as? UIWindowScene else {
      return
    }
    let screen = windowScene.screen
    if screen.availableModes.count > 1 {
      let higherResolution = screen.availableModes.max {
        $0.size > $1.size
      }!
      print("switching to higher resolution mode", higherResolution)
      screen.currentMode = higherResolution
    }
    print("currentMode", screen.currentMode!)
//    print("preferredMode", screen.preferredMode!)
    print("bounds", screen.bounds)
    print("nativeBounds", screen.nativeBounds)
//    print("nativeScale", screen.nativeScale)
//    print("scale", screen.scale)
  }
}

extension CGSize: Comparable {
  public static func < (lhs: CGSize, rhs: CGSize) -> Bool {
    lhs.halfPerimeter() < rhs.halfPerimeter()
  }

  func halfPerimeter() -> Double {
    height + width
  }
}
