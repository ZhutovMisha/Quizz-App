//
//  QuizzCollectionViewCell.swift
//  Quizz App
//
//  Created by Brad on 7/19/22.
//

import UIKit

enum selectedOption {
case optionA
case optionB
case optionC
case optionD
}
                            

class QuizzCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var optionOneLbl: UILabel!
    @IBOutlet weak var optionTwoLbl: UILabel!
    
    @IBOutlet weak var optionThreeLbl: UILabel!
    
    @IBOutlet weak var optionFourLbl: UILabel!
    
    private var correctAnswer: String?

    override func prepareForReuse() {
        updateBorder(myView: optionA)
        updateBorder(myView: optionB)
        updateBorder(myView: optionC)
        updateBorder(myView: optionD)

    }
    
    var setQuestions : Questions?{
        didSet{
            
            questionLbl.text = setQuestions?.question
            optionOneLbl.text = setQuestions?.option_1
            optionTwoLbl.text = setQuestions?.option_2
            optionThreeLbl.text = setQuestions?.option_3
            optionFourLbl.text = setQuestions?.option_4
            correctAnswer = setQuestions?.correct_answer
        }
    }
    
    //MARK: - Action
    
    @IBOutlet weak var optionA: UIControl!
    
    @IBOutlet weak var optionB: UIControl!
    
    @IBOutlet weak var optionC: UIControl!
    
    @IBOutlet weak var optionD: UIControl!
    
    var selectedOption: ((_ selectedAnswer: Bool) -> Void)?
        
        @IBAction func pressedOptionA(_ sender: Any) {
            var isCorrect = false
            
            if correctAnswer == setQuestions?.option_1 {
                isCorrect = true
            }
            selectedOption?(isCorrect)
            changeBorder(selectedOption: .optionA)
        }
        
        @IBAction func pressedOptionB(_ sender: Any) {
            var isCorrect = false
            
            if correctAnswer == setQuestions?.option_2 {
                isCorrect = true
            }
            selectedOption?(isCorrect)
            changeBorder(selectedOption: .optionB)
        }
        
        @IBAction func pressedOptionC(_ sender: Any) {
            var isCorrect = false
            
            if correctAnswer == setQuestions?.option_3 {
                isCorrect = true
            }
            selectedOption?(isCorrect)
            changeBorder(selectedOption: .optionC)
        }
        
        @IBAction func pressedOptionD(_ sender: Any) {
            var isCorrect = false
            
            if correctAnswer == setQuestions?.option_4 {
                isCorrect = true
            }
            selectedOption?(isCorrect)
            changeBorder(selectedOption: .optionD)
        }
    func changeBorder(selectedOption: selectedOption) {
            switch selectedOption {
            case .optionA:
                updateBorder(myView: optionA, borderWidth: 4)
                updateBorder(myView: optionB)
                updateBorder(myView: optionC)
                updateBorder(myView: optionD)
            case .optionB:
                updateBorder(myView: optionB, borderWidth: 4)
                updateBorder(myView: optionA)
                updateBorder(myView: optionC)
                updateBorder(myView: optionD)
            case .optionC:
                updateBorder(myView: optionC, borderWidth: 4)
                updateBorder(myView: optionB)
                updateBorder(myView: optionA)
                updateBorder(myView: optionD)
            case .optionD:
                updateBorder(myView: optionD, borderWidth: 4)
                updateBorder(myView: optionB)
                updateBorder(myView: optionC)
                updateBorder(myView: optionA)
            }
        }
        
        func updateBorder(myView: UIView, borderWidth: CGFloat = 0) {
            myView.layer.borderWidth = borderWidth
            myView.layer.borderColor = UIColor.white.cgColor
        }
    
    }
