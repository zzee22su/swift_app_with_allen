//
//  ViewController.swift
//  LoginProject
//
//  Created by zzee22su on 2023/06/09.
//

import UIKit

class ViewController: UIViewController {
    
    let emailTextFieldlView: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor.darkGray
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }

    func makeUI() {
        //기존 뷰가 아닌 다른 뷰를 올리기 위해 필요한 명령어
        view.addSubview(emailTextFieldlView)
        
        //자동으로 프레임기준으로 오토레이아웃을 올려주는 기능을 해제 -> 지금은 수동으로 설정해야 되기 때문
        emailTextFieldlView.translatesAutoresizingMaskIntoConstraints = false
        
        //오토레이아웃 잡기
        emailTextFieldlView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        emailTextFieldlView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        emailTextFieldlView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        emailTextFieldlView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }

}

