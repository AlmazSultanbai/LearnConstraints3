//
//  PresentController.swift
//  LearnConstraints3
//
//  Created by Sultanbai Almaz on 6/3/24.
//

import UIKit

class PresentViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "UIPresent"
        view.font = .systemFont(ofSize: 20, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(titleLabel)
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // Do any additional setup after loading the view.
    }
    
}
