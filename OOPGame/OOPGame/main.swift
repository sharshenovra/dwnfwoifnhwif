import Foundation
//Создать класс родитель: Hero c 2мя параметрами здоровье и урон, добавить функции сеттер и геттер , 4 наследника: Boss, Wizard, Archer, Warrior. Добавить протокол, который отвечает за применение способности с функцией (принт: "применил ...... способность") В main создать объекты героев. Взять за основу проект с 1 месяца рпг игры.

var boss = Boss()
boss.setName(name: "Boss")
boss.setDamage(damage: 70)
boss.setHealth(number: 1000)

var wizard = Wizard()
wizard.setName(name: "Wizard")
wizard.setDamage(damage: 60)
wizard.setHealth(number: 300)

var warrior = Warrior()
warrior.setName(name: "Warrior")
warrior.setDamage(damage: 50)
warrior.setHealth(number: 250)

var archer = Archer()
archer.setName(name: "Archer")
archer.setDamage(damage: 40)
archer.setHealth(number: 200)

var heroes = [boss, wizard, warrior, archer]

wizard.appAbility(ability: "speed")
warrior.appAbility(ability: "smart")
archer.appAbility(ability: "high jump")
let heroesAbility = [wizard.getAbility(), warrior.getAbility(), archer.getAbility()]

var heroesName = [wizard.getName(), warrior.getName(), archer.getName()]
var heroesDamage = [wizard.getDamage(), warrior.getDamage(), archer.getDamage()]
var heroesHealth = [wizard.getHealth(), warrior.getHealth(), archer.getHealth()]


func bossHit() {

    for i in 0..<heroesHealth.count {
        heroesHealth[i] = heroesHealth[i] - boss.getDamage()
    }

    //for i in 0..2 {

//}
}

func heroesHit() {
    for i in 0..<heroesDamage.count {
        boss.health = boss.getHealth() - heroesDamage[i]
    }
}

func round() {
    print("--------------------------------")
    bossHit()
    print("Босс атакует!")
    print("Здоровье героев: \(heroesHealth)")
    heroesHit()
    applyAbility()
    for i in 0..<heroesName.count {
        print("\(heroesName[i]) атакует!")
    }
//    for i in 0..<heroesName.count {
//        print("\(heroesName[i]): \(heroesAbility[i])!")
//    }
    print("Здоровье босса: \(boss.getHealth())")
    print("--------------------------------")
}

var rounds: Int = 1

while true {
    if heroesHealth[0] <= 0 && heroesHealth[1] <= 0 && heroesHealth[2] <= 0 {
        print("Game Over! Boss win!")
        break
    } else if boss.getHealth() <= 0 {
        print("Game Over! Heroes win!")
        break
    }

    print("\(rounds) раунд:")
    round()
    rounds = rounds + 1
}



func applyAbility(){
    for i in heroes{
        print("Герой \(i.name) применил \(i.getAbility())")
    }
}

applyAbility()
