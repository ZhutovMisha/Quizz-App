//
//  File.swift
//  Quizz App
//
//  Created by Brad on 7/19/22.
//

import Foundation
import UIKit


extension QuizzViewController : UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return questions?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = String(describing: QuizzCollectionViewCell.self)
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? QuizzCollectionViewCell else { return UICollectionViewCell() }
        
        return cell
    }
    
    
    
}
