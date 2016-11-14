//
//  AppDelegate.swift
//  Bob
//
//  Created by Andrew Slabko on 11/14/16.
//  Copyright © 2016 Andrew Slabko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let rvc = sb.instantiateInitialViewController() as! ProgrammerViewController
        let eg = InMemoryRepo()
        let useCase = ShowProgrammersListUseCase(enitytGateway: eg)
        let presenter = ShowProgrammersListPresentor(useCase: useCase)
        useCase.presenter = presenter
        rvc.presenter = presenter
        
        let window = UIWindow()
        window.rootViewController = rvc
        window.backgroundColor = UIColor.white
        window.makeKeyAndVisible()
        self.window = window
        
        return true
    }
}

