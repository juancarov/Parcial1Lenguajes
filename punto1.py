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

pruebas = ['aaa', 'bbb', 'ccc', 'aaabbbccc', 'ab', 'ac', 'bca', 'aabbcca']
for t in pruebas:
    print(t, '->', afd(t))
