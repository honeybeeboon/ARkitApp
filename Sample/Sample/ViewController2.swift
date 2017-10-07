//
//  ViewController2.swift
//  Sample
//
//  Created by 下澤一輝 on 2017/10/07.
//  Copyright © 2017年 下澤一輝. All rights reserved.
//

import UIKit

class ViewController2: UIViewController ,UITextFieldDelegate{

    @IBOutlet weak var num: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var sumPrice: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.num.delegate = self
    }
    func textFieldShouldReturn(_ num: UITextField) -> Bool {
        num.resignFirstResponder()
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        
        let Price = Int(price.text!)!
        let Num = Int(num.text!)!
        
        let SumPrice = Price * Num
        
        let formatter = NumberFormatter()
        formatter.numberStyle = NumberFormatter.Style.decimal
        formatter.groupingSeparator = ","
        formatter.groupingSize = 3
        
        sumPrice.text = formatter.string(from: SumPrice as NSNumber)//String(SumPrice)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
