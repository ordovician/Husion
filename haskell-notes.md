A C++ programmers notes on Haskell
==================================
I am in the process of learning haskell. I will write down my observations and insights from a C++ and LISP guys point of view. Often it is easier to understand a programming language if you can relate features to features you already know. I find that the same concepts often have very different names in different languages and one can thus be confused.

Types
=====
Types is obviously very important in Haskell, and if you do not understand type I don't think you get anywhere.

Polymorphic types
------------------
Similar to a templated class in C++. A class essentially defines a type. By using templates one can parameterize the type. The parameter is called a *type variable* in haskell. E.g. for a C++ vector type, the *type variable* would be the element in the vector.

type classes and instances
--------------------------
My impression so far is that *type classes* in haskell are much the same as *concepts* in C++. Concepts do not exist as syntax in C++ but they were originally planned for C++11. But they are discussed with respect to the STL. E.g. a *ForwardIterator* is a concept in STL. Any class which supports the ++ operator will be a model of this concept.

Haskell type classes are the same. In haskell they call a STL *model* or class for an *instance*. So in Haskell you define a type class by listing all the methods or functions instances of that type class needs to support. In C++ terms that means you list the functions or methods that a *concept* requires. A class needs to define all those methods to satisfy the *concept*.

type keyword
-------------
This is similar to ``typedef`` in C++. It does not actually create a new type.

newtype keyword
-------------
Similar to type except is actually creates a new type. It is not just an alias.

data keyword
------------
Similar to ``struct`` or ``class``. It actually creates a new type.

Algebraic data types
====================
Share som characteristics with C++ *union* types and Java interfaces. The difference between it an Java interfaces is that you can freely add class implementing a Java interfaces. But  algebraic data types is more like *union* in that you specify all the variants with the type.

Algebraic data types is specified with the ``data`` keyword just like *nomal* types. Except it has multiple value constructors. In C++ terms it means we have a different constructor for each member of the *union*. With just one member a *union* is really just a *struct*.