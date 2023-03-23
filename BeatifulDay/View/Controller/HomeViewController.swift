//
//  HomeViewController.swift
//  BeatifulDay
//
//  Created by Felipe Domingos on 21/03/23.
//

import UIKit
import FSCalendar

class HomeViewController: UIViewController {
    
    let homeScreenView = HomeScreenView()
    
    override func loadView() {
        self.view = self.homeScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreenView.configProtocolsCollectionView(delegate: self, dataSource: self)
//        self.homeScreenView.configProtocolsSearchBar(delegate: self)
//        self.homeScreenView.collectionView.delegate = self
//        self.homeScreenView.collectionView.dataSource = self
//        homeScreenView.calendar.delegate = self
    }
    
}

extension HomeViewController:UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 25
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: HomeCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: homeScreenView.identifier, for: indexPath) as? HomeCollectionViewCell
        return cell ?? UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }

}
