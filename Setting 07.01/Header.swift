//
//  Header.swift
//  Setting 07.01
//
//  Created by mac on 07/01/23.
//

import UIKit

class Header: UITableViewHeaderFooterView {
    
    let label1 = UILabel()
    let label2 = UILabel()
    let img = UIImageView()
    let background = UIView()

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        background.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(background)
        background.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        background.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        background.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        background.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20).isActive = true
        background.backgroundColor = .white
        background.clipsToBounds = true
        background.layer.cornerRadius = 20
        
        img.translatesAutoresizingMaskIntoConstraints = false
        background.addSubview(img)
        img.centerYAnchor.constraint(equalTo: background.centerYAnchor).isActive = true
        img.leftAnchor.constraint(equalTo: background.leftAnchor, constant: 10).isActive = true
        img.heightAnchor.constraint(equalToConstant: 60).isActive = true
        img.widthAnchor.constraint(equalToConstant: 60).isActive = true
        img.image = UIImage(named: "1")
        img.clipsToBounds = true
        img.layer.cornerRadius = 30
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        background.addSubview(label1)
        label1.topAnchor.constraint(equalTo: background.topAnchor, constant: 10).isActive = true
        label1.leftAnchor.constraint(equalTo: img.rightAnchor, constant: 20).isActive = true
        label1.rightAnchor.constraint(equalTo: background.rightAnchor, constant: -10).isActive = true
        label1.text = "Abdusamatov Isroil"
        label1.font = .systemFont(ofSize: 27)
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label2)
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 5).isActive = true
        label2.leftAnchor.constraint(equalTo: img.rightAnchor, constant: 20).isActive = true
        label2.rightAnchor.constraint(equalTo: background.rightAnchor, constant: -10).isActive = true
        label2.bottomAnchor.constraint(equalTo: background.bottomAnchor, constant: -10).isActive = true
        label2.text = "Apple ID, iCloud, Media & Purchases"
        label2.font = .systemFont(ofSize: 15)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
