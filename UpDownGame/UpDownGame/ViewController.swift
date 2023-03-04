//
//  ViewController.swift
//  UpDownGame
//
//  Created by zzee22su on 2023/03/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var comNumber = Int.random(in: 1...10)
//    var myNumber: Int = 1 //버튼을 누르지 않고 'SELECT' 클릭 시, 버튼에 '0'이 없기 때문에 에러가 날 확률이 있기 때문에 에러방지차원에서 '1'로 저장
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "숫자를 선택하세요"
        numberLabel.text = ""
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        guard let numString = sender.currentTitle else { return }
        numberLabel.text = numString
//        guard let num = Int(numString) else { return }
//        myNumber = num
    }
    
    @IBAction func selecBtnTapped(_ sender: UIButton) {
        //숫자레이블에 있는 문자열 가져오기
        guard let myNumString = numberLabel.text else { return }
        guard let myNumber = Int(myNumString) else { return }

        if comNumber > myNumber {
            mainLabel.text = "Up"
        } else if comNumber < myNumber {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo😆"
        }
    }
    
    
    @IBAction func resetBtnTapped(_ sender: UIButton) {
        mainLabel.text = "숫자를 선택하세요"
        numberLabel.text = ""
        comNumber = Int.random(in: 1...10)
    }
}

