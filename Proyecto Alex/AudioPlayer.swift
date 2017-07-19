//
//  File.swift
//  Proyecto Alex
//
//  Created by Alumno on 19/7/17.
//  Copyright © 2017 Alex. All rights reserved.
//

//
//  AudioPlayerVC.swift
//  Audio Player
//
//  Created by Malek T. on 2/22/16.
//  Copyright © 2016 Medigarage Studios LTD. All rights reserved.
//

import UIKit
import AVFoundation

class AudioPlayerVC: UIViewController {
    
    var trackID: Int!
    var audioPlayer:AVAudioPlayer!
    
    @IBOutlet var trackLbl: UILabel!
    
    @IBOutlet var progressView: UIProgressView!
    @IBAction func fastBackward(_ sender: AnyObject) {
        var time: TimeInterval = audioPlayer.currentTime
        time -= 5.0 // Go back by 5 seconds
        if time < 0
        {
            stop(self)
        }else
        {
            audioPlayer.currentTime = time
        }
    }
    @IBAction func pause(_ sender: AnyObject) {
        audioPlayer.pause()
    }
    @IBAction func play(_ sender: AnyObject) {
        if !audioPlayer.isPlaying{
            audioPlayer.play()
        }
    }
    @IBAction func stop(_ sender: AnyObject) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        progressView.progress = 0.0
    }
    @IBAction func fastForward(_ sender: AnyObject) {
        var time: TimeInterval = audioPlayer.currentTime
        time += 5.0 // Go forward by 5 seconds
        if time > audioPlayer.duration
        {
            stop(self)
        }else
        {
            audioPlayer.currentTime = time
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trackLbl.text = "Track \(trackID + 1)"
        // 1
        let path: String! = Bundle.main.resourcePath?.appending("/\(trackID!).mp3")
        let mp3URL = NSURL(fileURLWithPath: path)
        do
        {
            // 2
            audioPlayer = try AVAudioPlayer(contentsOf: mp3URL as URL)
            audioPlayer.play()
            // 3
            Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateAudioProgressView), userInfo: nil, repeats: true)
            progressView.setProgress(Float(audioPlayer.currentTime/audioPlayer.duration), animated: false)
        }
        catch
        {
            print("An error occurred while trying to extract audio file")
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        audioPlayer.stop()
    }
    
    func updateAudioProgressView()
    {
        if audioPlayer.isPlaying
        {
            // Update progress
            progressView.setProgress(Float(audioPlayer.currentTime/audioPlayer.duration), animated: true)
        }
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
