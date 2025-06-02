library(dplyr)
library(naniar)
library(nortest)
library(VIM)
library(BBmisc)
library(fastDummies)
library(digest)
library(smoothmest)
library(openxlsx)
options(scipen = 999)

df = read.csv("water-quality-data.csv")


#No siguen una distribucion normal ya que no tienen un p-value superior a 0.05
lillie.test(df$Value)
lillie.test(df$MDL)
lillie.test(df$RDL)

#Si suguese una distribucion normal podriamos utilizar el test de rosner 


####################################
media_value = mean(df$Value, na.rm = TRUE)
desviacion_estandar_value = sd(df$Value, na.rm = TRUE)


hampel_value_superior = media_value + 3 * desviacion_estandar_value 
hampel_value_inferior = media_value - 3 * desviacion_estandar_value
df$Value[df$Value < hampel_value_inferior | df$Value > hampel_value_superior] = NA


write.csv(df, "DF_DC_out.csv")



