//
//  SchedulingScreenView.swift
//  BeatifulDay
//
//  Created by Felipe Domingos on 21/03/23.
//
    import UIKit
    import SnapKit
    import FSCalendar

class SchedulingScreenView: UIView {
        
        lazy var logoImage: UIImageView = {
            let img = UIImageView()
            img.image = UIImage(named: "logo BD")
            return img
        }()
        
        lazy var calendar: FSCalendar = {
            let calendar = FSCalendar()
            calendar.backgroundColor = .white
            return calendar
        }()
        
        
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            configSubViews()
            setupConstraints()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func configSubViews() {
            addSubview(logoImage)
            addSubview(calendar)
            
        }
        
        func setupConstraints() {
            logoImage.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalToSuperview().offset(60)
                make.width.equalTo(200)
                make.height.equalTo(125)
            }
            
            calendar.snp.makeConstraints { make in
                make.center.equalToSuperview()
                make.width.equalTo(320)
                make.height.equalTo(300)
            }
        }
    }
