//
//  yenViewController.swift
//  Bread Mate ProFresh
//
//  Created by BTC10 on 4/11/16.
//  Copyright © 2016 BTC10. All rights reserved.
//

import UIKit

class yenViewController: UIViewController {
    
    var min = 0.0
    var blank = ""
    var amount = 0.0
    var total = 0.0
    var results = ""
    var gbp = 0.0065
    var eur = 0.0081
    var usd = 0.0092
    var check = 1

    
    
    @IBOutlet weak var yenUserAmount: UITextField!
    
    
    @IBOutlet weak var resultLabelYen: UILabel!
    
    
    func labelDisplay()
    {
        resultLabelYen.layer.shadowColor = UIColor.whiteColor().CGColor
        resultLabelYen.layer.shadowOffset = CGSizeMake(5, 5)
        resultLabelYen.layer.shadowRadius = 5
        
        resultLabelYen.layer.shadowOpacity = 0.4
        
    }
    
    
    
    func checkForInput()
    {
        if (!yenUserAmount.text!.isEmpty)
        {
            //if there is value
            amount = Double(yenUserAmount.text!)!
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
            
            resultLabelYen.text = ("$ \(amount) in Yen is \(results) in Pounds")
        }
        else
        {
            resultLabelYen.text = ""
        }
    }
    
    func getAmountUsd()
    {
        labelDisplay()
        
        if check == 1
        {
            total = (amount * eur)
            
            results = String(format:"%.2f", total)
            
            resultLabelYen.text = ("$ \(amount) in Yen is \(results) in US Dollars")
        }
        else
        {
            resultLabelYen.text = ""
        }
    }
    
    
    func getAmountEuro()
    {
        labelDisplay()
        
        if check == 1
        {
            
            total = (amount * usd)
            
            results = String(format:"%.2f", total)
            
            resultLabelYen.text = ("$ \(amount) in Yen is \(results) in Euros")
        }
        else
        {
            resultLabelYen.text = ""
        }
    }
    

    
    @IBAction func usdConvertBtn(sender: UIButton)
    {
        checkForInput()
        
        getAmountUsd()
    }
    
    
    
    @IBAction func euroConvertBtn(sender: UIButton)
    {
        checkForInput()
        
        getAmountEuro()
    }
    
    
    @IBAction func poundConvertBtn(sender: UIButton)
    {
        checkForInput()
        
        getAmountGbp()
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
