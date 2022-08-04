//
//  ViewController.swift
//  MarimbaCFE
//
//  Created by marco rodriguez on 04/08/22.
//

import UIKit
import AVFoundation //reproducir sonido y videos

class ViewController: UIViewController {
    
    //reproductor
    var reproductor: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    func reproducirNota(_ cualNota: String){
        //variable segura (safe-unwrapp)
        guard let url = Bundle.main.url(forResource: cualNota, withExtension: "mp3") else { return }
        
        do {
            reproductor = try AVAudioPlayer(contentsOf: url)
            reproductor?.play()
        } catch {
            print("Error al reproducir sonido \(error.localizedDescription)")
        }
    }
    
    
   // MARK: - Botones
    
    @IBAction func teclaSeleccionadaBtn(_ sender: UIButton) {
        
        let tituloNota = sender.titleLabel?.text ?? ""
        
        reproducirNota(tituloNota)
        
        //diferenciar un btn de otro
        print(sender.titleLabel?.text ?? "")
        
        
    }
    
    
    
}

