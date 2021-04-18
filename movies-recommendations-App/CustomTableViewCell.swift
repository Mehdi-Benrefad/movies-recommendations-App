//
//  CustomTableViewCell.swift
//  movies-recommendations-App
//
//  Created by Mehdi Benrefad on 18/04/2021.
//  Copyright © 2021 Mehdi Benrefad. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var MyCell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        addShadow()
    }
    
    //on cofigure notre vue customisee
    func configure(number: Int, title:String,year:Int){
        
        numberLabel.text=String(number)
        titleLabel.text=title
        subtitleLabel.text=String(year)
    }
    
    private func addShadow() {
        MyCell.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7).cgColor
        MyCell.layer.shadowRadius = 2.0
        MyCell.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        MyCell.layer.shadowOpacity = 2.0
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
