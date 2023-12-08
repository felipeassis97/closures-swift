//
//  ViewController.swift
//  PocClosures
//
//  Created by Felipe Assis on 08/12/23.
//

import UIKit

class HomeViewController: UIViewController {
    private var contentView = HomeView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = contentView
        viewActions()
        
        for fontName in UIFont.familyNames {
            print(fontName)
        }
        
        for fontName in UIFont.fontNames(forFamilyName: "Poppins") {
            print(fontName)
        }
    }
    
    private func viewActions() {
        contentView.didPressButton = {
            [weak self] in
            self?.navigationController?.pushViewController(HomeViewController(), animated: true)
        }
    }
        
}

