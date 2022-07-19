//
//  ViewController.swift
//  Quizz App
//
//  Created by Brad on 7/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var viewModel = QuestionViewModel()
    var questionData : DataModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        let nibName = String(describing: CustomTableViewCell.self)
        tableView.register(UINib(nibName: nibName, bundle: nil), forCellReuseIdentifier: nibName)
        
        viewModel.getAllTheQuestion { [weak self ] in
            self?.questionData = self?.viewModel.questionModel
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
            
        }
        // Do any additional setup after loading the view.
    }

}


extension ViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questionData?.data?.questions?.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.identifier) as? CustomTableViewCell else  { return UITableViewCell() }
        let item = questionData?.data?.questions?[indexPath.row]
        
        cell.textLabel?.text = item?.question

        return cell 
    }
    
    
    
}
