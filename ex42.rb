## Animal is-a object look at the extra credit
class Animal
end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    ## ??
    @name = name
  end
end

## Cat is-a Animal
class Cat < Animal

  def initialize(name)
    ## Cat has-a name
    @name = name
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## Employee is-a Person. 
class Employee < Person

  def initialize(name, salary)
    ## ?? hmm what is this strange magic? Retrieves "name" argument from Person class not employee. 
    super(name)
    ## Employee has-a salary.
    @salary = salary
  end

end

## Fish is-a object
class Fish
end

## Salmon is-a fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## satan is-a Cat
satan = Cat.new("Satan")

## Mary is-a Person
mary = Person.new("Mary")

## Mary has-a Pet which is-a Cat
mary.pet = satan

## Frank is-a employee
frank = Employee.new("Frank", 120000)

## Frank has-a pet inherited from Person
frank.pet = rover

## Flipper is-a Fish
flipper = Fish.new()

## Crouse is-a Salmon
crouse = Salmon.new()

## Harry is-a Halibut
harry = Halibut.new()