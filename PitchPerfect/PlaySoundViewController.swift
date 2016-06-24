//
//  PlaySoundViewController.swift
//  PitchPerfect
//
//  Created by Wilder Pereira on 13/06/16.
//  Copyright © 2016 Wilder Pereira. All rights reserved.
//

import UIKit

class PlaySoundViewController: UIViewController {
    
    var recordedAudioURL: NSURL!
    @IBOutlet weak var stopButton:UIButton!
    @IBOutlet weak var rabbitButton:UIButton!
    @IBOutlet weak var vaderButton:UIButton!
    @IBOutlet weak var snailButton:UIButton!
    @IBOutlet weak var reverbButton:UIButton!
    @IBOutlet weak var echoButton:UIButton!
    @IBOutlet weak var chipmunkButton:UIButton!

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
