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
