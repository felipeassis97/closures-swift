//
//  HomeView.swift
//  PocClosures
//
//  Created by Felipe Assis on 08/12/23.
//

import Foundation
import UIKit


class HomeView: UIView {
    
    var didPressButton: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .lightGray
        addSubview(welcomeLabel)
        addSubview(button)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            welcomeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            welcomeLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 50),
            
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 50),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: 150),

        ])
    }
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome to app"
        label.font = .poppinsFont(type: .regular, size: 32)
        return label
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Continue", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(onTap), for: .touchUpInside)
        button.layer.cornerRadius = 16
        return button
    }()
    
    @objc
    private func onTap() {
        didPressButton?()
    }
    
    
    
}
