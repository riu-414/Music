//
//  ViewController.swift
//  MyMusic
//
//  Created by 大杉祐弥 on 2022/01/13.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    var cymbalPlayer = AVAudioPlayer()
    
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    var guitarPlayer = AVAudioPlayer()
    
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    var backmusicPlayer = AVAudioPlayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func cymbalButton(_ sender: Any) {
//        do {
//            cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
//            cymbalPlayer.play()
//        } catch {
//            print("シンバルエラー")
//        }
        soundPlayer(player: &cymbalPlayer, path: cymbalPath, count: 0)
    }
    
    @IBAction func guitarButton(_ sender: Any) {
//        do {
//            guitarPlayer = try AVAudioPlayer(contentsOf: guitarPath, fileTypeHint: nil)
//            guitarPlayer.play()
//        } catch {
//            print("ギターエラー")
//        }
        soundPlayer(player: &guitarPlayer, path: guitarPath, count: 0)
    }
    
    
    @IBAction func playButton(_ sender: Any) {
//        do {
//            backmusicPlayer = try AVAudioPlayer(contentsOf: backmusicPath, fileTypeHint: nil)
//            backmusicPlayer.numberOfLoops = -1
//            backmusicPlayer.play()
//        } catch {
//            print("プレイエラー")
//        }
        soundPlayer(player: &backmusicPlayer, path: backmusicPath, count: -1)
    }
    
    @IBAction func stopButton(_ sender: Any) {
        backmusicPlayer.stop()
    }
    
    fileprivate func soundPlayer(player:inout AVAudioPlayer, path: URL, count: Int) {
        do {
            player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
            player.numberOfLoops = count
            player.play()
        } catch {
            print("エラー")
        }
    }
    
}

