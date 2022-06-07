//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    @IBAction func rollButtonPress(_ sender: UIButton) {
        // itens fixos, nao sofrerão alteracao, por isso usa let, caso contrario, var
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        //Int.random(in: 0...5) funciona para escolher um valor entre 1 e 6 ou 0 e 5 na array
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        //.randomElement() pega qualquer valor alet[orio dentro do array, sem valor determinado
        diceImageView2.image = diceArray.randomElement()
        
    }
    
}

