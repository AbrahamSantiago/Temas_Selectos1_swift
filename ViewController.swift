//
//  ViewController.swift
//  Maxi_Estudios
//
//  Created by CEDAM18 on 16/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    

    func actualizarElemento(){
        etiqueta.text="?"
    let nombreDelElemento=listaDeElementos[elemntosIndice]
        let LaImagen = UIImage(named: nombreDelElemento)
        Imagen.image=LaImagen
    }
    
    @IBOutlet weak var Imagen: 
    UIImageView!
    
    
    @IBOutlet weak var etiqueta: 
    UILabel!
    
    let listaDeElementos = ["lajovenDelaPerla","monalisa","frida","afrodita"]
    var elemntosIndice =0
    
    
    
    @IBAction func mostrar(_ sender: Any) {
        etiqueta.text = listaDeElementos[elemntosIndice]
    }
    

    @IBAction func siguiente(_ sender: Any) {
        elemntosIndice+=1;
        if(elemntosIndice >= listaDeElementos.count){
            elemntosIndice = 0
        }
        actualizarElemento()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        actualizarElemento()
    }


}

