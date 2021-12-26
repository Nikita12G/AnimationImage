//
//  ViewController.swift
//  AnimationImage
//
//  Created by Никита Гуляев on 23.12.2021.
//

import UIKit

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var titleAnimal: UILabel!
    private var galleryCollectionView = GalleryCollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(galleryCollectionView)
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: titleAnimal.bottomAnchor, constant: 10).isActive = true
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        galleryCollectionView.set(cells: AnimalsModel.fetchAnimal())
    }


}

