//
//  NearbyFlowController.swift
//  nlwpocket
//
//  Created by Daniela Fialho D Oliveira on 09/12/24.
//
import Foundation
import UIKit

class NearbyFlowController {
    private var navigationController: UINavigationController?
    
    public init() {
        
    }
    
    func start() -> UINavigationController? {
        let contentView = SplashView()
        let startViewController = SplashViewController(contentView: contentView, delegate: self)
        self.navigationController = UINavigationController(rootViewController: startViewController)
        
        return navigationController
    }
    
    
}

extension NearbyFlowController : SplashFlowDelegate{
    func decideNavigationFlow() {
        let contentView = WelcomeView();
        let welcomeViewController = WelcomeViewController(contentView: contentView);
        navigationController?.pushViewController(welcomeViewController, animated: true)
    }
    
    
}
