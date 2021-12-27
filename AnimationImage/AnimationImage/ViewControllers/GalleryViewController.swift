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
    private var x = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(galleryCollectionView)
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: titleAnimal.bottomAnchor, constant: 10).isActive = true
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        galleryCollectionView.set(cells: AnimalsModel.fetchAnimal())
    }
    
    private func setTimer() {
        Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(GalleryViewController.autoScroll), userInfo: nil, repeats: true)
    }
    
    @objc func autoScroll() {
        if x < self.galleryCollectionView.animalsCells.count {
            let indexPath = IndexPath(item: x, section: 0)
            UIView.animateKeyframes(
                withDuration: 1.5,
                delay: 0,
                options: [.beginFromCurrentState],
                animations: {
                    self.galleryCollectionView.scrollToItem(at: indexPath, at: .right, animated: false)
                },
                completion: nil)
            x += 1
        }else{
            x = 0
            UIView.animateKeyframes(
                withDuration: 1.5,
                delay: 0,
                options: [.calculationModeCubicPaced, .layoutSubviews],
                animations: {
                    self.galleryCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: false)
                },
                completion: nil)
        }
    }
    
    
    @IBAction func actionButton(_ sender: Any) {
        setTimer()
    }
}
