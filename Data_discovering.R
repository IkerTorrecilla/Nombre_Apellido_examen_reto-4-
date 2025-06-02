library(dplyr)

df = read.csv("water-quality-data.csv")

summary(df$Value)
summary(df$MDL)
summary(df$RDL)

#Desviacion estandar
desviacion_value = sd(df$Value, na.rm = TRUE)
desviacion_value
desviacion_mdl = sd(df$MDL, na.rm = TRUE)
desviacion_mdl
desviacion_rdl = sd(df$RDL, na.rm = TRUE)
desviacion_rdl

#Varianza
varianza_value = var(df$Value, na.rm = TRUE)
varianza_mdl = var(df$MDL, na.rm = TRUE)
varianza_rdl = var(df$RDL, na.rm = TRUE)


#

df_value = df %>% group_by(Area) %>% summarise(media_value = mean(Value, na.rm = TRUE))
df_value_ordenado = arrange(df_value[c(5, 20, 33), ])

df_mdl = df %>% group_by(Area) %>% summarise(media_value = mean(MDL, na.rm = TRUE))
df_mdl_ordenado = arrange(df_mdl[c(5, 20, 33), ])

df_rdl = df %>% group_by(Area) %>% summarise(media_value = mean(RDL, na.rm = TRUE))
df_rld_ordenado = arrange(df_rdl[c(5, 20, 33), ])


###################
fnfnnnfk
v mnkzvv
vnksenklvn

#############################
mnkfnkvnkvnd
vknlnkzdvnidnk
mwmkmkmdwmkdmk



