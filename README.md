# Parcial1Lenguajes

#### 1.  Para el siguiente ejercicio, de una expresión regular que represente el conjunto descrito. [El conjunto de cadenas sobre {𝑎, 𝑏, 𝑐} en el cual todas las 𝑎′𝑠 preceden a las 𝑏′𝑠 y éstas a su vez preceden a las 𝑐′𝑠. Es posible que no haya 𝑎′𝑠, 𝑏′𝑠 o 𝑐′𝑠]. Implemente el AFD para esta expresión regular. Use Python.

La expresión regular para este AFD sería a*b*c*, donde desmostramos la seguidilla de las letras, aclarando que pueden o no aparecer

<pre>
  def afd(cadena):
    estado = 'q0'
    finales = {'q0','q1','q2','q3'}

    for simbolo in cadena:
        if estado == 'q0':
            if simbolo == 'a':
                estado = 'q1'
            elif simbolo == 'b':
                estado = 'q2'
            elif simbolo == 'c':
                estado = 'q3'
            else:
                return 'No acepta'
        
        elif estado == 'q1':
            if simbolo == 'a':
                estado = 'q1'
            elif simbolo == 'b':
                estado = 'q2'
            elif simbolo == 'c':
                estado = 'q3'
            else:
                return 'No acepta'
        
        elif estado == 'q2':
            if simbolo == 'b':
                estado = 'q2'
            elif simbolo == 'c':
                estado = 'q3'
            else:
                return 'No acepta'
            
        elif estado == 'q3':
            if simbolo == 'c':
                estado = 'q3'
            else:
                return 'No acepta'
    
    return 'acepta' if estado in finales else 'no acepta'

pruebas = ["aaa", "bbb", "ccc", "aaabbbccc", "ab", "ac", "bca", "aabbccaa"]
for t in pruebas:
    print(t, '->', afd(t))
</pre>

![Salida Ejercicio1](SalidaPunto1.png)

