# DesignPatters
This repo is a collection of design pattern in swift language. It uses playground.

1. <a href="https://github.com/Schabaani/DesignPatters/tree/master/singleton/Singleton.playground"> Singleton</a>

Singletons are easy to understand. The singleton pattern guarantees that only one instance of a class is instantiated. <a href="https://cocoacasts.com/what-is-a-singleton-and-how-to-create-one-in-swift/"> Bart Jacobs</a> describes singleton design pattern very well.

2. Abstract Factory

This pattern is particularly useful when the client doesn't know exactly what type to create. As an example, let's say a Showroom exclusively selling cellphones gets a query for the smart phones made by ABC. Here we don't know the exact type of object to be created (assuming all the information for a phone is wrapped in the form of a concrete object). But we do know that we are looking for smart phones that are manufactured by ABC. This information can actually be utilized if our design has Abstract factory implementation. Thanks <a href="https://www.codeproject.com/Articles/328373/Understanding-and-Implementing-Abstract-Factory-Pa">Rahul Rajat Singh</a>
