
# Hecho con gusto por Selene Muñoz Ortega (UAEH)

#############################################
#LABORATORIO: Merge - Combinar tablas       #
#############################################

#Requisitos previos: Instalar paquete datatable
install.packages("data.table")


#Cargar paquete datatable
library(data.table)

#Cargar base de datos
choose.files()

green.products <- read.csv("C:\\Users\\munoz\\Dropbox\\Selene\\Doctorado\\4to semestre\\Unidad 2\\Lab32\\green products.csv")
all.products <- read.csv ("C:\\Users\\munoz\\Dropbox\\Selene\\Doctorado\\4to semestre\\Unidad 2\\Lab32\\COMPLETE_YEARS_PRODUCTS.csv")

green.products  <- as.data.table(green.products)
all.products  <- as.data.table(all.products)

#Combinar tablas
merge.all.products = merge(all.products, green.products, by="product_code")
merge.full = merge(all.products, green.products, by="product_code", all.x = TRUE)

#Exportar tablas combinadas
write.csv(merge.all.products,file = "merge.all.products.csv")
write.csv(merge.full,file = "merge.full.csv")