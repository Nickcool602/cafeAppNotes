//
//  ViewController.swift
//  cafeAppNotes
//
//  Created by NICHOLAS VINTARTAS on 10/10/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var itemField: UITextField!
    
    @IBOutlet weak var priceField: UITextField!
    
    var items: [String] = []
    
    var prices: [Double] = []
    
    var itemChose = 0
    
    var itemCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var itemS = segue.destination as! VCTWO
        var priceS = segue.destination as! VCTWO
        
        itemS.itemChosen = items[itemChose]
        priceS.priceChosen = prices[itemChose]
    }

    @IBAction func addButton(_ sender: Any) {
        items.append(itemField.text!)
        prices.append(round(Double(priceField.text!)!*100)/100)
        if items.count != prices.count {
            print("error: prices and items don't match")
        }
        else {
            itemCount = items.count
        }
        itemField.resignFirstResponder()
        priceField.resignFirstResponder()
    }
    @IBAction func genButton(_ sender: Any) {
        itemChose = Int.random(in: 0...itemCount)
        if items.indices.contains(itemChose) {
            performSegue(withIdentifier: "VCTWO", sender: nil)
        }
        else {
            print("Index not in range")
            print(itemChose)
            print(items)
            print(items.count)
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
}

