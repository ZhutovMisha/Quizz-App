//
//  ResultsViewController.swift
//  Quizz App
//
//  Created by Brad on 7/19/22.
//

import UIKit

class ResultsViewController: UIViewController {

    var result = 0
    @IBOutlet weak var resultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLbl.text = String(result)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backHomeBtnPressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
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
