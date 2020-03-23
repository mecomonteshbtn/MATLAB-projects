# **Pequeño estudio topogáfico del Valle de Aburrá**

Se tiene la geometrı́a del Valle de Aburrá en tres resoluciones. Cada paquete de datos contiene dos archivos, uno que contiene las coordenadas de los puntos que fueron muestreados sobre la superficie del valle; y el otro contiene los datos de la triangulación de esos puntos.

El archivo llamado ‘puntos *.txt’ tiene la siguiente información:

Np
1 x1 y1 z1
2 x2 y2 z2
...
ni xi yi zi
...

Donde Np es el número total de puntos, ni es el identificador del punto i, xi es la coordenada en X del punto i, yi es la coordenada en Y del punto i y zi es la coordenada en Z del punto i.

El archivo llamado ‘caras *.txt’ tiene la siguiente información:

Nc
1 p11 p21 p31
2 p12 p22 p32
...
ci p1i p2i p3i
...

Donde Nc es el número total de caras, ci es el identificador de la cara i, p1i es el primer punto de la cara i, p2i es el segundo punto de la cara i y p3i es el tercer punto de la cara i.

Suponga que en una de las lı́neas del archivo de caras dice lo siguiente: 8 1 14 58. Eso quiere decir que el triángulo número 8 está formado por los puntos 1, 14 y 58. Las coordenadas de esos puntos están en el archivo de puntos.

* 1. Escribir una función que lea la información de las coordendas y de las caras. Las entradas de la función son los archivos de los que se va a leer y las salidas son dos matrices. Una con la información de las coordendas y otra con la información de las caras. En esta función no se
permite el uso del comando ’load’ de Matlab, se debe hacer usando ’fscanf’.

* 2. Escribir una función que grafique la triangulación del valle. Esta función tiene como entradas las dos matrices encontradas anteriormente y no tiene salidas. Ayuda: ver el comando ’fill3’ de Matlab. 

* 3. Desarrollar una función que encuentre el gradiente de cada triángulo. Esto dará cuenta de la inclinación de cada uno de ellos. Se recomienda usar los conceptos vistos en cálculo de varias variables para resolver este punto. Las entradas son las matrices de puntos y de caras, y la salida es un vector que contiene el valor del radiente de cada triángulo.

* 4. Escribir una función que encuentre el volumen de un prisma recto, de base triangular y truncado.

Las entradas de la función son las coordenadas de los 3 puntos que forman el prisma y la salida es el volumen del prisma. Con estas funciones programadas se procede a crear un archivo principal para usarlas. El procesogeneral es el siguiente:

* 1. Leer los datos de entrada en cualquiera de sus resoluciones.
* 2. Graficar la triangulación del valle.
* 3. Encontrar el volumen total del valle. Suponga que se mide desde el nivel del mar.
* 4. Encontrar el gradiente de cada triángulo.
* 5. Graficar de nuevo el valle, esta vez el color del triángulo debe ir asociado a su gradiente.

Acá se debe seleccionar una escala de colores y usarla para asignar el color de cada triángulo. La idea es poder visualizar la inclinación de cada sector del valle como un contorno de colores.
