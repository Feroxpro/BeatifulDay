//
//  PokeCollectionViewCellScreen.swift
//  PokedexProject
//
//  Created by Felipe Domingos on 10/12/22.
//

import UIKit
import SnapKit

class HomeCollectionViewCell: BaseViewCell {
    
    
    
    
    lazy var serviceView: UIView = {
        let img = UIView()
        img.layer.cornerRadius = 10
//        img.layer.masksToBounds = true
        img.backgroundColor = .cyan
        return img
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 19)
        return label
    }()
    
    lazy var specialtiesLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 19)
        return label
    }()
    
    lazy var profileImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.layer.masksToBounds = true
        return image
    }()

    
    override func addSubviews() {
        addSubview(serviceView)
    }
    
    override func configureConstraints() {
        serviceView.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(25)
            make.verticalEdges.equalToSuperview()

        }
    }
}

