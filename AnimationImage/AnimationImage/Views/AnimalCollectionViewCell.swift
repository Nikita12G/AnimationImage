//
//  AnimalCollectionViewCell.swift
//  AnimationImage
//
//  Created by Никита Гуляев on 23.12.2021.
//

import UIKit

class AnimalCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "AnimalCollectionViewCell"

    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.font = UIFont(name: "American Typewriter" , size: 20)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let animalsImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemGray
        imageView.translatesAutoresizingMaskIntoConstraints = false  
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame )
        addSubview(animalsImageView)
        addSubview(nameLabel)
        
        
//        Image View Constraints
        animalsImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        animalsImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        animalsImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        animalsImageView.bottomAnchor.constraint(equalTo: bottomAnchor ).isActive = true
        
//        Name Label Constraints
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: animalsImageView.bottomAnchor, constant: 12).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
