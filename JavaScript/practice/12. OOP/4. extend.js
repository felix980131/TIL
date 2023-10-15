class Pet {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }

  eat() {
    return `${this.name} is eatting`;
  }
}

class Cat extends Pet {
  constructor(name, age, livesLeft = 9) {
    super(name, age);
    this.livesLeft = livesLeft;
  }
  meow() {
    return "MEOW";
  }
}

class Dog extends Pet {
  bark() {
    return "WOOF";
  }

  eat() {
    return `${this.name} is not eatting`;
  }
}

const cat = new Cat("ki", 3);
const dog = new Dog("do", 3);
