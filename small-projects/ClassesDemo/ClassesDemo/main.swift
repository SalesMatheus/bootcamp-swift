//
//  main.swift
//  ClassesDemo
//
//  Created by Matheus Sales on 26/08/22.
//

let skeleton = Enemy(health: 100, attackStrenght: 10)



let dragon = Dragon(health: 200, attackStrenght: 15)
dragon.wingSpan = 5
dragon.attackStrenght = 15
dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane!")
dragon.move()
dragon.attack()

