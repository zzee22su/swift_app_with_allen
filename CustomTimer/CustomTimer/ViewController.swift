//
//  ViewController.swift
//  CustomTimer
//
//  Created by zzee22su on 2023/03/08.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    //방법2) 클로저 내부에서 self를 강하게 가르키더라도([self]로 인해)  timer 변수가 약하게
    //weak없이 선언된다면 strong reference cycle이 일어나 메모리가 해제되지 않을 수도 있다 
    weak var timer: Timer?
    
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        mainLabel.text = "초를 선택하세요"
        slider.value = 0.5
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        //slider는 0부터~1까지의 수로 설정이 가능
//        let sec = Int(slider.value * 60)
        number = Int(sender.value * 60)
        mainLabel.text = "\(number) 초"
    }
    
    @IBAction func startBtnTapped(_ sender: UIButton) {
        //invalidate를 하지 않았을 경우, START 버튼을 두번 누르게 되면 타이머가 2개가 세팅되서 동작할 수 있다
        //그래서 기존에 실행되는 타이머를 비활성화 시키는 코드가 필요하다
        timer?.invalidate()
    
        //방법2) 다른 함수를 실행시키는 방법
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(doSomethingAfter1Sec), userInfo: nil, repeats: true)
        
        //방법1) 클로저를 사용하는 방법
/*        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] _ in
            //클로저 내에서 self를 생략하고 싶다면 -> [self]를 한 번만 쓰면 내부에서는 쓰지 않아도 된다
            if number > 0 {
                number -= 1
                slider.value = Float(number) / Float(60)
                mainLabel.text = "\(number) 초"
            } else {
                number = 0
                mainLabel.text = "초를 선택하세요"
                //타이머를 계속 반복하도록 설정해놨기 때문에 (repeats: true)
                //무한대로 반복될 수 있어서 타이머를 죽이는 코드를 넣어줘야 한다
                timer?.invalidate()
                //시스템 사운드
                AudioServicesPlayAlertSound(SystemSoundID(1322))
            }
        }
 */
    }
    
    @objc func doSomethingAfter1Sec() {
        if number > 0 {
            number -= 1
            slider.value = Float(number) / Float(60)
            mainLabel.text = "\(number) 초"
        } else {
            number = 0
            mainLabel.text = "초를 선택하세요"
            //타이머를 계속 반복하도록 설정해놨기 때문에 (repeats: true)
            //무한대로 반복될 수 있어서 타이머를 죽이는 코드를 넣어줘야 한다
            timer?.invalidate()
            //시스템 사운드
            AudioServicesPlayAlertSound(SystemSoundID(1322))
        }
    }
    
    @IBAction func resetBtnTapped(_ sender: UIButton) {
        mainLabel.text = "초를 선택하세요"
        slider.setValue(0.5, animated: true)
        number = 0
        timer?.invalidate()
    }
}

