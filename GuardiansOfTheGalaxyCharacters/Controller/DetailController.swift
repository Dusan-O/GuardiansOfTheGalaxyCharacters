//
//  DetailController.swift
//  GuardiansOfTheGalaxyCharacters
//
//  Created by Dusan Orescanin on 13/08/2022.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var topView: BannerImageView!
    @IBOutlet weak var profileView: RoundedImageView!
    @IBOutlet weak var nameLbl: TitleLabel!
    @IBOutlet weak var descLbl: BodyLabel!
    
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
        
    }


}
