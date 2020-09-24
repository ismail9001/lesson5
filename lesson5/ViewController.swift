//
//  ViewController.swift
//  lesson5
//
//  Created by macbook on 15.09.2020.
//  Copyright © 2020 Iskander Nizamov. All rights reserved.
//

import UIKit

enum carActions {
    case trunkLoad, goodsDelivery, circleRace, halfMileRace
}

protocol Car {
    var mark: String { get set}
    var year: Int { get set}
    var engineStatus: Bool { get set }
    
    func action (check: carActions)
}

extension Car {
    
    func engineAction() {}
    func doorAction() {}
    func fuelAction() {}
    
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        //3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.

        class TrunkCar: Car, CustomStringConvertible {
            
            var mark: String
            var year: Int
            var engineStatus: Bool
            let maxWeightLimit: Int
            var trunkLoaded = 0
            var fullDrive: Bool
            let trunkVolume: Int
            var trunkVolumeFill = 0
            
            var description: String {
                return "\(self) \(year) year build, with maximum trunk volume \(trunkVolume)"
            }
            
            func action (check: carActions) {
                
            }
            init(mark: String, year: Int, maxWeightLimit: Int, fullDrive: Bool, trunkVolume: Int) {
                self.mark = mark
                self.year = year
                self.engineStatus = false
                self.maxWeightLimit = maxWeightLimit
                self.fullDrive = fullDrive
                self.trunkVolume = trunkVolume
            }
        }

        class SportCar: Car, CustomStringConvertible {
            
            var mark: String
            var year: Int
            var engineStatus: Bool
            var maxSpeed: Int
            let fuelConsumption: Double
            var laps = 0
            
            var description: String {
                return "\(self) \(year) year build, with maximum speed \(maxSpeed) km|h"
            }
            
            func action (check: carActions) {
                
            }
            
            init(mark: String, year: Int, maxSpeed: Int, fuelConsumption: Double) {
                self.mark = mark
                self.year = year
                self.engineStatus = false
                self.maxSpeed = maxSpeed
                self.fuelConsumption = fuelConsumption
            }
        }

        let truck1 = TrunkCar(mark: "Kamaz", year: 2019, maxWeightLimit: 9099, fullDrive: true, trunkVolume: 10000)
        let truck2 = TrunkCar(mark: "Volvo", year: 2009, maxWeightLimit: 12000, fullDrive: true, trunkVolume: 9000)
        let sport1 = SportCar(mark: "Ferrari", year: 2020, maxSpeed: 329, fuelConsumption: 24.0)
        let sport2 = SportCar(mark: "Lambo", year: 2010, maxSpeed: 229, fuelConsumption: 32.0)
        
        print("000000000000")
        print(truck1.description)
        print(sport1.description)
        
    }
}
