#  1.

help(sample)

sample(1:100, 15)

help(rep)

rep(1:5, times = 3)

rep(1:5, each = 3)

letters

# 2. Obtener mis_letras usando letters y sample()

mis_letras <- sample(letters, 5)

mis_letras

# 3. Crea un vector `mis_repeticiones` obteniendo 100 repeticiones de tu nombre.
# Debes lograrlo usando la función `rep()` y su argumento `times`.

mis_repeticiones <- rep("antenor", 100)

mis_repeticiones

mis_repeticiones2 <- rep("antenor")

mis_repeticiones2

# 4. Crea un vector `dado_normal` que contenga los seis lados de un dado normal. 
# Tú decides qué *tipo* de vector sería el más adecuado.

dado_normal <- 1:6

dado_normal

dado_normal2 <- c(1L, 2L, 3L, 4L, 5L, 6L)
dado_normal2 <- as.integer(dado_normal2)

dado_normal2

dado_normal3 <- c("uno", "dos", "tres", "cuatro", "cinco", "seis")

dado_normal3

typeof(dado_normal3)
typeof(dado_normal2)
typeof(dado_normal)

# 5. Utiliza la función `sample()` y `dado_normal` para simular el lanzamiento de un dado.

sample(dado_normal, 1) # respuesta

sample(1:6, 1)  # alternativa

# 6. Crea un vector `dado_cargado` que tenga los seis lados de un lado normal, 
# pero con diferentes proporciones. Por ejemplo, podría contener una secuencia 
# del uno al cinco y luego cinco repeticiones del número seis. Puedes utilizar `rep()` en el proceso.

dado_cargado <- c(dado_normal, rep(6, 5))

dado_cargado

dado_cargado2 <- c(1:5, rep(6, 5))

dado_cargado2

# 7. Crea una función `lanzar_dado()` con un argumento único llamado `dado`. 
# Esta función simulará un lanzamiento de cualquier dado que proporciones. 
# Prueba que tu función actúe adecuadamente usándola con tus vectores `dado_normal` y `dado_cargado`. 

lanzar_dado <- function(dado) {
    sample(dado, 1)
}

lanzar_dado(dado_normal)
lanzar_dado(dado_cargado)

# 8. Crea una función `dado_frase()` con un argumento único llamado `dado`. 
# Esta función utilizará internamente `lanzar_dado()` para simular el lanzamiento de `dado` 
# y devolverá una frase indicando el número obtenido. 
# Por ejemplo: "Lanzaste el dado y obtuviste el número X". 
# Utiliza la función `paste()` para crear la frase. 
# Nuevamente, verifica su funcionamiento al utilizarla con `dado_normal` y `dado_cargado`.

dado_frase <- function(dado) {
    paste("Lanzaste el dado y obtuviste el numero", lanzar_dado(dado))
}

dado_frase(dado_normal)











