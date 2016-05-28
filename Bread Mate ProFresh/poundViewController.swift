//
//  poundViewController.swift
//  Bread Mate ProFresh
//
//  Created by BTC10 on 4/11/16.
//  Copyright © 2016 BTC10. All rights reserved.
//

import UIKit

class poundViewController: UIViewController {
    
    var min = 0.0
    var blank = ""
    var amount = 0.0
    var total = 0.0
    var results = ""
    var usd = 1.42
    var eur = 1.25
    var jpy = 154.61
    var check = 1
    
    
    @IBOutlet weak var poundUserAmount: UITextField!
    
    
    @IBOutlet weak var resultLabelPound: UILabel!
    
    func labelDisplay()
    {
        resultLabelPound.layer.shadowColor = UIColor.whiteColor().CGColor
        resultLabelPound.layer.shadowOffset = CGSizeMake(5, 5)
        resultLabelPound.layer.shadowRadius = 5
        
        resultLabelPound.layer.shadowOpacity = 0.4
        
    }
    
    
    
    func checkForInput()
    {
        if (!poundUserAmount.text!.isEmpty)
        {
            //if there is value
            amount = Double(poundUserAmount.text!)!
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
    
    
    func getAmountUsd()
    {
        labelDisplay()
        
        if check == 1
        {
            total = (amount * usd)
            
            results = String(format:"%.2f", total)
            
            resultLabelPound.text = ("$ \(amount) in Pounds is \(results) in US Dollars")
        }
        else
        {
            resultLabelPound.text = ""
        }
    }
    
    func getAmountEur()
    {
        labelDisplay()
        
        if check == 1
        {
            total = (amount * eur)
            
            results = String(format:"%.2f", total)
            
            resultLabelPound.text = ("$ \(amount) in Pounds is \(results) in Euros")
        }
        else
        {
            resultLabelPound.text = ""
        }
    }
    
    
    func getAmountJpy()
    {
        labelDisplay()
        
        if check == 1
        {
            
            total = (amount * jpy)
            
            results = String(format:"%.2f", total)
            
            resultLabelPound.text = ("$ \(amount) in Pounds is \(results) in Yen")
        }
        else
        {
            resultLabelPound.text = ""
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
        
        getAmountEur()
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
