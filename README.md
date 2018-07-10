# InstanceArray-Objetive-c

CORRECIONES

MyClass *myInstance = [[[MyClass alloc] init] release]; //MAL
    
MyClass *myInstance = [[[MyClass alloc] init]]; //BIEN



1 Codigo uno;
El codigo debe ser modificado para que funcione porque tiene uso de funciones con implementaciones deprecadas, el release fue eliminado de la funcion:
MyClass *myInstance = [[[MyClass alloc] init] release];

resultando asi:
MyClass *myInstance = [[[MyClass alloc] init]];

El resultado de ejecutar esto fue:
(
    A,
    C,
    D,
    E,
    F
)

2 Codigo dos: ERROR
'*** Collection <__NSArrayM: 0x600000254280> was mutated while being enumerated.'

3 Codigo tres: ERROR
'*** -[__NSArrayM objectAtIndex:]: index 5 beyond bounds [0 .. 4]

3 Codigo cuatro: 
El resultado de ejecutar esto fue:
(
    A,
    C,
    D,
    E,
    F
)


Si los llamo en orden y con una misma instancia, todos regresan el siguiente resultado:
(
    A,
    C,
    D,
    E,
    F
)

