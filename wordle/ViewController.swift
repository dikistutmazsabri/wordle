//
//  ViewController.swift
//  wordle
//
//  Created by Burak Polat on 26.02.2022.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var textField6: UITextField!
    @IBOutlet weak var textField7: UITextField!
    @IBOutlet weak var textField8: UITextField!
    @IBOutlet weak var textField9: UITextField!
    @IBOutlet weak var textField10: UITextField!
    @IBOutlet weak var textField11: UITextField!
    @IBOutlet weak var textField12: UITextField!
    @IBOutlet weak var textField13: UITextField!
    @IBOutlet weak var textField14: UITextField!
    @IBOutlet weak var textField15: UITextField!
    @IBOutlet weak var textField16: UITextField!
    @IBOutlet weak var textField17: UITextField!
    @IBOutlet weak var textField18: UITextField!
    @IBOutlet weak var textField19: UITextField!
    @IBOutlet weak var textField20: UITextField!
    @IBOutlet weak var textField21: UITextField!
    @IBOutlet weak var textField22: UITextField!
    @IBOutlet weak var textField23: UITextField!
    @IBOutlet weak var textField24: UITextField!
    @IBOutlet weak var textField25: UITextField!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    
    
    var wordle = [String] ()
    var word = ""
    var score = 0
    var time = (Timer)()
    var counter = 0
    var randomAgain = [String] ()
    var highScore = 0
    
    @IBAction func CHECK(_ sender: Any) {
        
        
        
        var randomOne = word.map{ String($0) }
        
        randomAgain = randomOne
        
        if textField1.text?.count != 0 && textField2.text?.count != 0 && textField3.text?.count != 0 && textField4.text?.count != 0 && textField5.text?.count != 0 && textField6.text?.count == 0 && textField7.text?.count == 0 && textField8.text?.count == 0 && textField9.text?.count == 0 && textField10.text?.count == 0 && textField11.text?.count == 0 && textField12.text?.count == 0 && textField13.text?.count == 0 && textField14.text?.count == 0 && textField15.text?.count == 0 && textField16.text?.count == 0 && textField17.text?.count == 0 && textField18.text?.count == 0 && textField19.text?.count == 0 && textField20.text?.count == 0 && textField21.text?.count == 0 && textField22.text?.count == 0 && textField23.text?.count == 0 && textField24.text?.count == 0 && textField24.text?.count == 0 {
            
            
            if textField1.text == randomOne[0] {
                textField1.backgroundColor = .green
                score += 50
                randomOne[0] = ""
            }else if randomOne.contains(textField1.text!) {
                textField1.backgroundColor = .yellow
                score += 5
            }
            
            if textField2.text == randomOne[1] {
                textField2.backgroundColor = .green
                score += 50
                randomOne[1] = ""
            }else if randomOne.contains(textField2.text!) {
                textField2.backgroundColor = .yellow
                score += 5
            }
            
            if textField3.text == randomOne[2]  {
                textField3.backgroundColor = .green
                score += 50
                randomOne[2] = ""
            }else if randomOne.contains(textField3.text!) {
                textField3.backgroundColor = .yellow
                score += 5
            }
            
            if textField4.text == randomOne[3] {
                textField4.backgroundColor = .green
                score += 0
                randomOne[3] = ""
            }else if randomOne.contains(textField4.text!) {
                textField4.backgroundColor = .yellow
                score += 5
            }
            
            if textField5.text == randomOne[4] {
                textField5.backgroundColor = .green
                score += 50
                randomOne[4] = ""
            }else if randomOne.contains(textField5.text!) {
                textField5.backgroundColor = .yellow
                score += 5
            }
            
            randomOne[0]=randomAgain[0]
            randomOne[1]=randomAgain[1]
            randomOne[2]=randomAgain[2]
            randomOne[3]=randomAgain[3]
            randomOne[4]=randomAgain[4]
            
            win()
            
            textField1.borderStyle = .none
            textField2.borderStyle = .none
            textField3.borderStyle = .none
            textField4.borderStyle = .none
            textField5.borderStyle = .none
            textField6.borderStyle = .bezel
            textField7.borderStyle = .bezel
            textField8.borderStyle = .bezel
            textField9.borderStyle = .bezel
            textField10.borderStyle = .bezel
            
            
            
            textField1.isEnabled = false
            textField2.isEnabled = false
            textField3.isEnabled = false
            textField4.isEnabled = false
            textField5.isEnabled = false
            textField6.isEnabled = true
            textField7.isEnabled = true
            textField8.isEnabled = true
            textField9.isEnabled = true
            textField10.isEnabled = true
            
        }else if textField1.text?.count != 0 && textField2.text?.count != 0 && textField3.text?.count != 0 && textField4.text?.count != 0 && textField5.text?.count != 0 && textField6.text?.count != 0 && textField7.text?.count != 0 && textField8.text?.count != 0 && textField9.text?.count != 0 && textField10.text?.count != 0 && textField11.text?.count == 0 && textField12.text?.count == 0 && textField13.text?.count == 0 && textField14.text?.count == 0 && textField15.text?.count == 0 && textField16.text?.count == 0 && textField17.text?.count == 0 && textField18.text?.count == 0 && textField19.text?.count == 0 && textField20.text?.count == 0 && textField21.text?.count == 0 && textField22.text?.count == 0 && textField23.text?.count == 0 && textField24.text?.count == 0 && textField25.text?.count == 0 {
            
            if textField6.text == randomOne[0]{
                textField6.backgroundColor = .green
                score += 40
                randomOne[0] = ""
            }else if randomOne.contains(textField6.text!) {
                textField6.backgroundColor = .yellow
                score += 4
            }
            if textField7.text == randomOne[1] {
                textField7.backgroundColor = .green
                score += 40
                randomOne[1] = ""
            }else if randomOne.contains(textField7.text!) {
                textField7.backgroundColor = .yellow
                score += 4
            }
            if textField8.text == randomOne[2] {
                textField8.backgroundColor = .green
                score += 40
                randomOne[2] = ""
            }else if randomOne.contains(textField8.text!) {
                textField8.backgroundColor = .yellow
                score += 4
            }
            if textField9.text == randomOne[3] {
                textField9.backgroundColor = .green
                score += 40
                randomOne[3] = ""
            }else if randomOne.contains(textField9.text!) {
                textField9.backgroundColor = .yellow
                score += 4
            }
            if textField10.text == randomOne[4] {
                textField10.backgroundColor = .green
                score += 40
                randomOne[4] = ""
            }else if randomOne.contains(textField10.text!) {
                textField10.backgroundColor = .yellow
                score += 4
            }
            
            randomOne[0]=randomAgain[0]
            randomOne[1]=randomAgain[1]
            randomOne[2]=randomAgain[2]
            randomOne[3]=randomAgain[3]
            randomOne[4]=randomAgain[4]
            
            win2()
            
            textField6.borderStyle = .none
            textField7.borderStyle = .none
            textField8.borderStyle = .none
            textField9.borderStyle = .none
            textField10.borderStyle = .none
            textField11.borderStyle = .bezel
            textField12.borderStyle = .bezel
            textField13.borderStyle = .bezel
            textField14.borderStyle = .bezel
            textField15.borderStyle = .bezel
            
            textField6.isEnabled = false
            textField7.isEnabled = false
            textField8.isEnabled = false
            textField9.isEnabled = false
            textField10.isEnabled = false
            textField11.isEnabled = true
            textField12.isEnabled = true
            textField13.isEnabled = true
            textField14.isEnabled = true
            textField15.isEnabled = true
            
            
        }else if textField1.text?.count != 0 && textField2.text?.count != 0 && textField3.text?.count != 0 && textField4.text?.count != 0 && textField5.text?.count != 0 && textField6.text?.count != 0 && textField7.text?.count != 0 && textField8.text?.count != 0 && textField9.text?.count != 0 && textField10.text?.count != 0 && textField11.text?.count != 0 && textField12.text?.count != 0 && textField13.text?.count != 0 && textField14.text?.count != 0 && textField15.text?.count != 0 && textField16.text?.count == 0 && textField17.text?.count == 0 && textField18.text?.count == 0 && textField19.text?.count == 0 && textField20.text?.count == 0 && textField21.text?.count == 0 && textField22.text?.count == 0 && textField23.text?.count == 0 && textField24.text?.count == 0 && textField25.text?.count == 0 {
            
            if textField11.text == randomOne[0] {
                textField11.backgroundColor = .green
                score += 30
                randomOne[0] = ""
            }else if randomOne.contains(textField11.text!) {
                textField11.backgroundColor = .yellow
                score += 3
            }
            if textField12.text == randomOne[1] {
                textField12.backgroundColor = .green
                score += 30
                randomOne[1] = ""
            }else if randomOne.contains(textField12.text!){
                textField12.backgroundColor = .yellow
                score += 3
            }
            if textField13.text == randomOne[2] {
                textField13.backgroundColor = .green
                score += 30
                randomOne[2] = ""
            }else if randomOne.contains(textField13.text!) {
                textField13.backgroundColor = .yellow
                score += 3
            }
            if textField14.text == randomOne[3] {
                textField14.backgroundColor = .green
                score += 30
                randomOne[3] = ""
            }else if randomOne.contains(textField14.text!){
                textField14.backgroundColor = .yellow
                score += 3
            }
            if textField15.text == randomOne[4] {
                textField15.backgroundColor = .green
                score += 30
                randomOne[4] = ""
            }else if randomOne.contains(textField15.text!) {
                textField15.backgroundColor = .yellow
                score += 3
            }
            
            randomOne[0]=randomAgain[0]
            randomOne[1]=randomAgain[1]
            randomOne[2]=randomAgain[2]
            randomOne[3]=randomAgain[3]
            randomOne[4]=randomAgain[4]
            
            win3()
            
            
            textField11.borderStyle = .none
            textField12.borderStyle = .none
            textField13.borderStyle = .none
            textField14.borderStyle = .none
            textField15.borderStyle = .none
            textField16.borderStyle = .bezel
            textField17.borderStyle = .bezel
            textField18.borderStyle = .bezel
            textField19.borderStyle = .bezel
            textField20.borderStyle = .bezel
            
            textField11.isEnabled = false
            textField12.isEnabled = false
            textField13.isEnabled = false
            textField14.isEnabled = false
            textField15.isEnabled = false
            textField16.isEnabled = true
            textField17.isEnabled = true
            textField18.isEnabled = true
            textField19.isEnabled = true
            textField20.isEnabled = true
            
        }else if textField1.text?.count != 0 && textField2.text?.count != 0 && textField3.text?.count != 0 && textField4.text?.count != 0 && textField5.text?.count != 0 && textField6.text?.count != 0 && textField7.text?.count != 0 && textField8.text?.count != 0 && textField9.text?.count != 0 && textField10.text?.count != 0 && textField11.text?.count != 0 && textField12.text?.count != 0 && textField13.text?.count != 0 && textField14.text?.count != 0 && textField15.text?.count != 0 && textField16.text?.count != 0 && textField17.text?.count != 0 && textField18.text?.count != 0 && textField19.text?.count != 0 && textField20.text?.count != 0 && textField21.text?.count == 0 && textField22.text?.count == 0 && textField23.text?.count == 0 && textField24.text?.count == 0 && textField25.text?.count == 0 {
            
            if textField16.text == randomOne[0] {
                textField16.backgroundColor = .green
                score += 20
                randomOne[0] = ""
            }else if randomOne.contains(textField16.text!) {
                textField16.backgroundColor = .yellow
                score += 2
            }
            if textField17.text == randomOne[1] {
                textField17.backgroundColor = .green
                score += 20
                randomOne[1] = ""
            }else if randomOne.contains(textField17.text!) {
                textField17.backgroundColor = .yellow
                score += 2
            }
            if textField18.text == randomOne[2] {
                textField18.backgroundColor = .green
                score += 20
                randomOne[2] = ""
            }else if randomOne.contains(textField18.text!) {
                textField18.backgroundColor = .yellow
                score += 2
            }
            if textField19.text == randomOne[3] {
                textField19.backgroundColor = .green
                score += 20
                randomOne[3] = ""
            }else if randomOne.contains(textField19.text!) {
                textField19.backgroundColor = .yellow
                score += 2
            }
            if textField20.text == randomOne[4] {
                textField20.backgroundColor = .green
                score += 20
                randomOne[4] = ""
            }else if randomOne.contains(textField20.text!) {
                textField20.backgroundColor = .yellow
                score += 2
            }
            
            randomOne[0]=randomAgain[0]
            randomOne[1]=randomAgain[1]
            randomOne[2]=randomAgain[2]
            randomOne[3]=randomAgain[3]
            randomOne[4]=randomAgain[4]
            
            win4()
            
            textField16.borderStyle = .none
            textField17.borderStyle = .none
            textField18.borderStyle = .none
            textField19.borderStyle = .none
            textField20.borderStyle = .none
            textField21.borderStyle = .bezel
            textField22.borderStyle = .bezel
            textField23.borderStyle = .bezel
            textField24.borderStyle = .bezel
            textField25.borderStyle = .bezel
            
            textField16.isEnabled = false
            textField17.isEnabled = false
            textField18.isEnabled = false
            textField19.isEnabled = false
            textField20.isEnabled = false
            textField21.isEnabled = true
            textField22.isEnabled = true
            textField23.isEnabled = true
            textField24.isEnabled = true
            textField25.isEnabled = true
            
        }else if textField1.text?.count != 0 && textField2.text?.count != 0 && textField3.text?.count != 0 && textField4.text?.count != 0 && textField5.text?.count != 0 && textField6.text?.count != 0 && textField7.text?.count != 0 && textField8.text?.count != 0 && textField9.text?.count != 0 && textField10.text?.count != 0 && textField11.text?.count != 0 && textField12.text?.count != 0 && textField13.text?.count != 0 && textField14.text?.count != 0 && textField15.text?.count != 0 && textField16.text?.count != 0 && textField17.text?.count != 0 && textField18.text?.count != 0 && textField19.text?.count != 0 && textField20.text?.count != 0 && textField21.text?.count != 0 && textField22.text?.count != 0 && textField23.text?.count != 0 && textField24.text?.count != 0 && textField25.text?.count != 0 {
            
            if textField21.text == randomOne[0] {
                textField21.backgroundColor = .green
                score += 10
                randomOne[0] = ""
            }else if randomOne.contains(textField21.text!) {
                textField21.backgroundColor = .yellow
                score += 1
            }
            if textField22.text == randomOne[1] {
                textField22.backgroundColor = .green
                score += 10
                randomOne[1] = ""
            }else if randomOne.contains(textField22.text!) {
                textField22.backgroundColor = .yellow
                score += 1
            }
            if textField23.text == randomOne[2] {
                textField23.backgroundColor = .green
                score += 10
                randomOne[2] = ""
            }else if randomOne.contains(textField23.text!) {
                textField23.backgroundColor = .yellow
                score += 1
            }
            if textField24.text == randomOne[3] {
                textField24.backgroundColor = .green
                score += 10
                randomOne[3] = ""
            }else if randomOne.contains(textField24.text!) {
                textField24.backgroundColor = .yellow
                score += 1
            }
            if textField25.text == randomOne[4] {
                textField25.backgroundColor = .green
                score += 10
                randomOne[4] = ""
            }else if randomOne.contains(textField25.text!) {
                textField25.backgroundColor = .yellow
                score += 1
            }
            
            randomOne[0]=randomAgain[0]
            randomOne[1]=randomAgain[1]
            randomOne[2]=randomAgain[2]
            randomOne[3]=randomAgain[3]
            randomOne[4]=randomAgain[4]
            
            win5()
            
            textField21.borderStyle = .none
            textField22.borderStyle = .none
            textField23.borderStyle = .none
            textField24.borderStyle = .none
            textField25.borderStyle = .none
            
            textField21.isEnabled = false
            textField22.isEnabled = false
            textField23.isEnabled = false
            textField24.isEnabled = false
            textField25.isEnabled = false
            
        }
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        
        
        self.textField1.backgroundColor = .systemGray6
        self.textField2.backgroundColor = .systemGray6
        self.textField3.backgroundColor = .systemGray6
        self.textField4.backgroundColor = .systemGray6
        self.textField5.backgroundColor = .systemGray6
        self.textField6.backgroundColor = .systemGray6
        self.textField7.backgroundColor = .systemGray6
        self.textField8.backgroundColor = .systemGray6
        self.textField9.backgroundColor = .systemGray6
        self.textField10.backgroundColor = .systemGray6
        self.textField11.backgroundColor = .systemGray6
        self.textField12.backgroundColor = .systemGray6
        self.textField13.backgroundColor = .systemGray6
        self.textField14.backgroundColor = .systemGray6
        self.textField15.backgroundColor = .systemGray6
        self.textField16.backgroundColor = .systemGray6
        self.textField17.backgroundColor = .systemGray6
        self.textField18.backgroundColor = .systemGray6
        self.textField19.backgroundColor = .systemGray6
        self.textField20.backgroundColor = .systemGray6
        self.textField21.backgroundColor = .systemGray6
        self.textField22.backgroundColor = .systemGray6
        self.textField23.backgroundColor = .systemGray6
        self.textField24.backgroundColor = .systemGray6
        self.textField25.backgroundColor = .systemGray6
        
        textField1.borderStyle = .bezel
        textField2.borderStyle = .bezel
        textField3.borderStyle = .bezel
        textField4.borderStyle = .bezel
        textField5.borderStyle = .bezel
        
        
        self.textField1.tag = 0
        self.textField2.tag = 1
        self.textField3.tag = 2
        self.textField4.tag = 3
        self.textField5.tag = 4
        self.textField6.tag = 5
        self.textField7.tag = 6
        self.textField8.tag = 7
        self.textField9.tag = 8
        self.textField10.tag = 9
        self.textField11.tag = 10
        self.textField12.tag = 11
        self.textField13.tag = 12
        self.textField14.tag = 13
        self.textField15.tag = 14
        self.textField16.tag = 15
        self.textField17.tag = 16
        self.textField18.tag = 17
        self.textField19.tag = 18
        self.textField20.tag = 19
        self.textField21.tag = 20
        self.textField22.tag = 21
        self.textField23.tag = 22
        self.textField24.tag = 23
        self.textField25.tag = 24
        
        
        textField1.delegate = self
        textField2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
        textField5.delegate = self
        textField6.delegate = self
        textField7.delegate = self
        textField8.delegate = self
        textField9.delegate = self
        textField10.delegate = self
        textField11.delegate = self
        textField12.delegate = self
        textField13.delegate = self
        textField14.delegate = self
        textField15.delegate = self
        textField16.delegate = self
        textField17.delegate = self
        textField18.delegate = self
        textField19.delegate = self
        textField20.delegate = self
        textField21.delegate = self
        textField22.delegate = self
        textField23.delegate = self
        textField24.delegate = self
        textField25.delegate = self
        
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        
        add()
        
        scoreLabel.text = "Score: \(0)"
        
        let storedScore = UserDefaults.standard.object(forKey: "highScore")
        
        if storedScore == nil {
            highScore = 0
            highScoreLabel.text = "High Score: \(highScore)"
        }
        
        if let newHighScore = storedScore as? Int{
            highScore = newHighScore
            highScoreLabel.text = "High Score: \(highScore)"
            
        }
        
        resetTextfields()
        
        print(word.map{ String($0) })
        let viewTapGesture = UITapGestureRecognizer(target: self, action: #selector(endedit))
        view.addGestureRecognizer(viewTapGesture)
    }
    @objc func endedit () {
        view.endEditing(true)
    }
    func randomWord () {
        
        let random = Int(arc4random_uniform(UInt32(wordle.count - 1)))
        
        word = wordle[random]
    }
    
    @objc func countDown() {
        
        counter += 1
        
        timeLabel.text = ("Time: \(counter)")
        
        if textField1.backgroundColor == .green && textField2.backgroundColor == .green && textField3.backgroundColor == .green && textField4.backgroundColor == .green && textField5.backgroundColor == .green {
            timeLabel.text = "Mükemmel !!"
        }else if textField6.backgroundColor == .green && textField7.backgroundColor == .green && textField8.backgroundColor == .green && textField9.backgroundColor == .green && textField10.backgroundColor == .green {
            timeLabel.text = "Süper !"
        }else if textField11.backgroundColor == .green && textField12.backgroundColor == .green && textField13.backgroundColor == .green && textField14.backgroundColor == .green && textField15.backgroundColor == .green {
            timeLabel.text = "Harika"
        }else if textField16.backgroundColor == .green && textField17.backgroundColor == .green && textField18.backgroundColor == .green && textField19.backgroundColor == .green && textField20.backgroundColor == .green {
            timeLabel.text = "Başardın"
        }else if textField21.backgroundColor == .green && textField22.backgroundColor == .green && textField23.backgroundColor == .green && textField24.backgroundColor == .green && textField25.backgroundColor == .green {
            timeLabel.text = "Sonunda :)"
        }
    }
    
    func add() {
        wordle.removeAll(keepingCapacity: false)
        wordle.append("KİTAP")
        wordle.append("KALEM")
        wordle.append("DURUM")
        wordle.append("MERVE")
    }
    
    func win () {
        if textField1.backgroundColor == .green && textField2.backgroundColor == .green && textField3.backgroundColor == .green && textField4.backgroundColor == .green && textField5.backgroundColor == .green {
            
            let alertController = UIAlertController(title: "DOĞRU !", message: "Sıradaki kelime ?", preferredStyle: UIAlertController.Style.alert)
            let alertAction = UIAlertAction(title: "Evet", style: UIAlertAction.Style.default) { UIAlertAction in
                
                self.scoreLabel.text = "Score: \(self.score)"
                if self.score > self.highScore {
                    self.highScore = self.score
                    self.highScoreLabel.text = "High Score: \(self.highScore)"
                    UserDefaults.standard.set(self.highScore, forKey: "highScore")
                }
                
                self.randomWord()
                
                self.counter = 0
                
                self.resetTextfields()
                
                self.textField1.backgroundColor = .systemGray6
                self.textField2.backgroundColor = .systemGray6
                self.textField3.backgroundColor = .systemGray6
                self.textField4.backgroundColor = .systemGray6
                self.textField5.backgroundColor = .systemGray6
                
                self.textField1.text = ""
                self.textField2.text = ""
                self.textField3.text = ""
                self.textField4.text = ""
                self.textField5.text = ""
                
            }
            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    func win2 () {
        if textField6.backgroundColor == .green && textField7.backgroundColor == .green && textField8.backgroundColor == .green && textField9.backgroundColor == .green && textField10.backgroundColor == .green {
            
            let alertController = UIAlertController(title: "DOĞRU !", message: "Sıradaki kelime ?", preferredStyle: UIAlertController.Style.alert)
            let alertAction = UIAlertAction(title: "Evet", style: UIAlertAction.Style.default) { UIAlertAction in
                
                self.scoreLabel.text = "Score: \(self.score)"
                if self.score > self.highScore {
                    self.highScore = self.score
                    self.highScoreLabel.text = "High Score: \(self.highScore)"
                    UserDefaults.standard.set(self.highScore, forKey: "highScore")
                }
                
                self.randomWord()
                
                self.counter = 0
                
                self.resetTextfields()
                
                
                
                self.textField1.backgroundColor = .systemGray6
                self.textField2.backgroundColor = .systemGray6
                self.textField3.backgroundColor = .systemGray6
                self.textField4.backgroundColor = .systemGray6
                self.textField5.backgroundColor = .systemGray6
                self.textField6.backgroundColor = .systemGray6
                self.textField7.backgroundColor = .systemGray6
                self.textField8.backgroundColor = .systemGray6
                self.textField9.backgroundColor = .systemGray6
                self.textField10.backgroundColor = .systemGray6
                
                self.textField1.text = ""
                self.textField2.text = ""
                self.textField3.text = ""
                self.textField4.text = ""
                self.textField5.text = ""
                self.textField6.text = ""
                self.textField7.text = ""
                self.textField8.text = ""
                self.textField9.text = ""
                self.textField10.text = ""
                
            }
            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    func win3() {
        if textField11.backgroundColor == .green && textField12.backgroundColor == .green && textField13.backgroundColor == .green && textField14.backgroundColor == .green && textField15.backgroundColor == .green {
            
            let alertController = UIAlertController(title: "DOĞRU !", message: "Sıradaki kelime ?", preferredStyle: UIAlertController.Style.alert)
            let alertAction = UIAlertAction(title: "Evet", style: UIAlertAction.Style.default) { UIAlertAction in
                
                self.scoreLabel.text = "Score: \(self.score)"
                if self.score > self.highScore {
                    self.highScore = self.score
                    self.highScoreLabel.text = "High Score: \(self.highScore)"
                    UserDefaults.standard.set(self.highScore, forKey: "highScore")
                }
                
                self.randomWord()
                
                self.counter = 0
                
                self.resetTextfields()
                
                self.textField1.backgroundColor = .systemGray6
                self.textField2.backgroundColor = .systemGray6
                self.textField3.backgroundColor = .systemGray6
                self.textField4.backgroundColor = .systemGray6
                self.textField5.backgroundColor = .systemGray6
                self.textField6.backgroundColor = .systemGray6
                self.textField7.backgroundColor = .systemGray6
                self.textField8.backgroundColor = .systemGray6
                self.textField9.backgroundColor = .systemGray6
                self.textField10.backgroundColor = .systemGray6
                self.textField11.backgroundColor = .systemGray6
                self.textField12.backgroundColor = .systemGray6
                self.textField13.backgroundColor = .systemGray6
                self.textField14.backgroundColor = .systemGray6
                self.textField15.backgroundColor = .systemGray6
                
                self.textField1.text = ""
                self.textField2.text = ""
                self.textField3.text = ""
                self.textField4.text = ""
                self.textField5.text = ""
                self.textField6.text = ""
                self.textField7.text = ""
                self.textField8.text = ""
                self.textField9.text = ""
                self.textField10.text = ""
                self.textField11.text = ""
                self.textField12.text = ""
                self.textField13.text = ""
                self.textField14.text = ""
                self.textField15.text = ""
                
            }
            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    func win4() {
        if textField16.backgroundColor == .green && textField17.backgroundColor == .green && textField18.backgroundColor == .green && textField19.backgroundColor == .green && textField20.backgroundColor == .green {
            
            let alertController = UIAlertController(title: "DOĞRU !", message: "Sıradaki kelime ?", preferredStyle: UIAlertController.Style.alert)
            let alertAction = UIAlertAction(title: "Evet", style: UIAlertAction.Style.default) { UIAlertAction in
                
                self.scoreLabel.text = "Score: \(self.score)"
                if self.score > self.highScore {
                    self.highScore = self.score
                    self.highScoreLabel.text = "High Score: \(self.highScore)"
                    UserDefaults.standard.set(self.highScore, forKey: "highScore")
                }
                
                
                self.randomWord()
                
                self.counter = 0
                
                self.resetTextfields()
                
                self.textField1.backgroundColor = .systemGray6
                self.textField2.backgroundColor = .systemGray6
                self.textField3.backgroundColor = .systemGray6
                self.textField4.backgroundColor = .systemGray6
                self.textField5.backgroundColor = .systemGray6
                self.textField6.backgroundColor = .systemGray6
                self.textField7.backgroundColor = .systemGray6
                self.textField8.backgroundColor = .systemGray6
                self.textField9.backgroundColor = .systemGray6
                self.textField10.backgroundColor = .systemGray6
                self.textField11.backgroundColor = .systemGray6
                self.textField12.backgroundColor = .systemGray6
                self.textField13.backgroundColor = .systemGray6
                self.textField14.backgroundColor = .systemGray6
                self.textField15.backgroundColor = .systemGray6
                self.textField16.backgroundColor = .systemGray6
                self.textField17.backgroundColor = .systemGray6
                self.textField18.backgroundColor = .systemGray6
                self.textField19.backgroundColor = .systemGray6
                self.textField20.backgroundColor = .systemGray6
                
                self.textField1.text = ""
                self.textField2.text = ""
                self.textField3.text = ""
                self.textField4.text = ""
                self.textField5.text = ""
                self.textField6.text = ""
                self.textField7.text = ""
                self.textField8.text = ""
                self.textField9.text = ""
                self.textField10.text = ""
                self.textField11.text = ""
                self.textField12.text = ""
                self.textField13.text = ""
                self.textField14.text = ""
                self.textField15.text = ""
                self.textField16.text = ""
                self.textField17.text = ""
                self.textField18.text = ""
                self.textField19.text = ""
                self.textField20.text = ""
                
            }
            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    func win5() {
        if textField21.backgroundColor == .green && textField22.backgroundColor == .green && textField23.backgroundColor == .green && textField24.backgroundColor == .green && textField25.backgroundColor == .green {
            
            let alertController = UIAlertController(title: "DOĞRU !", message: "Sıradaki kelime ?", preferredStyle: UIAlertController.Style.alert)
            let alertAction = UIAlertAction(title: "Evet", style: UIAlertAction.Style.default) { UIAlertAction in
                
                self.scoreLabel.text = "Score: \(self.score)"
                if self.score > self.highScore {
                    self.highScore = self.score
                    self.highScoreLabel.text = "High Score: \(self.highScore)"
                    UserDefaults.standard.set(self.highScore, forKey: "highScore")
                }
                
                self.randomWord()
                
                self.counter = 0
                
                self.resetTextfields()
                
                self.textField1.backgroundColor = .systemGray6
                self.textField2.backgroundColor = .systemGray6
                self.textField3.backgroundColor = .systemGray6
                self.textField4.backgroundColor = .systemGray6
                self.textField5.backgroundColor = .systemGray6
                self.textField6.backgroundColor = .systemGray6
                self.textField7.backgroundColor = .systemGray6
                self.textField8.backgroundColor = .systemGray6
                self.textField9.backgroundColor = .systemGray6
                self.textField10.backgroundColor = .systemGray6
                self.textField11.backgroundColor = .systemGray6
                self.textField12.backgroundColor = .systemGray6
                self.textField13.backgroundColor = .systemGray6
                self.textField14.backgroundColor = .systemGray6
                self.textField15.backgroundColor = .systemGray6
                self.textField16.backgroundColor = .systemGray6
                self.textField17.backgroundColor = .systemGray6
                self.textField18.backgroundColor = .systemGray6
                self.textField19.backgroundColor = .systemGray6
                self.textField20.backgroundColor = .systemGray6
                self.textField21.backgroundColor = .systemGray6
                self.textField22.backgroundColor = .systemGray6
                self.textField23.backgroundColor = .systemGray6
                self.textField24.backgroundColor = .systemGray6
                self.textField25.backgroundColor = .systemGray6
                
                self.textField1.text = ""
                self.textField2.text = ""
                self.textField3.text = ""
                self.textField4.text = ""
                self.textField5.text = ""
                self.textField6.text = ""
                self.textField7.text = ""
                self.textField8.text = ""
                self.textField9.text = ""
                self.textField10.text = ""
                self.textField11.text = ""
                self.textField12.text = ""
                self.textField13.text = ""
                self.textField14.text = ""
                self.textField15.text = ""
                self.textField16.text = ""
                self.textField17.text = ""
                self.textField18.text = ""
                self.textField19.text = ""
                self.textField20.text = ""
                self.textField21.text = ""
                self.textField22.text = ""
                self.textField23.text = ""
                self.textField24.text = ""
                self.textField25.text = ""
                
            }
            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    private let allowedCharacters = CharacterSet(charactersIn: "ABCDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ")
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (textField.text?.count ?? 0) - range.length + string.count > 1 {
            
            self.tagBasedTextField(textField)
            textField.autocorrectionType = .no
            return false
        }
        
        return allowedCharacters.isSuperset(of: CharacterSet(charactersIn: string))
    }
    
    private func tagBasedTextField(_ textField: UITextField) {
        let nextTextFieldTag = textField.tag + 1
        
        if let nextTextField = textField.superview?.viewWithTag(nextTextFieldTag) as? UITextField {
            nextTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
    }
    
    func resetTextfields () {
        
        randomWord()
        
        textField1.isEnabled = true
        textField2.isEnabled = true
        textField3.isEnabled = true
        textField4.isEnabled = true
        textField5.isEnabled = true
        textField6.isEnabled = false
        textField7.isEnabled = false
        textField8.isEnabled = false
        textField9.isEnabled = false
        textField10.isEnabled = false
        textField11.isEnabled = false
        textField12.isEnabled = false
        textField13.isEnabled = false
        textField14.isEnabled = false
        textField15.isEnabled = false
        textField16.isEnabled = false
        textField17.isEnabled = false
        textField18.isEnabled = false
        textField19.isEnabled = false
        textField20.isEnabled = false
        textField21.isEnabled = false
        textField22.isEnabled = false
        textField23.isEnabled = false
        textField24.isEnabled = false
        textField25.isEnabled = false
    }
}
