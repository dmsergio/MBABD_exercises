Considera un sistema de cifrado en el que se sustituye cada letra en el texto original por otra que se
encuentra un número fijo de posiciones más adelante en el alfabeto. Por ejemplo, si el desplazamiento es 3
posiciones y se considera la letra A, entonces sería sustituida por la letra D, que se encuentra situada 3 lugares
a la derecha de la A. Se considera que el alfabeto es circular por lo que a continuación de la Z comienza la letra
A. Solo se codifican las letras, el resto de símbolos se mantienen.

Una vez cifrado el texto, si este contiene más de una palabra, se reordenan las palabras cifradas, moviendo
cada palabra m posiciones hacia la derecha. Así, la palabra que ocupa la posición 1 se mueve a la posición
m+1, y así sucesivamente —la palabra que ocupa la posición n se moverá a la posición m—.

Se pide implementar un programa en Python que solicite al usuario que introduzca por teclado un texto a
codificar, dos números que representan el desplazamiento de letras y el desplazamiento de las palabras
codificadas. Como resultado, el programa mostrará por pantalla el mensaje codificado. Se deben hacer las
comprobaciones necesarias sobre la entrada, es decir, es una cadena y 2 números.
