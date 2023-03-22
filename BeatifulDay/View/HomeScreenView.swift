//
//  HomeScreenView.swift
//  BeatifulDay
//
//  Created by Felipe Domingos on 21/03/23.
//

import UIKit
import SnapKit

class HomeScreenView: UIView, UISearchBarDelegate {
    
    lazy var logoImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "logo BD")
        return img
    }()
    
    lazy var searchPoke: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.searchBarStyle = UISearchBar.Style.prominent
        searchBar.placeholder = " Search..."
        searchBar.isTranslucent = false
        searchBar.backgroundImage = UIImage()
        searchBar.backgroundColor = .black
        return searchBar
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .white
        collectionView.delaysContentTouches = false
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .vertical
        collectionView.setCollectionViewLayout(layout, animated: false)
        collectionView.register(PokeCollectionViewCell.self, forCellWithReuseIdentifier: PokeCollectionViewCell.indentifier)
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configSubViews()
        setupContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource){
        self.collectionView.delegate = delegate
        self.collectionView.dataSource = dataSource
    }
    
    public func configProtocolsSearchBar(delegate: UISearchBarDelegate) {
        searchPoke.delegate = delegate
    }
    

    
    private func configSubViews() {
        addSubview(searchPoke)
        addSubview(logoImage)
        addSubview(collectionView)
        
    }
    
    private func setupContraints() {
        
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(60)
            make.width.equalTo(200)
            make.height.equalTo(125)
        }
        
        searchPoke.snp.makeConstraints{ (make) in
            make.top.equalTo(self.logoImage.snp.bottom).offset(5)
            make.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).inset(20)
            make.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(20)
        }
        
        collectionView.snp.makeConstraints { (make) in
            make.top.equalTo(self.searchPoke.snp.bottom).offset(10)
            make.trailing.equalTo(self.safeAreaLayoutGuide.snp.trailing).inset(18)
            make.leading.equalTo(self.safeAreaLayoutGuide.snp.leading).offset(18)
            make.bottom.equalTo(self.safeAreaLayoutGuide.snp.bottom)
        }
    }
}
