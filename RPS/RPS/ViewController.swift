//
//  ViewController.swift
//  RPS
//
//  Created by 김지수 on 2023/02/23.
//

import UIKit

class ViewController: UIViewController {

    //화면과 연결된 변수
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    @IBOutlet weak var resetBtn: UIButton!
    
    //데이터 저장을 위한 변수
    var myChoice: Rps = Rps.rock
    //Rps(rawValue: Int.random(in: 100))! ->  nil로 반환된다.
    //0~2까지의 범위에서 벗어날 일이 없기 때문에 강제추출을 사용.
    var comChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetBtnTapped(resetBtn)
    }
    
    @IBAction func rpsBtnTapped(_ sender: UIButton) {
        
        //3개의 버튼의 title이 명확하므로
        //옵셔널바인딩 방식이 아닌 (if let/guard let)
        //guard let title = sender.currentTitle else { return }
        //강제추출방식으로(!) 벗겨도 된다.

        let title = sender.currentTitle!
        switch title {
        case "가위":
            myChoice = Rps.scissors
        case "바위":
            myChoice = Rps.rock
        case "보":
            myChoice = Rps.paper
        default:
            //문자열이기 때문에 모든 케이스를 다루고 있지 않다
            // ->꼭 default문을 작성해줘야 한다.
            break
        }
    }
    
    @IBAction func selectBtnTapped(_ sender: UIButton) {
        
        switch comChoice {
        case .rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case .paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case .scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        }
        
        switch myChoice {
        case .rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case .paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case .scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        }
        
        if comChoice == myChoice {
            mainLabel.text = "비겼다"
        } else if comChoice == .rock && myChoice == .paper {
            mainLabel.text = "이겼다"
        } else if comChoice == .paper && myChoice == .scissors {
            mainLabel.text = "이겼다"
        } else if comChoice == .scissors && myChoice == .rock {
            mainLabel.text = "이겼다"
        } else {
            mainLabel.text = "졌다"
        }
    }
    
    @IBAction func resetBtnTapped(_ sender: UIButton) {
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png") //asset 폴더에 있는 이미지 이름으로 세팅
        
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        mainLabel.text = "선택하세요"
        
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
    }
}


