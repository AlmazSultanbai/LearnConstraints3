//
//  FourthViewController.swift
//  LearnConstraints3
//
//  Created by Sultanbai Almaz on 6/3/24.
//

import UIKit

class FourthViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Четвертое окно ураа!!!"
        view.font = .systemFont(ofSize: 15, weight: .bold)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(titleLabel)
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
