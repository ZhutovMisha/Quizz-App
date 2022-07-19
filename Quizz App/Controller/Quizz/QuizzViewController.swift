//
//  QuizzViewController.swift
//  Quizz App
//
//  Created by Brad on 7/19/22.
//

import UIKit

class QuizzViewController: UIViewController {
    
    var answerSelected = false
    var isCorrectAnswer = false
    
    var points = 0
    var index = 0
    
    
    
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
        navigationController?.popToRootViewController(animated: true)
        
    }
    @IBAction func nextButtonPressed(_ sender: Any) {
        
        if !answerSelected{

            
        }
        
        if isCorrectAnswer{
            points += 1
            
        }
        
        if index < (self.questions?.count ?? 0) - 1 {
            
            index += 1
            collectionView.scrollToItem(at: IndexPath(row: index, section: 0), at: .right, animated: true)
            
        } else {
            let identifier = String(describing: ResultsViewController.self)
            guard let viewController = Constants.storyBoard.instantiateViewController(withIdentifier: identifier) as? ResultsViewController else { return }
            viewController.result = points
            self.navigationController?.pushViewController(viewController, animated: true)
        }
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
    
}
