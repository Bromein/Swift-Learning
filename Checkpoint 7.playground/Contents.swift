import UIKit

/*
 Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.

 But there’s more:

 The Animal class should have a legs integer property that tracks how many legs the animal has.
 The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
 The Cat class should have a matching speak() method, again with each subclass printing something different.
 The Cat class should have an isTame Boolean property, provided using an initializer.
 
 
 */



class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

//dogs
class Dog: Animal {
    //dog should have a speak method
    func speak() -> Void {
        print("Bark")
    }
    
}

class Corgi: Dog {
    //corgi should have a slightly different speak method
    override func speak() -> Void {
        print("Yip")
    }
}

class Poodle: Dog {
    //poodle should have a slightly different speak method
    override func speak() -> Void {
        print("Barkbark")
    }
}

//cats
class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Meow")
    }
}

class Persion: Cat {
    override func speak() {
        print("mew")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar")
    }
}


//end chapter
