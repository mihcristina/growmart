//
//  LoginView.swift
//  growmart
//
//  Created by Michelli Cristina de Paulo Lima on 07/09/22.
//

import UIKit

class LoginView: UIView {

    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 27
        return stack
    }()
    
    private var logo: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "growmart")
        return image
    }()
    
    private var bannerBag: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "sacolas")
        return image
    }()

    private var facebookButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("ENTRAR COM FACEBOOK", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private var googleButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func getButtonConfigurations(backgroundColor: UIColor, title: String, icon: UIImage?) -> UIButton.Configuration {
        var configuration = UIButton.Configuration.filled()
        configuration.title = title
        configuration.image = icon
        configuration.titlePadding = 10
        configuration.imagePadding = 30
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        configuration.background.backgroundColor = backgroundColor
        return configuration
    }
    
}

extension LoginView: ViewCodable {
    func buildHierarchy() {
        self.addSubview(stackView)
        
        stackView.addArrangedSubview(logo)
        stackView.addArrangedSubview(bannerBag)
        stackView.addArrangedSubview(facebookButton)
        stackView.addArrangedSubview(googleButton)
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 60),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            
            logo.heightAnchor.constraint(equalToConstant: 49),
            bannerBag.heightAnchor.constraint(equalToConstant: 106),
            facebookButton.heightAnchor.constraint(equalToConstant: 41),
            googleButton.heightAnchor.constraint(equalToConstant: 41),
        ])
    }
    
    func setupAdditionalConfiguration() {
        self.backgroundColor = .white
        stackView.setCustomSpacing(16, after: facebookButton)
    }
    
    
}

