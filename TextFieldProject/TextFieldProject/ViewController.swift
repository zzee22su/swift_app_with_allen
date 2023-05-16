//
//  ViewController.swift
//  TextFieldProject
//
//  Created by zzee22su on 2023/05/15.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        setup()
    }
    
    func setup() {
        view.backgroundColor = UIColor.gray
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.placeholder = "이메일 입력"
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        textField.returnKeyType = .next
        
        textField.becomeFirstResponder() //제일 먼저 응답할 수 있는 객체 -> 앱 실행 시, textField를 제일 먼저 응답할 수 있는 객체가 되도록 설정 -> 제일 먼저 키보드를 올라오게 하기 위함.
    }
    
    //화면의 탭을 감지하는 메서드
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true) //뷰 전체에
        //textField.resignFirstResponder() //텍스트 필드에 한해서만
    }
    
    //텍스트필드의 입력을 시작할 때 호출하는 함수(시작할지 말지의 여부를 허락하는 것)
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function) //함수의 이름을 출력
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function) //함수의 이름을 출력
        print("유저가 텍스트필드의 입력을 시작했다")
    }

    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function) //함수의 이름을 출력
        return true
    }
    
    //텍스트필드 글자 내용이 (한글자씩) 입력되거나 지워질 때 호출 된다. (허락)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(#function) //함수의 이름을 출력
        print(string)
        
        if Int(string) != nil {
            return false
        } else {
            guard let text = textField.text else { return true}
            let newLength = text.count + string.count - range.length
            return newLength <= 10
        }
    }
    
    //텍스트필드의 엔터키가 눌러지면 다음 동작을 허락할 것인지 말 것인지
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function) //함수의 이름을 출력
        
        if textField.text == "" {
            textField.placeholder = "입력해주세요."
            return false
        } else {
            return true
        }
    }
    
    //텍스트필드의 입력이 끝날 때 호출(끝날지 말지 허락)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function) //함수의 이름을 출력
        return true
    }
    
    //텍스트필드의 입력이 실제 끝났을 때 호출(시점)
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function) //함수의 이름을 출력
        print("유저가 텍스트필드의 입력을 끝냈다")
        textField.text = ""
    }
    
    @IBAction func doneBtnTapped(_ sender: UIButton) {
        textField.resignFirstResponder() //done 클릭 시, 키보드를 내려가게 함.
    }
    
}

