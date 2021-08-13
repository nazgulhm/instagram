//
//  NewsCell.swift
//  instagram
//
//  Created by NAZGUL on 11/8/21.
//

import Foundation
import UIKit
import SnapKit


class NewsCell: UITableViewCell {
    
    private var imageNews: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "flowers")
        view.layer.cornerRadius = 35
        view.backgroundColor = .black
        return view
    }()
    
    
    private lazy var descriptionNews : UILabel = {
        let view = UILabel()
        view .textColor = .black
        view .text = "asan_asanov"
        view.font = UIFont.systemFont(ofSize: 18)
        return view
        
    }()
    
    private  var imageBig: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "girl")
        return view
    }()
    
    private  var imageChat: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "chat")
        return view
    }()
    
    private  var imageLike: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "like")
        return view
    }()
    
    private  var imageMessage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "massage")
        return view
    }()
    private  var imageSave: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "save")
        return view
    }()
    
    private lazy var label : UILabel = {
        let label =  UILabel()
        label.text = "Нравится: 124"
        label.font = .boldSystemFont(ofSize: 16)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        contentView.addSubview(imageNews)
        imageNews.snp.makeConstraints {(make)in
            make.left.equalToSuperview().offset(10)
            make.top.equalToSuperview().offset(10)
            make.width.height.equalTo(70)
        }
        
        contentView.addSubview(descriptionNews)
        descriptionNews.snp.makeConstraints {(make) in
            make.left.equalTo(imageNews.snp.right).offset(20)
            make.top.equalTo(imageNews.snp.bottom).offset(-50)
        }
        contentView.addSubview(imageBig)
        imageBig.snp.makeConstraints {(make)in
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.top.equalTo(imageNews.snp.bottom).offset(10)
            make.height.equalTo(300)
        }
        
        //        let stack = UIStackView()
        //        stack.axis = .horizontal
        //        stack.addArrangedSubview(imageLike)
        //        stack.addArrangedSubview(imageChat)
        //        stack.addArrangedSubview(imageMessage)
        
        contentView.addSubview(imageLike)
        imageLike.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.top.equalTo(imageBig.snp.bottom).offset(10)
        }
        
        
        contentView.addSubview(imageChat)
        imageChat.snp.makeConstraints { make in
            make.left.equalTo(imageLike.snp.right).offset(10)
            make.top.equalTo(imageBig.snp.bottom).offset(10)
        }
        
        contentView.addSubview(imageMessage)
        imageMessage.snp.makeConstraints { make in
            make.left.equalTo(imageChat.snp.right).offset(10)
            make.top.equalTo(imageBig.snp.bottom).offset(1)
        }
        contentView.addSubview(imageSave)
        imageSave.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(15)
            make.top.equalTo(imageBig.snp.bottom).offset(10)
        }
        
        contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.top.equalTo(imageLike.snp.bottom).offset(15)
        }
        
        
    }
}
