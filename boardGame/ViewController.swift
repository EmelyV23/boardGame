//
//  ViewController.swift
//  boardGame
//
//  Created by Emely Valadez-Bernal on 2/28/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var playerView: UIView!
    @IBOutlet weak var playerTwoView: UIView!
    @IBOutlet weak var playerThreeView: UIView!
    @IBOutlet weak var playerFourView: UIView!
    
    @IBOutlet weak var cardView: UIView!
    
    
    @IBOutlet weak var playerName: UITextField!
    @IBOutlet weak var playerTwoName: UITextField!
    @IBOutlet weak var playerThreeName: UITextField!
    @IBOutlet weak var playerFourName: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewTwo: UIImageView!
    @IBOutlet weak var imageViewThree: UIImageView!
    @IBOutlet weak var imageViewFour: UIImageView!
    
    @IBOutlet weak var textViewOne: UITextView!
    @IBOutlet weak var textViewTwo: UITextView!
    
    
    var counter = -1
    var counterTwo = -1
    var counterThree = -1
    var counterFour = -1
    var counterFive = -1
    var counterSix = -1


    @IBOutlet weak var diceRollImage: UIImageView!
    
    @IBOutlet weak var changeOutlet: UIButton!
    @IBOutlet weak var changeOutlet2: UIButton!
    @IBOutlet weak var changeOutlet3: UIImageView!
    @IBOutlet weak var changeOutlet4: UIButton!
    
    @IBOutlet weak var gameBoardImage: UIImageView!
    
    var meeples = ["pinkTooth","redTooth","greenTooth","blueTooth"]
    var diceImages = ["1","2","3","4","5","6"]
    
    var backgroundMuseAudioPlayer = AVAudioPlayer()
    var flipAudioPlayer = AVAudioPlayer()
    var dingAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var aboutUs: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundSound()
      
    }
    func dingSound() {
            let path = Bundle.main.path(forResource: "ding", ofType: "wav")!
            let url = URL(fileURLWithPath: path)
            do {
                dingAudioPlayer = try AVAudioPlayer(contentsOf: url)
                dingAudioPlayer.play()
            } catch {
                print("there is an issue with the audio")
            }
        }
    
    func flipSound() {
            let path = Bundle.main.path(forResource: "flip", ofType: "wav")!
            let url = URL(fileURLWithPath: path)
            do {
                flipAudioPlayer = try AVAudioPlayer(contentsOf: url)
                flipAudioPlayer.play()
            } catch {
                print("there is an issue with the audio")
            }
        }
    func backgroundSound() {
            let path = Bundle.main.path(forResource: "backgroundMuse", ofType: "mp3")!
            let url = URL(fileURLWithPath: path)
            do {
                backgroundMuseAudioPlayer = try AVAudioPlayer(contentsOf: url)
                backgroundMuseAudioPlayer.play()
            } catch {
                print("there is an issue with the audio")
            }
        }
    
    
    
    
    
    
    
    
    
    
    @IBAction func buttonOne(_ sender: UIButton) {
    flipSound()
        counterFive += 1
        if counterFive == ac.count {
            counterFive = 0
        }
        textViewOne.text = ac[counterFive][1]
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        textViewTwo.text = ac[counterFive][2]

    }
    
    
  

    @IBAction func changeTapped(_ sender: UIButton) {
        
        counter += 1
        if counter == meeples.count{
            counter = 0
        }
        imageView.image = UIImage(named: meeples[counter])
    }
    
    
    
    
    @IBAction func changeTappedTwo(_ sender: UIButton) {
        counterTwo += 1
        if counterTwo == meeples.count{
            counterTwo = 0
        }
        imageViewTwo.image = UIImage(named: meeples[counterTwo])
        
    }
    
    @IBAction func changeTappedThree(_ sender: UIButton) {
        counterThree += 1
        if counterThree == meeples.count{
            counterThree = 0
        }
        imageViewThree.image = UIImage(named: meeples[counterThree])
    }
    @IBAction func changeTappedFour(_ sender: UIButton) {
        counterFour += 1
        if counterFour == meeples.count{
            counterFour = 0
        }
        imageViewFour.image = UIImage(named: meeples[counterFour])
    }
    
    @IBAction func iconPanGest(_ sender: UIPanGestureRecognizer) {
        dingSound()
        let translation = sender.translation(in: self.view)
        if let viewToDrag = sender.view {
            viewToDrag.center = CGPoint(x: viewToDrag.center.x + translation.x, y: viewToDrag.center.y + translation.y)
            sender.setTranslation(CGPoint(x: 0, y: 0), in: viewToDrag)
        }
    }
    
    @IBAction func panGest2(_ sender: UIPanGestureRecognizer) {
        dingSound()
        let translation = sender.translation(in: self.view)
        if let viewToDrag = sender.view {
            viewToDrag.center = CGPoint(x: viewToDrag.center.x + translation.x, y: viewToDrag.center.y + translation.y)
            sender.setTranslation(CGPoint(x: 0, y: 0), in: viewToDrag)
        }
    }
    
    @IBAction func panGest3(_ sender: UIPanGestureRecognizer) {
        dingSound()
        let translation = sender.translation(in: self.view)
        if let viewToDrag = sender.view {
            viewToDrag.center = CGPoint(x: viewToDrag.center.x + translation.x, y: viewToDrag.center.y + translation.y)
            sender.setTranslation(CGPoint(x: 0, y: 0), in: viewToDrag)
        }
    }
    
    @IBAction func panGest4(_ sender: UIPanGestureRecognizer) {
        dingSound()
        let translation = sender.translation(in: self.view)
        if let viewToDrag = sender.view {
            viewToDrag.center = CGPoint(x: viewToDrag.center.x + translation.x, y: viewToDrag.center.y + translation.y)
            sender.setTranslation(CGPoint(x: 0, y: 0), in: viewToDrag)
        }
    }
    
    
    @IBAction func longPress(_ sender: UILongPressGestureRecognizer) {
        changeOutlet.isHidden = false
        playerName.isEnabled = true
    }
    
    @IBAction func longPress2(_ sender: UILongPressGestureRecognizer) {
        changeOutlet.isHidden = false
        playerName.isEnabled = true
    }
    
    @IBAction func longPress3(_ sender: UILongPressGestureRecognizer) {
        changeOutlet.isHidden = false
        playerName.isEnabled = true
    }
    
    @IBAction func longPress4(_ sender: UILongPressGestureRecognizer) {
        changeOutlet.isHidden = false
        playerName.isEnabled = true
    }
    
    
    @IBAction func iconTapGest(_ sender: UITapGestureRecognizer) {
        changeOutlet.isHidden = true
        playerName.isEnabled = false
    }
    
    @IBAction func tapGest2(_ sender: UITapGestureRecognizer) {
        changeOutlet.isHidden = true
        playerName.isEnabled = false
    }
    @IBAction func tapGest3(_ sender: UITapGestureRecognizer) {
        changeOutlet.isHidden = true
        playerName.isEnabled = false
    }
    @IBAction func tapGest4(_ sender: UITapGestureRecognizer) {
        changeOutlet.isHidden = true
        playerName.isEnabled = false
    }
    
    
//    func animate(){
//        imageView.animationImages = animateImages(for: "")
//        imageView.animationImages = images
//        imageView.animationDuration = 3.0
//        imageView.animationRepeatCount = -1
//        imageView.image = imageView.animationImages?.first
//        imageView.startAnimating()
//    }
//    var images = [UIImage]()
//    func animateImages(for name: String)-> [UIImage]{
//        for i in 1...6{
//            let image = UIImage(named: "\(i)")!
//            images.append(image)
//        }
//        return images
//    }
    @IBAction func rollDice(_ sender: UIButton) {
        var random = Int.random(in: 1...6)
        diceRollImage.image = UIImage(named: "\(random)")
    }
    
    @IBAction func onAndOffSound(_ sender: UISwitch) {
        if sender.isOn {
            backgroundMuseAudioPlayer.volume = 0
        }else{
            backgroundMuseAudioPlayer.volume = 1
        }
    }
    
}

