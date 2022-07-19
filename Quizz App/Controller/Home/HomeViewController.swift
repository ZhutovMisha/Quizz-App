//
//  HomeViewController.swift
//  Quizz App
//
//  Created by Brad on 7/19/22.
//

import UIKit

class HomeViewController: UIViewController {
    

    

    @IBOutlet weak var topicsButton: UIButton!{
        
        didSet{
            topicsButton.layer.cornerRadius = topicsButton.frame.size.height / 2
            
        }
    }
    @IBOutlet weak var platButton: UIButton! {
        
        didSet{
            platButton.layer.cornerRadius = platButton.frame.size.height / 2

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func playButtonPressed(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let identifier = String(describing: QuizzViewController.self)
        guard let  viewContoller = storyBoard.instantiateViewController(withIdentifier: identifier) as? QuizzViewController else { return }
        self.navigationController?.pushViewController(viewContoller, animated: true)
        
    }
    
    @IBAction func topicsButtonPressed(_ sender: Any) {
        
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
