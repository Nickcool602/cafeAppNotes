//
//  VCTWO.swift
//  cafeAppNotes
//
//  Created by NICHOLAS VINTARTAS on 10/10/24.
//

import UIKit

class VCTWO: UIViewController {

    var itemChosen : String!
    
    var priceChosen : Double!
    
    @IBOutlet weak var itemLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        itemLabel.text = itemChosen
        priceLabel.text = String("$\(priceChosen!)")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
