//
//  PaymentMethodView.swift
//  MiniSuperApp
//
//  Created by JeongminKim on 2022/07/06.
//

import UIKit

final class PaymentMethodView: UIView {
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .white
        label.text = "우리은행"
        return label
    }()
    
    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.textColor = .white
        label.text = "**** 9999"
        return label
    }()
    
    init(viewModel: PaymentMethodViewModel) {
        super.init(frame: .zero)
        
        setupViews()
        
        nameLabel.text = viewModel.name
        subtitleLabel.text = viewModel.digits
        backgroundColor = viewModel.color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(nameLabel)
        addSubview(subtitleLabel)
        backgroundColor = .systemIndigo
        
        NSLayoutConstraint.activate([
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            subtitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            subtitleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
