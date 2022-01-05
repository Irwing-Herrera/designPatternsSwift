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

--  Este patrón es realmente útil en los casos en que es más barato clonar una instancia existente que crear una instancia de una clase. Este enfoque realmente ayuda cuando las clases para instanciar se especifican en tiempo de ejecución. La construcción de una jerarquía de fábricas que represente una jerarquía de productos puede tener un costo enorme, especialmente en los casos en que solo son posibles unas pocas combinaciones de estado para algún caso concreto. Por lo tanto, el patrón Prototype debe considerarse como una solución liviana para obtener una copia de la instancia de clase existente.

![alt text](https://miro.medium.com/max/1400/1*k445Y_YUwZ-ZypRZYKnhqw.png)

## Singlenton Pattern

--  Es un patrón de diseño que permite restringir la creación de objetos pertenecientes a una clase o el valor de un tipo a un único objeto.

Su intención consiste en garantizar que una clase solo tenga una instancia y proporcionar un punto de acceso global a ella.

El patrón singleton se implementa creando en nuestra clase un método que crea una instancia del objeto solo si todavía no existe alguna. Para asegurar que la clase no puede ser instanciada nuevamente se regula el alcance del constructor (con modificadores de acceso como protegido o privado).

![alt text](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTFPOMTd9pAO6phQiM4jScWOrcsKyXaQa4rQ&usqp=CAU)

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

# Patrones Estructurales Swift: Utiliza estos patrones para la composición de tus clases y objetos

## Adapter Pattern

-- Permite que las interfaces incompatibles funcionen juntas. Dicho de otra manera, este patrón permite que la interfaz de una clase se convierta en una que pueda ser consumida por el cliente.

Los participantes son:

- Target: la interfaz consumida por el cliente.

- Adapter: adapta la interfaz incompatible a la interfaz de Target.

- Adaptee: la interfaz incompatible.

- Cliente: el consumidor final.

![alt text](https://www.dofactory.com/img/diagrams/net/adapter.gif)

## Bridge Pattern

-- Se utiliza para desacoplar una clase en dos partes, la abstracción y su implementación, de modo que ambas puedan evolucionar en el futuro sin afectarse entre sí. Aumenta el acoplamiento flexible entre la abstracción de clases y su implementación.

Participantes:

- Abstracción (clase abstracta) : Definió la interfaz abstracta, es decir, la parte de comportamiento. También mantiene la referencia de Implementador.

- RefinedAbstraction (clase normal) : Extiende la interfaz definida por Abstraction.

- Implementador (interfaz) : Define la interfaz para las clases de implementación. Esta interfaz no necesita corresponder directamente a la interfaz de abstracción y puede ser muy diferente. El imp de abstracción proporciona una implementación en términos de operaciones proporcionadas por la interfaz del implementador.

- ConcreteImplementor (clase normal) : Implementa la interfaz Implementer.

![alt text](https://media.geeksforgeeks.org/wp-content/uploads/Bridge_Design.png)

Ejemplo: https://medium.com/swiftworld/swift-world-design-patterns-bridge-a20bbe999059






Composite Pattern

Decorator Pattern

Facade Pattern

Flyweight Pattern

Proxy Pattern
