## **Análisis Farmacocinético del Imipenen**

El *Imipenem (C12H17N3O4S y PM=299.34608 [g/mol])* es un antibiótico betalactámico de amplio espectro que debe ser administrada por vía intravenosa o intramuscular porque no es absorbida eficazmente en el tracto gastrointestinal. El imipenem interfiere con la síntesis de la pared celular de las bacterias sensibles. Es un medicamento altamente resistente a la hidrólisis por betalactamasas.

Debido a que cierta dosis del fármaco se está suministrando por infusión intravenosa por un periodo de 30 minutos, y que los resultados obtenidos fueron durante 12 horas después de la infusión, el fármaco no requiere un tiempo para ser absorbido por lo que este puede ser modelado como un comportamiento cinético de primer orden de un modelo monocompartimental, en donde se puede predecir la concentración del fármaco en el torrente sanguíneo en un momento determinado, teniendo en cuenta que el tiempo de 12 horas de estudio es lo suficientemente largo como para asumir una concentración de fármaco en el cuerpo en estado estable que cumple con una ecuación de eliminación.

```
       C(t) = Co*exp(-k*te*i)
```

Por eso es que se toman los datos obtenidos en el estudio y se hace una aproximación por mínimos cuadrados usando el método de Levenberg-Marquardt para hallar los parámetros Kte y Co de la ecuación. Para dicha aproximación se hizo uso de la función para solución de sistemas no lineales lsqnonlin de MatLab especificando el método por el cual se quería hallar esta aproximación, luego se grafican los valores y se observa el residual, o la diferencia entre la aproximación entregada por MatLab y los datos reales, además del resnorm, que es la suma del cuadrado de las diferencias obtenidas entre el modelo aproximado y el real. Todo esto con el fin de verificar que la aproximación no se alejen mucho de los reales y así estar seguros de que el resultado es lo más próximo posible al comportamiento real del fármaco. 

Estos fueron los algoritmos usados en MatLabpara la aproximación, el primero es el principal (mainimipenem.m) y el segundo es la función usada para comparar el modelo y hallar el residual (iminepem.m). 

