//
//  PokeCollectionViewCellScreen.swift
//  PokedexProject
//
//  Created by Felipe Domingos on 10/12/22.
//

import UIKit
import SnapKit

class PokeCollectionViewCell: UICollectionViewCell {
    
    static let indentifier:String = "PokeCollectionViewCell"
    
    
    lazy var pokeView: UIView = {
        let img = UIView()
        img.layer.cornerRadius = 10
        img.layer.masksToBounds = true
        img.backgroundColor = .cyan
        return img
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 19)
        return label
    }()
    
    lazy var pokeImage:UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        configContraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addSubview() {
        addSubview(pokeView)
        pokeView.addSubview(pokeImage)
        pokeView.addSubview(nameLabel)
    }
    
    func configContraints() {
        pokeView.snp.makeConstraints{ (make) in
            make.edges.equalToSuperview()
        }
        
        pokeImage.snp.makeConstraints{ (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(pokeView.snp.top).offset(10)
            make.height.equalTo(100)
            make.width.equalTo(80)
        }
        
        nameLabel.snp.makeConstraints{ (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(pokeImage.snp.bottom).offset(10)
        }
    }
}

