

//
//  MainViewController.swift
//  MyFirstIos
//
//  Created by uuyeong on 12/16/24.
// MainActivity와 같은 역할

import UIKit

class MainViewController: UIViewController {
    let titleLabel : UILabel = {
        let label = UILabel()  //UILabel instance를생성
        label.textColor = .black
        label.textAlignment = .center
        label.text = "메인!"
        label.font = UIFont.boldSystemFont(ofSize: 70)
     
        return label
    }() //선언과 동시에 정의

    //뷰가 생성되었을 때 호출됨.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        view.addSubview(titleLabel) // 생성한 instance를 view에 add
        
        titleLabel.translatesAutoresizingMaskIntoConstraints  = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true //부모 view center에 맞춤
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true //부모 view center에 맞춤
        
     

    }


}

