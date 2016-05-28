//
//  ViewController.swift
//  Bread Mate ProFresh
//
//  Created by BTC10 on 4/11/16.
//  Copyright © 2016 BTC10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var min = 0.0
    var blank = ""
    var amount = 0.0
    var total = 0.0
    var results = ""
    var gbp = 0.70190
    var eur = 0.87797
    var jpy = 108.56
    var check = 1
    
    
    @IBOutlet weak var usdUserAmount: UITextField!
    
    @IBOutlet weak var resultsLabelUSD: UILabel!
    
    func labelDisplay()
    {
        resultsLabelUSD.layer.shadowColor = UIColor.whiteColor().CGColor
        resultsLabelUSD.layer.shadowOffset = CGSizeMake(5, 5)
        resultsLabelUSD.layer.shadowRadius = 5
        
        resultsLabelUSD.layer.shadowOpacity = 0.4
        
    }

    
    
    func checkForInput()
    {
        if (!usdUserAmount.text!.isEmpty)
        {
            //if there is value
            amount = Double(usdUserAmount.text!)!
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
            
            resultsLabelUSD.text = ("$ \(amount) in US dollars is \(results) in Pounds")
        }
        else
        {
            resultsLabelUSD.text = ""
        }
    }
    
    func getAmountEur()
    {
        labelDisplay()
        
        if check == 1
        {
            total = (amount * eur)
            
            results = String(format:"%.2f", total)
            
            resultsLabelUSD.text = ("$ \(amount) in US dollars is \(results) in Euros")
        }
        else
        {
            resultsLabelUSD.text = ""
        }
    }
    
    
    func getAmountJpy()
    {
        labelDisplay()
        
        if check == 1
        {
            
            total = (amount * jpy)
            
            results = String(format:"%.2f", total)
            
            resultsLabelUSD.text = ("$ \(amount) in US dollars is \(results) in Yen")
        }
        else
        {
            resultsLabelUSD.text = ""
        }
    }

    
    @IBAction func euroConvertBtn(sender: UIButton)
    {
        checkForInput()
        
        getAmountEur()

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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

