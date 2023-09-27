class Aviones {
    constructor (tipo, marca, color) {
        this.tipo = tipo;
        this.marca = marca;
        this.color = color;
    }

    get Modelo(){
        return this.modelo();
    }
    get Pintura(){
        return this.pintura();
    }

    modelo(){
        return 'El avion ' + this.tipo + ' es del fabricante ' + this.marca;
    }
    pintura(){
        return 'El avion es de color ' + this.color;
    }
}

const ejemplo01 = new Aviones ('ejecutivo','Airbus','blanco');
console.log(ejemplo01.Modelo)
console.log(ejemplo01.Pintura) 

class Ala extends Aviones {
    constructor (tipo, marca, diseño){
        super(tipo, marca)
        this.diseño = diseño;
    }

    get Superficie(){
        return this.superficie();
    }

    superficie(){
        return 'El avion de ala ' + this.diseño + ' es de tipo ' + this.tipo;
    }
    modelo(){
        return 'El avion de ala ' + this.diseño + ' es del fabricante ' + this.marca;
    }
}

const ejemplo02 = new Ala ('comercial', 'Boeing', 'fija')
console.log(ejemplo02.Superficie)
console.log(ejemplo02.Modelo) 

class Entrenamiento extends Aviones {
    constructor (tipo, marca, nivel){
        super(tipo, marca)
        this.nivel = nivel;
    }

    get Categoria(){
        return this.categoria();
    }

    categoria(){
        return 'El avion de tipo ' + this.tipo + ' de nivel ' + this.nivel + ', es fabricado por ' + this.marca;
    }
}
const ejemplo03 = new Entrenamiento ('entrenamiento', 'Cessna', 'basico')
console.log(ejemplo03.Categoria)

class Militar extends Aviones {
    constructor (tipo, marca, funcion){
        super(tipo, marca)
        this.funcion = funcion;
    }

    get Clase(){
        return this.clase();
    }

    clase(){
        return 'El avion ' + this.tipo + ' es un ' + this.funcion+ ' creado por ' + this.marca;
    }
}

const ejemplo04 = new Militar ('militar', 'General Dynamics', 'caza')
console.log(ejemplo04.Clase)