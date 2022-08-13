//
//  GardianCell.swift
//  GuardiansOfTheGalaxyCharacters
//
//  Created by Dusan Orescanin on 13/08/2022.
//

import UIKit

class GardianCell: UITableViewCell {

    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var nameLbl: TitleLabel!
    
    var gardian: Gardian!
    
    func setupCell(_ gardian: Gardian) {
        self.gardian = gardian
        self.imageV.image = UIImage(named: self.gardian.imagePath)
        self.nameLbl.text = self.gardian.name
    }
    

}
  

