library(tidyverse)
library(readxl)

gapminder <- read_xlsx("sesion2/data/gapminder_excel.xlsx")

paises_por_continente <- gapminder %>% 
        filter(year == 2002) %>% 
        group_by(continent) %>% 
        summarise(n = n()) %>% 
        ungroup()

paises_por_continente %>% 
    ggplot(aes(continent, n)) +
    geom_col()

gapminder %>% 
    filter(year == 2002) %>% 
    ggplot(aes(continent)) +
    geom_bar()

gapminder %>% 
    filter(year == 2002) %>% 
    group_by(continent) %>% 
    summarise(promedio_pop = mean(pop)) %>% 
    ungroup() %>% 
    arrange(desc(promedio_pop)) %>% 
    mutate(continent = as_factor(continent)) %>% 
    ggplot(aes(continent, promedio_pop)) +
    geom_col()
    


gapminder %>% 
    filter(country == "Peru") %>% 
    ggplot(aes(year, gdpPercap)) +
    geom_line()


gapminder %>% 
    filter(year == 2007) %>% 
    ggplot(aes(gdpPercap)) +
    geom_histogram()


gapminder %>% 
    filter(year == 2007, pop < 250000000) %>% 
    ggplot(aes(pop, continent)) +
    geom_boxplot()


gapminder %>% 
    filter(year == 2007) %>% 
    ggplot(aes(continent, fill = continent)) +
    geom_bar()

gapminder %>% 
    filter(year == 2007) %>% 
    ggplot(aes(continent)) +
    geom_bar()

gapminder %>% 
    filter(country %in% c("Peru", "Chile", "Colombia", "Mexico")) %>% 
    ggplot(aes(year, gdpPercap, color = country)) +
    geom_line()


