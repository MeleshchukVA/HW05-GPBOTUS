import UIKit

/*
 В Playground реализуйте некоторый базовый класс из выбранной вами области описания (тематики).
 Добавьте в него свойства и методы, а также несколько инициализаторов.
 Класс должен содержать свойства и методы разной области видимости (private, fileprivate, internal или public).
 Создайте несколько классов-наследников. Переопределите при необходимости свойства и методы родителя. А также добавьте свои.
 В основном пространстве Playground создайте функцию для демонстрации полиморфизма.
*/

class Person {
    
    internal var name: String
    fileprivate var age: Int
    private var gender: String
    
    init(name: String, age: Int, gender: String) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    
    public func display() {
        print("Имя: \(name), возраст: \(age), пол: \(gender)")
    }
}

class Employee: Person {
    
    var company: String
    
    init(name: String, age: Int, gender: String, company: String) {
        self.company = company
        
        super.init(name: name, age: age, gender: gender)
    }
    
    override func display() {
        print("Имя: \(name), возраст: \(age), сотрудник компании: \(company)")
    }
}

class Manager: Employee {
    
    override func display() {
        print("Имя: \(name), возраст: \(age), менеджер компании: \(company)")
    }
}

let tom: Person = Person(name:"Tom", age: 23, gender: "M")
let bob: Person = Employee(name: "Bob", age: 28, gender: "M", company: "Apple")
let alice: Person = Manager(name: "Alice", age: 31, gender: "W", company: "Microsoft")

tom.display()
bob.display()
alice.display()
