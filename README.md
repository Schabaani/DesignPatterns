# DesignPatterns
This repo is a collection of design pattern in swift language. It uses playground.

<b>Creational patterns</b>

Creational patterns are design patterns that deal with how an object is created. There are two basic ideas behind creational patterns. The first is encapsulating the knowledge of which concrete types should be created and the second is hiding how instances of these types are created.

1. <a href="https://github.com/Schabaani/DesignPatterns/tree/master/singleton/Singleton.playground"> Singleton</a>

Singletons are easy to understand. The singleton pattern guarantees that only one instance of a class is instantiated. <a href="https://cocoacasts.com/what-is-a-singleton-and-how-to-create-one-in-swift/"> Bart Jacobs</a> describes singleton design pattern very well.

2. <a href="https://github.com/Schabaani/DesignPatterns/tree/master/abstractFactory/abstractFactroy.playground">Abstract Factory</a>

This pattern is particularly useful when the client doesn't know exactly what type to create. As an example, let's say a Showroom exclusively selling cellphones gets a query for the smart phones made by ABC. Here we don't know the exact type of object to be created (assuming all the information for a phone is wrapped in the form of a concrete object). But we do know that we are looking for smart phones that are manufactured by ABC. This information can actually be utilized if our design has Abstract factory implementation. Thanks <a href="https://www.codeproject.com/Articles/328373/Understanding-and-Implementing-Abstract-Factory-Pa">Rahul Rajat Singh</a>

Builder

The builder pattern is an object creation software design pattern. Unlike the <a href="https://github.com/Schabaani/DesignPatterns/tree/master/abstractFactory/abstractFactroy.playground">abstract factory pattern</a> and the factory method pattern whose intention is to enable polymorphism, the intention of the builder pattern is to find a solution to the telescoping constructor anti-pattern that occurs when the increase of object constructor parameter combination leads to an exponential list of constructors. Instead of using numerous constructors, the builder pattern uses another object, a builder, that receives each initialization parameter step by step and then returns the resulting constructed object at once [<a href="https://en.wikipedia.org/wiki/Builder_pattern">wikipedia</a>].

Builder pattern was introduced to solve some of the problems with Factory and Abstract Factory design patterns when the Object contains a lot of attributes.

There are three major issues with Factory and Abstract Factory design patterns when the Object contains a lot of attributes.

Too Many arguments to pass from client program to the Factory class that can be error prone because most of the time, the type of arguments are same and from client side its hard to maintain the order of the argument.
Some of the parameters might be optional but in Factory pattern, we are forced to send all the parameters and optional parameters need to send as NULL.
If the object is heavy and its creation is complex, then all that complexity will be part of Factory classes that is confusing.
We can solve the issues with large number of parameters by providing a constructor with required parameters and then different setter methods to set the optional parameters. The problem with this approach is that the Object state will be inconsistent until unless all the attributes are set explicitly.

Builder pattern solves the issue with large number of optional parameters and inconsistent state by providing a way to build the object step-by-step and provide a method that will actually return the final Object [<a href="https://www.journaldev.com/1425/builder-design-pattern-in-java">journaldev</a>]

Builder focuses on constructing a complex object step by step. Abstract Factory emphasizes a family of product objects (either simple or complex). Builder returns the product as a final step, but as far as the Abstract Factory is concerned, the product gets returned immediately[<a href="https://sourcemaking.com/design_patterns/builder">sourcemaking</a>]
