//
//  ViewController4.swift
//  Intro612
//
//  Created by ISSC_612_2023 on 27/02/23.
//

import UIKit
import Lottie

class ViewController4: UIViewController {

    
    @IBOutlet weak var opView01: UILabel!
    @IBOutlet weak var opView02: UILabel!
    @IBOutlet weak var opView03: UILabel!
    @IBOutlet weak var viewAnswer: UILabel!
    @IBOutlet weak var btnOutlet01: UIButton!
    @IBOutlet weak var btnOutlet02: UIButton!
    @IBOutlet weak var btnOutlet03: UIButton!
    @IBOutlet weak var Lifes: UILabel!
    @IBOutlet weak var Score: UILabel!
    
    private var animationView: LottieAnimationView?
    let operators: [String] = ["+","-","*","/"]
    var lifesGames = 5
    var score = 0
    var resultado = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Lifes.text = "Lifes: " + String(lifesGames)
        principal()
        
    }
    
    
    
    @IBAction func btnOp01(_ sender: UIButton) {
        var respuesta = sender.currentTitle ?? ""
        if (lifesGames == 0){
            btnOutlet01.isEnabled = false
            btnOutlet02.isEnabled = false
            btnOutlet03.isEnabled = false
            var dialogMessage = UIAlertController(title: "GAME OVER", message: "Try it Again", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in })
            dialogMessage.addAction(ok)
            self.present(dialogMessage, animated: true, completion: nil)
        }
        if (score == 4){
            btnOutlet01.isEnabled = false
            btnOutlet02.isEnabled = false
            btnOutlet03.isEnabled = false
            
            var dialogMessage = UIAlertController(title: "YOU WON", message: "Congratulations", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in})
            dialogMessage.addAction(ok)
            self.present(dialogMessage, animated: true, completion: nil)
        }
        if String(respuesta) == String(resultado){
            viewAnswer.text = "CORRECTO"
            score = score+1
            Score.text = "Score: " + String(score)
            principal()
            
        }else{
            viewAnswer.text = "INCORRECTO"
            lifesGames = lifesGames-1
            Lifes.text = "Vidas: "+String(lifesGames)
            principal()
            
        }
    }
    
    
    @IBAction func btnOp02(_ sender: UIButton) {
        var respuesta = sender.currentTitle ?? ""
        if (lifesGames == 0){
            btnOutlet01.isEnabled = false
            btnOutlet02.isEnabled = false
            btnOutlet03.isEnabled = false
            var dialogMessage = UIAlertController(title: "GAME OVER", message: "Try it Again", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in})
            dialogMessage.addAction(ok)
            self.present(dialogMessage, animated: true, completion: nil)
        }
        if (score == 4){
            btnOutlet01.isEnabled = false
            btnOutlet02.isEnabled = false
            btnOutlet03.isEnabled = false
            var dialogMessage = UIAlertController(title: "YOU WON", message: "Congratulations", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in})
            dialogMessage.addAction(ok)
            self.present(dialogMessage, animated: true, completion: nil)
        }
        if String(respuesta) == String(resultado){
            viewAnswer.text = "CORRECT"
            score = score+1
            Score.text = "Score: "+String(score)
            principal()
            
        }else{
            viewAnswer.text = "INCORRECT"
            lifesGames = lifesGames-1
            Lifes.text = "Vidas: "+String(lifesGames)
            principal()
            
        }
        
    }
    
    
    @IBAction func btnOp03(_ sender: UIButton) {
        var respuesta = sender.currentTitle ?? ""
        if (lifesGames == 0){
            btnOutlet01.isEnabled = false
            btnOutlet02.isEnabled = false
            btnOutlet03.isEnabled = false
            var dialogMessage = UIAlertController(title: "GAME OVER", message: "Try it Again", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in})
            dialogMessage.addAction(ok)
            self.present(dialogMessage, animated: true, completion: nil)
        }
        if (score == 4){
            btnOutlet01.isEnabled = false
            btnOutlet02.isEnabled = false
            btnOutlet03.isEnabled = false
            var dialogMessage = UIAlertController(title: "YOU WON", message: "Congratulations", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in})
            dialogMessage.addAction(ok)
            self.present(dialogMessage, animated: true, completion: nil)
        }
        if String(respuesta) == String(resultado){
            viewAnswer.text = "CORRECTO"
            score = score+1
            Score.text = "Score: "+String(score)
            principal()
        }else{
            viewAnswer.text = "INCORRECTO"
            lifesGames = lifesGames-1
            Lifes.text = "Vidas: "+String(lifesGames)
            principal()
        }
        
    }
    
    func principal(){
        let random1 = String(Int.random(in: 1...100))
        let random2 = String(Int.random(in: 1...100))
        let random3 = String(Int.random(in: 1...100))
        let random4 = String(Int.random(in: 1...100))
        opView01.text = random1
        opView02.text = random2
        let operador = operators[Int.random(in: 0...3)]
        opView03.text = String(operador)
        
        resultado = operacion(Int(random1)!, Int(random2)!, operador)
        var tres = [random3,random4,String(resultado)].shuffled()
        btnOutlet01.setTitle(tres[0] as? String, for: .normal)
        btnOutlet02.setTitle(tres[1] as? String, for: .normal)
        btnOutlet03.setTitle(tres[2] as? String, for: .normal)    }
    
    func operacion(_ x:Int, _ y:Int, _ operador:String) -> Int{
        var resultado: Int = 0
        if (operador == "-"){
            resultado = x - y
        }else if(operador == "+"){
            resultado = x + y
        }else if(operador == "/"){
            resultado = x / y
        }else if (operador == "*"){
            resultado = x * y
        }
        return resultado
    }
    
}

