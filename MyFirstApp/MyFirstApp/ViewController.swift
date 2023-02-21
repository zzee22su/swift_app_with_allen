//
//  ViewController.swift
//  MyFirstApp
//
//  Created by zz22eesu on 2023/02/21.
//

import UIKit

class ViewController: UIViewController {

    //InterfaceBuilderOultlet
    @IBOutlet weak var mainLabel: UILabel!

    @IBOutlet weak var myButton: UIButton!
    
    //앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //"반갑습니다"는 화면에 보여주기 위한 초기의 설정
        //"반갑습니다"보다 viewDidLoad()가 나중에 실행되기 때문에 "Hi"로 값이 덮어씌여지는 것
        mainLabel.text = "Hi"
        mainLabel.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
    }

    //InterfaceBuilderAction
    @IBAction func buttonPressed(_ sender: UIButton) {
        mainLabel.text = "안녕하세요"
//        mainLabel.backgroundColor = UIColor.yellow
        mainLabel.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1) //#colorLiteral(
        mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        mainLabel.textAlignment = NSTextAlignment.right
        
        myButton.backgroundColor = UIColor.yellow
        myButton.setTitleColor(.black, for: .normal)
        
        
    }
    
}
