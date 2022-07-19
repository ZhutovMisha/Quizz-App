//
//  QuizzCollectionViewCell.swift
//  Quizz App
//
//  Created by Brad on 7/19/22.
//

import UIKit

class QuizzCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var questionLbl: UILabel!
    
    @IBOutlet weak var optionOneLbl: UILabel!
    @IBOutlet weak var optionTwoLbl: UILabel!
    
    @IBOutlet weak var optionThreeLbl: UILabel!
    
    @IBOutlet weak var optionFourLbl: UILabel!
    
    
    var setQuestions : Questions?{
        didSet{
            
            questionLbl.text = setQuestions?.question
            optionOneLbl.text = setQuestions?.option_1
            optionTwoLbl.text = setQuestions?.option_2
            optionThreeLbl.text = setQuestions?.option_3
            optionFourLbl.text = setQuestions?.option_4
        }
    }
        
    

}

