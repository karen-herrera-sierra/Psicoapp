from flask import Flask, render_template

psico= Flask (__name__)

@psico.route('/')
def menu():
    #return 'BUENAS  '
    data ={
        'titulo': 'PsicoApp',
        'bienvenida': 'Saludos!'
    }
    return render_template('index.html',data=data) 
    
@psico.route('/contacto/<nombre>')
def contacto(nombre):
    data ={
        'titulo': 'contacto',
        'bienvenida': nombre
    }
    return render_template('contacto.html',data=data)

if __name__ == '__main__':
    psico.run(debug=True, port=5002)
    
