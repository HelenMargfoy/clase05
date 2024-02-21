            #++++++++++++++++++++++++++++++++#
            #   Helen M. Margfoy Contreras   #
            #          201913142             #
            #    Problem set 1, Taller R     #
            #        R version 4.3.2         #
            #++++++++++++++++++++++++++++++++#

### **1. Introduccion a R:Operadores y Funciones**

# 1.1 Operadores aritméticos: Realice una operación que calcule el resultado de 7 elevado a la potencia de 3.

7**3

# 1.2 Operador lógico: Escribe un ejemplo de una expresión que utilice un operador lógico para 
#verificar si el valor de 2 es mayor que 10.

2>10
mi_valor_logico <- 2>10 #lo nombré para usarlo en el punto 4.1 y 4.2#

# 1.3  Instalación y llamada de una librería: Instala y llama a la librería dplyr en R. Puede usar la librería ‘pacman‘ 
# o alternativamente, utilice las funciones install.packages() y require().

install.packages("dplyr") 
require(dplyr)

# 1.4 Obtener información sobre una función: Utilizando la función de ayuda, obtén información sobre
#la función sum() y muestra un ejemplo de cómo se usa.
?sum
example(sum)


### **2.  Fundamentos de programación: Objetos y Workspace**

# 2.1 Creación y eliminación de objetos en el workspace: Crea un objeto llamado mi_numero y asígnale
#el valor numérico 25 y otro obeto llamado mi_numero_2 que sea igual al objeto mi_numero a la potencia
#de 2. Ahora elimine el objeto mi_numero del workspace utilizando las funciones vistas en clase.

mi_numero <- 25 
mi_numero2 <- mi_numero**2
rm(mi_numero)

# 2.2 Mostrar lista de objetos en el workspace: Muestra el código que permite imprimir la lista de
#todos los objetos disponibles en el workspace

ls()

# 2.3 Guardar el contenido del workspace en un archivo: Explica con un ejemplo cómo se guarda el con
#tenido del workspace en un archivo llamado "backup.RData". (**Hint:** Use la función save.image())

save.image("buckup.RData")


### **3. Estructura de datos en R: Vectores y Dataframes**

# 3.1 Creación de un vector: Cree un vector llamado mi_vector que contenga los nombres de los días de
#la semana.

mi_vector <- c("lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo")
mi_vector

# 3.2 Creación de una matriz numérica: Defina una matriz mi_matriz de 3 filas y 2 columnas con
#valores numéricos de tu elección

mi_matriz = matrix(data = 1:3 , nrow=3 , ncol=2)
mi_matriz

# 3.3 Creación de un dataframe y acceso a columna: Cree un dataframe llamado mi_dataframe con
# dos columnas: "nombre" y "edad", y agrega algunos datos.

mi_dataframe <- data.frame( nombre = c("Ana", "Luis", "Carlos", "María"),
  edad = c(21, 18, 24, 28))
mi_dataframe

# 3.4 Tibbles: Convierta mi_dataframe en un tibble y muestra cómo se accede a la columna "nombre".

mi_tibble <- as_tibble(mi_dataframe)
mi_tibble$nombre


### **4. Estructura de datos en R: Listas y Manipulación**

# 4.1 Creación de una lista: Genere una lista llamada mi_lista que contenga un vector numérico, un
#dataframe y un valor lógico.

mi_vector_num <- c(1, 2, 3, 4, 5)
mi_lista <- list( vector_numerico= mi_vector_num, dataframe= mi_dataframe, valor_log= mi_valor_logico)
print(mi_lista)

# 4.2 Acceso a elementos de una lista: Explique con un ejemplo cómo acceder al segundo elemento del
#vector dentro de mi_lista.

mi_lista$vector_numerico[2]

# 4.3 Combinación de listas: Genere dos listas vacias y llamelas lista1 y lista2, luego combinelas en
#una nueva lista llamada lista_combinada.

lista1 <- list()
lista2 <- list()
lista_combinada <- c(lista1, lista2)
lista_combinada

# 4.4 Lista de listas: Crea una lista de listas donde cada elemento sea una lista que contenga un vector de
#nombres y un dataframe. Puede usar los objetos mi_dataframe y mi_vector

lista3 <- list( mi_vector, mi_dataframe)
lista4 <- list( mi_vector, mi_dataframe)
lista_de_listas <- list(lista3, lista4)
lista_de_listas








