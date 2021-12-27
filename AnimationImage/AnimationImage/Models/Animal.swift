//
//  Animal.swift
//  AnimationImage
//
//  Created by Никита Гуляев on 23.12.2021.
//

import UIKit

struct AnimalsModel {
    
    var animalImage: UIImage
    var animalName: String
    
    static func fetchAnimal() -> [AnimalsModel] {
        [
            AnimalsModel(animalImage: UIImage(named: "Cat")!, animalName: "Cat"),
            AnimalsModel(animalImage: UIImage(named: "Dog")!, animalName: "Dog"),
            AnimalsModel(animalImage: UIImage(named: "Dolphin")!, animalName: "Dolphin"),
            AnimalsModel(animalImage: UIImage(named: "Elephant")!, animalName: "Elephant"),
            AnimalsModel(animalImage: UIImage(named: "Mouse")!, animalName: "Mouse"),
            AnimalsModel(animalImage: UIImage(named: "Unicorn")!, animalName: "Unicorn")
        ] 
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let galleryMinimumLineSpacing: CGFloat = 40
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - Constants.galleryMinimumLineSpacing)
}
