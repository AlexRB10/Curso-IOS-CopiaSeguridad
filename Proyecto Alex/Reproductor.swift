//
//  Reproductor.swift
//  Proyecto Alex
//
//  Created by Alumno on 13/7/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit
import AVFoundation

class Reproductor: UIViewController{

    private var audioPlayer: AVAudioPlayer?
    
    @IBOutlet private var nombreCancion: UILabel?
    @IBOutlet private var fotoCancion: UIImageView?
    @IBOutlet private var playPause: UIButton?
    @IBOutlet private var progressView: UIProgressView?
    
    var repoduciendo : Bool = true
    
    var canciones :[Pista] = []
    var marcador = 0;
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        prepararCacnion()
        
        }
    
    @IBAction func play(_ sender: AnyObject){
        if repoduciendo {
            audioPlayer?.pause()
            repoduciendo = false
            playPause?.setImage(#imageLiteral(resourceName: "play"), for: .normal)
        } else {
            audioPlayer?.play()
            repoduciendo = true
            playPause?.setImage(#imageLiteral(resourceName: "pause"), for: .normal)
        }
    }
    
    @IBAction func atras(_ sender: AnyObject){
        moverMarcador(cambiar: -1)
    }
    
    @IBAction func alante(_ sender: AnyObject){
        moverMarcador(cambiar: +1)
    }
    
    
    func moverMarcador(cambiar :Int) {
        if (0 >= (marcador + cambiar)){
            marcador = 0
        } else if (canciones.count <= (marcador + cambiar)) {
            marcador = 0
        } else {
            marcador += cambiar
        }
        prepararCacnion()
        repoduciendo = true
        playPause?.setImage(#imageLiteral(resourceName: "pause"), for: .normal)
    }

    
    
    func prepararCacnion(){
       // var a: String = ((marcador + 1), " - ", canciones[marcador].nombrePista)
        self.nombreCancion?.text = String.init(canciones[marcador].nombrePista)
        
        let imageStr = String.init(format: canciones[marcador].nombreFoto)
        fotoCancion?.image = UIImage.init(named: imageStr)

        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: canciones[marcador].titulo, ofType: "mp3")!)
        
        try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try! AVAudioSession.sharedInstance().setActive(true)
        
        
        try! audioPlayer = AVAudioPlayer(contentsOf: alertSound)
        audioPlayer?.prepareToPlay()
        audioPlayer?.play()
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(barraProgresoAnimacion), userInfo: nil, repeats: true)
        progressView?.setProgress(Float((audioPlayer?.currentTime)!/(audioPlayer?.duration)!), animated: false)
    }
    
    func barraProgresoAnimacion(){
        if (audioPlayer?.isPlaying)!{
            progressView?.setProgress(Float((audioPlayer?.currentTime)!/(audioPlayer?.duration)!), animated: true)
        }
    }
}
