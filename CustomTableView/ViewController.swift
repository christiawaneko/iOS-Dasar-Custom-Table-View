//
//  ViewController.swift
//  CustomTableView
//
//  Created by Christiawan Eko Saputro on 10/10/18.
//  Copyright © 2018 Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var negaraTableView: UITableView!
    
    var bendera : [ String ] = [
        "Bendera-Brunei-Darusalam",
        "bendera-kamboja",
        "Bendera-Indonesia",
        "Bendera-Laos",
        "Bendera-Malaysia",
        "Bendera-Myanmar",
        "Bendera-Filipina",
        "Bendera-Singapura",
        "Bendera-Thailand",
        "Bendera-Timor-Leste",
        "Bendera-Vietnam"
        
    ]
    
    var negara : [ String ] = [
        "Brunei Darusalam",
        "Kamboja",
        "Indonesia",
        "Laos",
        "Malaysia",
        "Myanmar",
        "Filipina",
        "Singapura",
        "Thailand",
        "Timor Leste",
        "Vietnam"
    ]
    
    var deskripsi : [ String ] = [
        "( Member since 1984 )\n Ministry of Education - Brunei Darussalam",
        "( Member since 1968 )\n Ministry of Education, Youth and Sport - Cambodia",
        "( Member since 1965 )\n Ministry of Education and Culture - Indonesia",
        "( Member since 1965 )\n Ministry of Education and Sports - Lao PDR",
        "( Member since 1965 )\n Ministry of Education - Malaysia",
        "( Member since 1998 )\n Ministry of Education - Myanmar",
        "( Member since 1965 )\n Department of Education - Philippines",
        "( Member since 1965 )\n Ministry of Education - Singapore",
        "( Member since 1965 )\n Ministry of Education - Thailand",
        "( Member since 2006 )\n Government of the Democratic Republic of Timor-Leste",
        "( Member since 1992 )\n Ministry of Education and Training - Vietnam"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bendera.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = negaraTableView.dequeueReusableCell(withIdentifier: "dataNegara", for: indexPath) as! TableViewCell
        
        
        cell.imgBendera.image = UIImage(named: bendera[indexPath.row])
        cell.lblNegara.text = negara[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard  = UIStoryboard(name: "Main", bundle: nil)
        let tujuan      = storyboard.instantiateViewController(withIdentifier: "detailNegara") as! DetailViewController

        tujuan.tampungImage     = bendera[indexPath.row]
        tujuan.tampungNegara    = negara[indexPath.row]
        tujuan.tampungDeskripsi = deskripsi[indexPath.row]
        
        
        show(tujuan, sender: self)

        print(negara[indexPath.row])
    }
    

}

