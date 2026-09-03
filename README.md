Tito es un voluntario que se ofreció para participar de un estudio en el que se plantea medir cómo afecta 
el consumo de algunas sustancias al rendimiento de los deportistas.

Tito pesa actualmente 70 kilos. Tiene la gran ventaja de que cada bebida que toma _reemplaza_ a la anterior. Hoy modelaremos tres bebidas:

* **Whisky**: el whisky provoca sueño, mareo y jaquecas. Un deportista con whisky en su sistema tiene un rendimiento de 0.9 elevado a la dosis consumida, en centímetros cúbicos.
* **Tereré**: el tereré es diurético, laxante y estimulante del rendimiento. Un deportista con tereré en su sistema tiene un rendimiento de 0.1 por cada centímetro cúbico de dosis. Sin embargo, nunca rinde menos que 1.
* **Cianuro**: el cianuro no favorece al rendimiento, sino que el deportista, luego de consumirlo queda como muerto, llenos de abulia y de marasmo. Con cianuro, el rendimiento es siempre 0.

> 1. Hacer que Tito tome cierta cantidad de una bebida, con el mensaje `consumir(cantidad, bebida)`
> 2. Conocer la velocidad de Tito, mediante el mensaje `velocidad()`.

La velocidad de Tito (en m/s) se calcula como el rendimiento de la sustancia por la inercia base de Tito (490 kg*m/s) dividido su peso.

**¡No vale guardarse la velocidad!**


## Pista
Para calcular la potencia los número entienden el mensaje `**`. Por ejemplo, '2 al cubo' se expresa `2 ** 3`

Además entienden los mensajes `min` y `max` que permiten hacer:

* `1.max(3)`  Retorna 3, por ser el máximo
* `1.min(3)`  Retorna 1, por ser el mínimo


## Conclusión

En este ejercicio el _polimorfismo_ aparece como `tito` utiliza las distintas sustancias para conocer su rendimiento.

Cabe destacar que para lograrlo, las sustancias deben entender el mismo mensaje, incluyendo nombre **y parámetros**. Esto significa que si para conocer el rendimiento que algunas sustancias es necesario pasar algún parámetro en el mensaje (como la cantidad de la dosis para el `whisky` y `terere`) entonces todas las sustancias (incluyendo el `cianuro`) lo deberían esperar.


También hay que diseñar qué datos son _atributos_ y cuáles _métodos de consulta_ de `tito`. El enunciado pide que `velocidad` **no** sea un atributo ya que se obtiene de un cálculo que involucra el rendimiento, inercia y peso de `tito`.
