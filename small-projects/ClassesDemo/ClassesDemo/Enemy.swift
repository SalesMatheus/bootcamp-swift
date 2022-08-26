//
//  Enemy.swift
//  ClassesDemo
//
//  Created by Matheus Sales on 26/08/22.
//

class Enemy {
    var health = 100
    var attackStrenght = 10
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrenght) damage.")
    }
}
