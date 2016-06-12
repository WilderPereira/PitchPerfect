//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Wilder Pereira on 10/06/16.
//  Copyright © 2016 Wilder Pereira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordButton: UIButton!

    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var recordingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopButton.enabled = false
    }
    
    override func viewWillAppear(animated: Bool) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func recordAudio(sender: AnyObject) {
        print("Record button was pressed")
        recordingLabel.text = "Recording..."
        stopButton.enabled = true
        recordButton.enabled = false
    }
    @IBAction func stopRecording(sender: AnyObject) {
        recordingLabel.text = "Tap to Record"
        recordButton.enabled = true
    }
}

