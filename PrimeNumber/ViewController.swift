//
//  ViewController.swift
//  PrimeNumber
//
//  Created by 游宗翰 on 2016/7/20.
//  Copyright © 2016年 han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var primeTextField: UITextField!

    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func getAnswerTextField(_ sender: UITextField)
    {
        getAnswer()
        //primeTextField.resignFirstResponder()
        //primeTextField.text! = ""
    }
    
    
    @IBAction func editingDidEndTextField(_ sender: UITextField)
    {
        getAnswer()
        sender.resignFirstResponder()
        primeTextField.text! = ""
    }
    @IBAction func answerButton(_ sender: UIButton) {
        //primeTextField.resignFirstResponder()
        primeTextField.text! = ""
    }
    
    func getAnswer(){
        if Int(primeTextField.text!) != nil
        {
            let number = Int(primeTextField.text!)!
            if number <= 0
            {
                answerLabel.text = "抱歉請輸入大於0的數"
            }
            else if number == 1 || number == 2
            {
                if number == 1
                {
                    answerLabel.text = "很抱歉1不是質數"
                }
                else
                {
                    answerLabel.text = "恭喜你找到了2是質數"
                }
            }
            else
            {
                for i in 2...number-1
                {
                    if number % i == 0
                    {
                        answerLabel.text = "很抱歉\(number)不是質數"
                        break
                    }
                    else
                    {
                        answerLabel.text = "恭喜你找到了\(number)是質數"
                    }
                }
            }
        }
        else
        {
            answerLabel.text! = "請輸入一個數字"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        primeTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

