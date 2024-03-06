//
//  ViewController.swift
//  LearnConstraints3
//
//  Created by Sultanbai Almaz on 6/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "How are you"
        view.font = .systemFont(ofSize: 12, weight: .bold, width: .standard)
        view.textColor = .blue
        view.textAlignment = .center
        view.translatesAutoresizingMaskIntoConstraints = false
        return view //code after return will never be executed
    }()
    
    private lazy var someImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "di")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private lazy var containerStack: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.backgroundColor = .black
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        view.distribution = .fillEqually
        return view
    }()
    
    private lazy var firstContStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.backgroundColor = .gray
        view.distribution = .fillEqually
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var secondContStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.backgroundColor = .darkGray
        view.distribution = .fillEqually
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var firstButton: UIButton = {
        let view = UIButton(type: .system) //  в скобках назначение нажатия кнопки
        view.setTitle("Sights", for: .normal) // дать название кнопки for: .normal неизменна
        view.backgroundColor = .darkGray
        view.addTarget(self, action: #selector(firstButtonTapped(sender: )), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
   
     private lazy var secondButton: UIButton = {
        let view = UIButton(type: .system)
         view.addTarget(self, action: #selector(secondButtonTapped( sender: )), for: .touchUpInside)
        view.setTitle("Food", for: .normal)
        view.backgroundColor = .blue
        return view
    }()
    
    private lazy var thirdButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("thirdButton", for: .normal)
        view.addTarget(self, action: #selector(thirthButtonTapped(sender: )), for: .touchUpInside)
        view.backgroundColor = .lightGray
        return view
    }()
    
    private lazy var fourthButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("fouthButton", for: .normal)
        view.backgroundColor = .black
        view.addTarget(self, action: #selector(fourthButtonTapped(sender: )), for: .touchUpInside)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(titleLabel)
        view.addSubview(someImage)
        view.addSubview(containerStack)
//       view.addSubview(firstContStack)
//        view.addSubview(secondContStack)
//        view.addSubview(secondButton)
        
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        someImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50).isActive = true
        someImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        someImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        someImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        containerStack.topAnchor.constraint(equalTo: someImage.bottomAnchor, constant: 30).isActive = true
        containerStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        containerStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        containerStack.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        containerStack.addArrangedSubview(firstContStack)
        containerStack.addArrangedSubview(secondContStack)
        
        firstContStack.addArrangedSubview(firstButton)
        firstContStack.addArrangedSubview(secondButton)
        
        secondContStack.addArrangedSubview(thirdButton)
        secondContStack.addArrangedSubview(fourthButton)

    }
    
    @objc func firstButtonTapped(sender: UIButton) {
        print( "1")
        let vc = PresentViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func secondButtonTapped(sender: UIButton) {
        print("Go")
        
        let vc = SecondViewController()
        
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func thirthButtonTapped(sender: UIButton){
        print("3")
        let vc = ThirthViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    @objc func fourthButtonTapped(sender: UIButton){
        print("4")
        let vc = FourthViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

