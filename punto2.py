def afd(cadena):
    estado = 'q0'
    final = {'q1'}

    letras = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
    digitos = '0123456789'

    for i, simbolo in enumerate(cadena):
        if estado == 'q0':
            if simbolo in letras:
                estado = 'q1'
            else:
                return 'No acepta'
            
        elif estado == 'q1':
            if simbolo in letras + digitos:
                estado = 'q1'
            else:
                return 'No acepta'
        
    return 'Acepta' if estado in final else 'No acepta'

pruebas = ['abc','a1b2c3','Z99','123abc','ab$c']

for t in pruebas:
    print(t , '->' , afd(t))

