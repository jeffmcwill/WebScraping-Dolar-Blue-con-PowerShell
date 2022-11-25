# WebScraping-Dolar-Blue-con-PowerShell
pequeño script que da como resultado el valor del dolar oficial y blue con la utilizacion de WebScraping en PowerShell

Explicacion de Funcionamiento:

por mas raro que parezca, en powershell no solo se puede escribir automatizaciones y ciertos scripts utiles
tambien se puede obtener cierta informacion con el metodo webscraping, usando un cmdlet conocido como "Invoke-WebRequest"
este permite junto con -Uri y el url de la página, analizarla para obtener informacion.

esta info aparecera en la terminal, pero para poder conseguir la informacion que si o si necesitamos, requerimos
de un metodo adicional que es ParsedHtml.GetElenebtsByTagName(), que tomara los elementos tipo class del codigo
html de la pagina que nosotros hayamos elegido y tendremos que ponerle la Class o clase que vayamos a necesitar.

en este caso, la class "div", tiene los elementos de los valores que necesito para mi script, que son el dolar oficial
y blue, todos esos datos pasados con un metodo de texto conocido como InnerText, para que sean legibles.

despues para que quede mejor le agregue un array "@datos".

asi se ve el script ejecutandose: 

![power1](https://user-images.githubusercontent.com/111131531/203941622-7081f082-e214-417b-ab27-5616123eecf7.png)
