//
//  main.swift
//  Protocols Demo
//
//  Created by Aysha Hameed on 11/09/2023.
//

protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemail = true
    
    func layEgg() {
        if isFemail {
            print("The bird makes a new bird in a shell.")
        }
    }
    
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
    
    func soar() {
        print("The eagle glidse in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Aeroplane: CanFly {
    func fly() {
        print("The aeroplane uses its engine to lift off into the air.")
    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Aeroplane()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
