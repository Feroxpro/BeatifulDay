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
        self.homeScreenView.configProtocolsSearchBar(delegate: self)
//        homeScreenView.calendar.delegate = self
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        // Lidar com seleção de data
    }

    func calendar(_ calendar: FSCalendar, didDeselect date: Date, at monthPosition: FSCalendarMonthPosition) {
        // Lidar com desseleção de data
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

extension HomeViewController:UICollectionViewDataSource, UICollectionViewDelegate, UISearchBarDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: PokeCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: PokeCollectionViewCell.indentifier, for: indexPath) as? PokeCollectionViewCell
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 80)
    }

}
