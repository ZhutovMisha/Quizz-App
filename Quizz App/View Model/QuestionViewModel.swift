//
//  QuestionViewModel.swift
//  Quizz App
//
//  Created by Brad on 7/18/22.
//

import Foundation


class QuestionViewModel {
    
    private var sourseURL = URL(string: "https://quiz-68112-default-rtdb.firebaseio.com/quiz.json")
    var questionModel : DataModel?
    
    func getAllTheQuestion(completion : @escaping() -> ()){
        URLSession.shared.dataTask(with: sourseURL!) { [weak self] (data, response, error) in
            do{
            guard let data = data else { return }
            let decoder = JSONDecoder()
            let allData = try decoder.decode(DataModel.self, from: data)
                self?.questionModel = allData
                print(allData)
            completion()
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
    }
}
