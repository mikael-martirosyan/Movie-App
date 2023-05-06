//
//  SceneDelegate.swift
//  MovieApp
//
//  Created by Микаэл Мартиросян on 19.04.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let rootController = HomeViewController()
        let navigationController = UINavigationController(rootViewController: rootController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}

