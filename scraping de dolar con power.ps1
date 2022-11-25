#pequeño script escrito en powershell que te da con webscraping el precio
#actual del dolar.

#1_ funcion principal "main"

function main() {

#aqui encontramos la variable $pagina, la cual usa el comando Invoke-WebRequest
#-Uri donde pones el url de la pagina que haremos el web scraping

    $pagina=Invoke-WebRequest -Uri "https://www.valordolarblue.com.ar/"

#despues para usarlo requieres ir a la pagina y poner "Inspeccionar elemento"
#ahi buscar en el codigo html los valores requeridos, que en este caso es "div"
#y de ahi en la clase del comando div, buscamos el valor buscado, aqui "value"    
    
    $datos = $pagina.ParsedHtml.getElementsByTagName("div") | 
    Where-Object {$_.className -eq
    "value"}

#aqui en este caso de esta pagina, uso un array y lo voy ordenando para darle
#logica al programa.
    #array o lista como quieras decirlo...
    
    $ordenar = @($datos.innerText)

    #acomodado para que tenga logica.

    write-host "--------------"
    write-host "Dolar Blue"
    write-host "--------------"
    write-host $ordenar[0]
    write-host $ordenar[1]
    write-host "--------------"
    write-host "Dolar Oficial"
    write-host "--------------"
    write-host $ordenar[2]
    write-host $ordenar[3]
    write-host "--------------"    
}

main