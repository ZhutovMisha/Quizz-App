//
//  QuizzViewController.swift
//  Quizz App
//
//  Created by Brad on 7/19/22.
//

import UIKit

class QuizzViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var exitButton: UIButton!{
        didSet{
            //
        }
    }
    var viewModel = QuestionViewModel()
    var questions : [Questions]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
        
        viewModel.getAllTheQuestion { [weak self ] in
            self?.questions = self?.viewModel.questionModel?.data?.questions
            DispatchQueue.main.async {
                self?.collectionView.delegate = self
                self?.collectionView.dataSource = self
                                self?.collectionView.reloadData()
            }
            // Do any additional setup after loading the view.
        }
    }
    @IBAction func exitButtonPressed(_ sender: Any) {
        
    }
    @IBAction func nextButtonPressed(_ sender: Any) {
        
    }
    
    
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            self.navigationController?.navigationBar.isHidden = true

    }
    

}
