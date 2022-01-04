### Patrones de GoF (Gang of Four)

# Patrones Creacionales Swift: Utiliza estos patrones a la hora de crear instancias

## Factory Method Pattern

-- Liberarnos de la creacion de objetos de la manera correcta, crear una instancia de un objeto que a priori no sabemos de que tipo va a ser.

Ejemplo: 
Imagínate que has desarrollado una aplicación en el que le dejas al usuario seleccionar el método de pago.

Tarjeta de crédito puede ser PayPal, puede ser Google y puede ser por transferencia bancaria.

Pues realmente, hasta que el usuario no lo selecciona no podría saber qué tipo de pago quiere.

![alt text](https://img.favpng.com/13/21/14/factory-method-pattern-unified-modeling-language-class-diagram-png-favpng-LvQANdyjR7TS3RR87G6rsiUkY.jpg)


## Abstract Factory Pattern

-- Cuando se deben representar varias familias de objetos relacionados enmascarando sus diferencias con los clientes, este patrón propone la definición de una interfaz abstracta centralizada de creación de un conjunto de objetos que pueden especializarse.

Fortalezas y debilidades

✅ Se favorece el mantenimiento de la coherencia entre objetos,

✅ Se facilita la sustitución de una clase concreta por otra y permanece transparente para el cliente,

❌ Si es necesaria la cooperación directa entre los objetos concretos, estos objetos se vuelven menos reutilizables e intercambiables.

![alt text](http://www-sop.inria.fr/axis/cbrtools/usermanual-eng/Icons/AbstractFactory.gif)

## Builder Pattern

--  Se usa para permitir la creación de una variedad de objetos complejos desde un objeto fuente (Producto), el objeto fuente se compone de una variedad de partes que contribuyen individualmente a la creación de cada objeto complejo a través de un conjunto de llamadas secuenciales a una implementación específica que extienda la clase Abstract Builder. Así, cada implementación existente de Abstract Builder construirá un objeto complejo Producto de una forma diferente deseada.

Fortalezas

• Reduce el acoplamiento.

• Permite variar la representación interna de estructuras complejas, respetando la interfaz común de la clase Builder.

• Se independiza el código de construcción de la representación. Las clases concretas que tratan las representaciones internas no forman parte de la interfaz del Builder.

• Cada ConcreteBuilder tiene el código específico para crear y modificar una estructura interna concreta.

• Distintos Director con distintas utilidades (visores, parsers, etc) pueden utilizar el mismo ConcreteBuilder.

• Permite un mayor control en el proceso de creación del objeto. El Director controla la creación paso a paso, solo cuando el Builder ha terminado de construir el objeto lo recupera el Director.

![alt text](https://www.researchgate.net/profile/Cornelia-Novac-Ududec/publication/32229613/figure/fig2/AS:309880092151819@1450892579962/Builder-Pattern-Structure-Classes-Diagram.png)

## Prototype Pattern

## Singlenton Pattern











# Patrones de Comportamiento Swift: Utiliza estos patrones para definir la forma en la que interactúan las diferentes clases de tu proyecto.

Chain of Responsibility Pattern

Command Pattern

Interpreter Pattern

Iteractor Pattern

Mediator Pattern

Memento Pattern

Obsever Pattern

State Pattern

Strategy Pattern

Template method Pattern

Visitor Pattern

## Patrones Estructurales Swift: Utiliza estos patrones para la composición de tus clases y objetos

Adapter Pattern

Bridge Pattern

Composite Pattern

Decorator Pattern

Facade Pattern

Flyweight Pattern

Proxy Pattern
