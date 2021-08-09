//
//  ViewController.swift
//  projetoCalculadora
//
//  Created by Paula Matsumoto on 02/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var ibButton0: UIButton!
    
    var number1:Double = 0.0
    var number2:Double = 0.0
    var resultOperator:Double = 0.0
    var resultPercentage:Double = 0.0
    var resultChangeSignal:Double = 0.0
    var Operator = "+"
    var percentage = "%"
    var changeSignal = "+/-"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ibButton0.layer.cornerRadius = ibButton0.layer.frame.height / 2
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func button0(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "0"
        
    }
    
    @IBAction func button1(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "1"
    
    }
    
    @IBAction func button2(_ sender: Any) { resultLabel.text = resultLabel.text! + "2"
    }
    
    @IBAction func button3(_ sender: Any) { resultLabel.text = resultLabel.text! + "3"
    }
    
    @IBAction func button4(_ sender: Any) { resultLabel.text = resultLabel.text! + "4"
    }
    
    @IBAction func button5(_ sender: Any) { resultLabel.text = resultLabel.text! + "5"
    }
    
    @IBAction func button6(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "6"
    }
    
    @IBAction func button7(_ sender: Any) { resultLabel.text = resultLabel.text! + "7"
    }
    
    @IBAction func button8(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "8"
    }
    
    @IBAction func button9(_ sender: Any) { resultLabel.text = resultLabel.text! + "9"
    }
    
    @IBAction func buttonAc(_ sender: Any) {
        resultLabel.text = ""
    }
    @IBAction func buttonSignalPositiveNegative(_ sender: Any) {
        changeSignal = "+/-"
        number1 = Double(resultLabel.text!)!
        
        resultChangeSignal = number1 * -1
        resultLabel.text = String(resultChangeSignal)
    }
    
    @IBAction func buttonPercentage(_ sender: Any) {
        percentage = "%"
        number1 = Double(resultLabel.text!)!
    
            resultPercentage = number1 / 100
            resultLabel.text = String(resultPercentage)
    
    }
        
    @IBAction func buttonDivide(_ sender: Any) {
        Operator = "/"
        number1 = Double(resultLabel.text!)!
        clearText()
    }
    
    @IBAction func buttonMultiply(_ sender: Any) {
        Operator = "*"
        number1 = Double(resultLabel.text!)!
        clearText()
    }
    @IBAction func buttonSubtract(_ sender: Any) {
        Operator = "-"
        number1 = Double(resultLabel.text!)!
        clearText()
    }
    
    @IBAction func buttonAdd(_ sender: Any) {
        Operator = "+"
        number1 = Double(resultLabel.text!)!
        clearText()
    
    }
    @IBAction func buttonEquals(_ sender: Any) {
        number2 = Double(resultLabel.text!)!
        switch Operator {
        
        case "+":
            resultOperator = number1 + number2
            resultLabel.text = String(resultOperator)
            
        case "-":
            resultOperator = number1 - number2
            resultLabel.text = String(resultOperator)
            
        case "/":
            resultOperator = number1 / number2
            resultLabel.text = String(resultOperator)
            
        case "*":
            resultOperator = number1 * number2
            resultLabel.text = String(resultOperator)
            
        case "%":
            resultOperator = number1 / number2
            resultLabel.text = String(resultOperator)
            
        
        default:
            resultLabel.text = "Erro"
            
        }
    }
    
    @IBAction func buttonDecimalPoint(_ sender: Any) {
        resultLabel.text = resultLabel.text! + "."
         
    }
        func clearText(){
            resultLabel.text = ""
        }
}


