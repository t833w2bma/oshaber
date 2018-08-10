import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapButton(sender: AnyObject) {
        let kotoba1 = ["クマが","サルが","子供が","ネコが","羊が","イカが","アルパカが","ブタが","ロボットが","宇宙人が"]
        let kotoba2 = ["ケーキを","ボールを","消しゴムを","魚を","草を","すみを","石を","トリュフを","ネジを","UFOを"]
        let kotoba3 = ["食べた。","投げた。","拾った。","くわえた。","食べた。","はいた。","けった。","見つけた。","しめた。","なくした。"]
        let a = Int(arc4random_uniform(10))
        print(a)
        let b = Int(arc4random_uniform(10))
        let c = Int(arc4random_uniform(10))
        let kotoba = kotoba1[a] + kotoba2[b] + kotoba3[c]
        label.text = kotoba
      // 1 → 01 に変えるコード
        let d1 = NSString(format: "%02d", a)
      // 画像を入れ替えるコード      画像の名前の一部    01 とか
        img.image=UIImage(named: "802705_" + String(d1))
        
        let speak:AVSpeechSynthesizer = AVSpeechSynthesizer()
        let speech = AVSpeechUtterance(string: kotoba)
        speech.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        speak.speak(speech)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
