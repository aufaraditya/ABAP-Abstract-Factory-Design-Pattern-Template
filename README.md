# Basic Implementation of Abstract Factory Design Pattern in ABAP

## Problem 
Imagine that you’re creating a furniture shop simulator. Your code consists of classes that represent:

1. A family of related products, say: Chair + Sofa + CoffeeTable.
2. Several variants of this family. For example, products Chair + Sofa + CoffeeTable are available in these variants: Modern, Victorian, ArtDeco.

![Example Illustration](https://refactoring.guru/images/patterns/diagrams/abstract-factory/problem-en.png)

You need a way to create individual furniture objects so that they match other objects of the same family. Customers get quite mad when they receive non-matching furniture.
Also, you don’t want to change existing code when adding new products or families of products to the program. Furniture vendors update their catalogs very often, and you wouldn’t want to change the core code each time it happens.


Source: https://refactoring.guru/design-patterns/abstract-factory


## Implementation
![Implementation Illustration](http://3.bp.blogspot.com/-aqcoQcNUJEA/T5NPI3fKeTI/AAAAAAAAAJg/WhQoPzxyrxw/s400/abs_actual_n.png)

Local Class lcl_main_app wrapped in Program ZMAIN_APP.


Source: http://zevolving.com/2011/11/abap-objects-design-patterns-%e2%80%93-abstract-factory/
