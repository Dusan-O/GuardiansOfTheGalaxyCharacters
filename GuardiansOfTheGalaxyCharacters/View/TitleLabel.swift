//
//  TitleLabel.swift
//  GuardiansOfTheGalaxyCharacters
//
//  Created by Dusan Orescanin on 13/08/2022.
//

import UIKit

class TitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        self.font = UIFont(name: "Noteworthy-Bold", size: 30)
        self.adjustsFontSizeToFitWidth = true
//        let all = UIFont.familyNames
//
//        for font in all {
//            print(font)
//        }
    }

}
