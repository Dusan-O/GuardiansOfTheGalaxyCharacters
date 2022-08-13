//
//  BodyLabel.swift
//  GuardiansOfTheGalaxyCharacters
//
//  Created by Dusan Orescanin on 13/08/2022.
//

import UIKit

class BodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        self.font = UIFont(name: "Noteworthy", size: 17)
        self.adjustsFontSizeToFitWidth = true
        self.textAlignment = .justified
        numberOfLines = 0
        textColor = .secondaryLabel
//        let all = UIFont.familyNames
//
//        for font in all {
//            print(font)
//        }
    }

}
