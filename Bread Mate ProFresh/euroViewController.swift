//
//  euroViewController.swift
//  Bread Mate ProFresh
//
//  Created by BTC10 on 4/11/16.
//  Copyright © 2016 BTC10. All rights reserved.
//

import UIKit

class euroViewController: UIViewController {
    
    var min = 0.0
    var blank = ""
    var amount = 0.0
    var total = 0.0
    var results = ""
    var gbp = 0.80
    var usd = 0.8767
    var jpy = 123.697
    var check = 1
    
    
    
    @IBOutlet weak var euroUserAmount: UITextField!
    
    
    @IBOutlet weak var resultsLabelEuro: UILabel!
    
    
    func labelDisplay()
    {
        resultsLabelEuro.layer.shadowColor = UIColor.whiteColor().CGColor
        resultsLabelEuro.layer.shadowOffset = CGSizeMake(5, 5)
        resultsLabelEuro.layer.shadowRadius = 5
        
        resultsLabelEuro.layer.shadowOpacity = 0.4
        
    }
    
    
    
    func checkForInput()
    {
        if (!euroUserAmount.text!.isEmpty)
        {
            //if there is value
            amount = Double(euroUserAmount.text!)!
            check = 1
            
            if (amount <= min)
            {
                let alert = UIAlertView()
                alert.title = "Bad Value"
                alert.message = "Please enter a value greater than zero (0)!"
                alert.addButtonWithTitle("OK")
                alert.show()
                check = 0
            }
            
        }
        else
        {
            let alert = UIAlertView()
            alert.title = "No Value"
            alert.message = "Please enter a value!"
            alert.addButtonWithTitle("OK")
            alert.show()
            check = 0
        }
        
    }
    
    
    func getAmountGbp()
    {
        labelDisplay()
        
        if check == 1
        {
            total = (amount * gbp)
            
            results = String(format:"%.2f", total)
            
            resultsLabelEuro.text = ("$ \(amount) in Euros is \(results) in Pounds")
        }
        else
        {
            resultsLabelEuro.text = ""
        }
    }
    
    func getAmountUsd()
    {
        
        labelDisplay()
        
        if check == 1
        {
            total = (amount * usd)
            
            results = String(format:"%.2f", total)
            
            resultsLabelEuro.text = ("$ \(amount) in Euros is \(results) in US Dollars")
        }
        else
        {
            resultsLabelEuro.text = ""
        }
    }
    
    
    func getAmountJpy()
    {
        labelDisplay()
        
        if check == 1
        {
            
            total = (amount * jpy)
            
            results = String(format:"%.2f", total)
            
            resultsLabelEuro.text = ("$ \(amount) in Euros is \(results) in Yen")
        }
        else
        {
            resultsLabelEuro.text = ""
        }
    }
    

    
    
    @IBAction func usdConvertBtn(sender: UIButton)
    {
        checkForInput()
        
        getAmountUsd()
    }

    @IBAction func poundConvertBtn(sender: UIButton)
    {
        checkForInput()
        
        getAmountGbp()
    }
    
    @IBAction func yenConvertBtn(sender: UIButton)
    {
        checkForInput()
        
        getAmountJpy()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
