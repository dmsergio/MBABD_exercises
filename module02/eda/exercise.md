1. Carga el dataset **titanic** y haz un sumario.
2. Transforma las variables que sean factores en factores. Si son ordinales usa **ordered** para crear factores ordenados. Recuerda usar lapply.
3. Representa en un qplot la edad frente a la tarifa, y en un segundo qplot lo mismo pero con la clave de la clase en la que viajaban. Represéntalo a su vez factorizándolo por **Sex** y **Embarked**.
4. Pinta un boxplot de la edad agrupado según **Sex**.
5. Pinta un barplot que represente la supervivencia en cada **Pclass** coloreando las barras según esta.
6. Pinta la supervivencia en función de la categoría **Sex**, ¿qué se observa?
7. Pinta la supervivencia en función de la categoría **Pclass**, ¿qué se aprecia?
8. Crea un histograma de **Age**, ¿qué se observa?
9. Crea una agrupación de los datos usando `dplyr` de **Sex**  y **Pclass**. Haz sumarios de media, conteo y mediana. ¿Qué se podría decir de los resultados? ¿Hay suficiente muestra para sacar conclusiones en todas las categorías creadas al combinar la edad y la clase?
