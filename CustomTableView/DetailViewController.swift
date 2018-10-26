//
//  DetailViewController.swift
//  CustomTableView
//
//  Created by Christiawan Eko Saputro on 10/10/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgNegara: UIImageView!
    @IBOutlet weak var lblNegara: UILabel!
    @IBOutlet weak var txtDeskrispsi: UITextView!
    
    
    var tampungImage : String?
    var tampungNegara  : String?
    var tampungDeskripsi : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgNegara.image     = UIImage(named: tampungImage!)
        lblNegara.text      = tampungNegara
        txtDeskrispsi.text  = tampungDeskripsi
        
    }
    
    
    

}
