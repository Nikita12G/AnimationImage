//
//  Animal.swift
//  AnimationImage
//
//  Created by Никита Гуляев on 23.12.2021.
//

import Foundation
import UIKit

struct AnimalsModel{
    var animalImage: UIImage
    var animalName: String
    
    static func fetchAnimal() -> [AnimalsModel] {
        let firstAnimal = AnimalsModel(animalImage: UIImage(named: "Cat")!, animalName: "Cat")
        let secondAnimal = AnimalsModel(animalImage: UIImage(named: "Dog")!, animalName: "Dog")
        let thirdAnimal = AnimalsModel(animalImage: UIImage(named: "Dolphin")!, animalName: "Dolphin")
        let fourthAnimal = AnimalsModel(animalImage: UIImage(named: "Elephant")!, animalName: "Elephant")
        let fifthAnimal = AnimalsModel(animalImage: UIImage(named: "Mouse")!, animalName: "Mouse")
        let sixthAnimal = AnimalsModel(animalImage: UIImage(named: "Unicorn")!, animalName: "Unicorn")
        
        return [firstAnimal, secondAnimal, thirdAnimal, fourthAnimal, fifthAnimal, sixthAnimal]
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let galleryMinimumLineSpacing: CGFloat = 40
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - Constants.galleryMinimumLineSpacing)
}
