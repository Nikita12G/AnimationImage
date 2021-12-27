//
//  GalleryCollectionView.swift
//  AnimationImage
//
//  Created by Никита Гуляев on 23.12.2021.
//

import UIKit

class GalleryCollectionView: UICollectionView {
    
    var animalsCells = [AnimalsModel]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        delegate = self
        dataSource = self
        
        register(AnimalCollectionViewCell.self, forCellWithReuseIdentifier: AnimalCollectionViewCell.reuseId)
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = Constants.galleryMinimumLineSpacing
        contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView, bottom: 0, right: Constants.rightDistanceToView)
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
    }
    
    func set(cells: [AnimalsModel]) {
        self.animalsCells = cells
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - UICollection View Data Source

extension GalleryCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animalsCells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: AnimalCollectionViewCell.reuseId , for: indexPath) as! AnimalCollectionViewCell
        
        cell.animalsImageView.image = animalsCells[indexPath.row].animalImage
        cell.nameLabel.text = animalsCells[indexPath.row].animalName
        return cell
    }
}

// MARK: - UICollection View Delegate Flow Layout

extension GalleryCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.galleryItemWidth, height: frame.height * 0.8)
    }
}
