//
//  ViewController.swift
//  HapticFeedback
//
//  Created by mac on 22/03/21.
//  Copyright © 2021 mac. All rights reserved.
//



import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var intensitySlider: UISlider!
    @IBOutlet weak var intensityLbl: UILabel!
    
    
   let notificationGenerator = UINotificationFeedbackGenerator() // 1
   
    var isIntensityChanged = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    
     // MARK:- UINotificationFeedbackGenerator
    //==========================
    @IBAction func errorAction(_ sender: Any) {
        notificationGenerator.notificationOccurred(.error)
    }
    
    @IBAction func successAction(_ sender: Any) {
         notificationGenerator.notificationOccurred(.success)
    }
    
    @IBAction func warningAction(_ sender: Any) {
        notificationGenerator.notificationOccurred(.warning)
    }
   //=============================
    
    
    
    
    
    
    
    
    
    
    
    
    
    // MARK:- UIImpactFeedbackGenerator
    //=======================
    @IBAction func lightAction(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .light)
       
        if self.isIntensityChanged{
            generator.impactOccurred(intensity: CGFloat(intensitySlider.value))
        }
        else{
            generator.impactOccurred()
        }
        
    }
    
    @IBAction func mediumAction(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        if self.isIntensityChanged{
            generator.impactOccurred(intensity: CGFloat(intensitySlider.value))
        }
        else{
            generator.impactOccurred()
        }
    }
    
    
    @IBAction func heavyAction(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        if self.isIntensityChanged{
            generator.impactOccurred(intensity: CGFloat(intensitySlider.value))
        }
        else{
            generator.impactOccurred()
        }
    }
    
    @IBAction func softAction(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .soft)
        if self.isIntensityChanged{
            generator.impactOccurred(intensity: CGFloat(intensitySlider.value))
        }
        else{
            generator.impactOccurred()
        }
    }
    
    
    @IBAction func rigidAction(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .rigid)
        if self.isIntensityChanged{
            generator.impactOccurred(intensity: CGFloat(intensitySlider.value))
        }
        else{
            generator.impactOccurred()
        }
    }
    //======================
    
    
    
    
    
    
    
    
    
    
    
    // MARK:- UISelectionFeedbackGenerator
    @IBAction func selectionChangedAction(_ sender: Any) {
        let generator = UISelectionFeedbackGenerator()
        generator.selectionChanged()
    }
    //=================================
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func startSlider(_ sender: UISlider) {
        self.intensityLbl.text = "Change intensity of UIImpactFeedbackGenerator \n" + "\(intensitySlider.value)"
    }
    
    @IBAction func infoAction(_ sender: Any) {
        
        let alert = UIAlertController(title: "Alert", message: "Only work in real iPhone\nRun this project in your real iPhone then you will feel the response of Haptic Feedback.", preferredStyle: .alert)
        
      
        let ok = UIAlertAction(title: "Got It", style: .cancel, handler: nil)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
}
