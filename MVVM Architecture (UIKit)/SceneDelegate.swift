//
//  SceneDelegate.swift
//  MVVM Architecture (UIKit)
//
//  Created by Wladmir Edmar Silva Junior on 25/10/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
  
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
      guard let windowScene = (scene as? UIWindowScene) else { return }
      handleFirstPresentation(from: windowScene)
    }
  
  // MARK: - SETUP
  
  private func handleFirstPresentation(from windowScene: UIWindowScene) {
    window = UIWindow(windowScene: windowScene)
    let navigationController = FlowController()
    window?.rootViewController = navigationController
    window?.makeKeyAndVisible()
  }
}

