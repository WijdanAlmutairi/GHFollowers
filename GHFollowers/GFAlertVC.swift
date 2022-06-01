//
//  GFAlertVC.swift
//  GHFollowers
//
//  Created by Wijdan Almutairi on 02/06/2022.
//

import UIKit

class GFAlertVC: UIViewController {
    
    let containerView = UIView()
    let titelLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "Ok")
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    let padding: CGFloat = 20
    
    init(title: String, message: String, buttonTitle: String){
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        configureContainerView()
        configureTitleLabel()
        
    }
    
    func configureContainerView()  {
        view.addSubview(containerView)
        containerView.backgroundColor = .systemBackground
        containerView.layer.cornerRadius = 16
        containerView.layer.borderWidth = 2
        containerView.layer.borderColor = UIColor.white.cgColor
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            containerView.heightAnchor.constraint(equalToConstant: 280)
        ])
    }
    
    func configureTitleLabel() {
        containerView.addSubview(titelLabel)
        titelLabel.text = alertTitle ?? "Something went wrong"
        
        NSLayoutConstraint.activate([
            titelLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            titelLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            titelLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            titelLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
}
