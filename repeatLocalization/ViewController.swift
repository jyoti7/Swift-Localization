//
//  ViewController.swift
//  repeatLocalization
//
//  Created by MD ABDUR RAHMAN on 19/2/19.
//  Copyright © 2019 MD ABDUR RAHMAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fstName: UILabel!
    
    @IBOutlet weak var lstName: UILabel!
    
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var seg: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        fstName.text = "FirstKey".localizableString(loc: "en")
        lstName.text = "LastKey".localizableString(loc: "en")
       address.text = "address".localizableString(loc: "en")
        Description.text = "des".localizableString(loc: "en")
    }

    @IBAction func segBtn(_ sender: Any) {

        if seg.selectedSegmentIndex == 0{
            fstName.text = "FirstKey".localizableString(loc: "en")
            lstName.text = "LastKey".localizableString(loc: "en")
            address.text = "address".localizableString(loc: "en")
            Description.text = "des".localizableString(loc: "en")
        } else if seg.selectedSegmentIndex == 1 {
            fstName.text = "FirstKey".localizableString(loc: "bn")
            lstName.text = "LastKey".localizableString(loc: "bn")
            address.text = "address".localizableString(loc: "bn")
            Description.text = "des".localizableString(loc: "bn")
        } else if seg.selectedSegmentIndex == 2 {
            fstName.text = "FirstKey".localizableString(loc: "ko")
            lstName.text = "LastKey".localizableString(loc: "ko")
            address.text = "address".localizableString(loc: "ko")
            Description.text = "des".localizableString(loc: "ko")
        }else{
            fstName.text = "FirstKey".localizableString(loc: "ar")
            lstName.text = "LastKey".localizableString(loc: "ar")
            address.text = "address".localizableString(loc: "ar")
            Description.text = "des".localizableString(loc: "ar")
        }
    }
    

}

extension String{
    func localizableString(loc:String) -> String {
        let path = Bundle.main.path(forResource: loc, ofType: "lproj")
        let bundle = Bundle(path: path!)
        print(bundle!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
        
        
    }
}
