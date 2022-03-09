//
//  ViewController.swift
//  MVVMTestApp
//
//  Created by 강지윤 on 2022/03/09.
//

import UIKit

class ViewController: UIViewController {

    let viewModel = ViewModel()
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var MainImageView: UIImageView!
    
    @IBOutlet weak var TypeLabel: UILabel!
    @IBOutlet weak var FancamURL: UILabel!
    @IBOutlet weak var PreviousButton: UIButton!
    @IBOutlet weak var NextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewModelBinding()
        PreviousButton.addTarget(self, action: #selector(previousButtonAction), for: .touchUpInside)
        NextButton.addTarget(self, action: #selector(nextButtonAction), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    func ViewModelBinding(){
        viewModel.selectedMemeber.bind{ member in
            self.NameLabel.text = member?.name
            self.MainImageView.image = UIImage(named: member?.imageName ?? "")
            self.TypeLabel.text = member?.memberType
        }
    }
    @objc func previousButtonAction(){
        viewModel.tapButton(isPrevious: true)
    }

    @objc func nextButtonAction(){
        viewModel.tapButton(isPrevious: false)
    }
}

