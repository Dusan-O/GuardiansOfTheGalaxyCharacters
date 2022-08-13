//
//  DetailController.swift
//  GuardiansOfTheGalaxyCharacters
//
//  Created by Dusan Orescanin on 13/08/2022.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var topView: UIImageView!
    @IBOutlet weak var profileView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    var gardian: Gardian?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard gardian != nil else { return }
        setup()


    }
    
    func setup() {
        topView.image = UIImage(named: gardian!.imagePath)
        profileView.image = UIImage(named: gardian!.imagePath)
        nameLbl.text = gardian!.name
        descLbl.text = gardian!.desc
        profileView.layer.cornerRadius = self.profileView.frame.height / 2
        profileView.layer.borderWidth = 2
        profileView.layer.borderColor = UIColor.systemBackground.cgColor
    }


}
