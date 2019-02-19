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
    
    @IBOutlet weak var seg: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func segBtn(_ sender: Any) {
        
        if seg.selectedSegmentIndex == 0{
            fstName.text = "FirstKey".localizableString(loc: "en")
            lstName.text = "LastKey".localizableString(loc: "en")
            
        }else{
            fstName.text = "FirstKey".localizableString(loc: "bn")
            lstName.text = "LastKey".localizableString(loc: "bn")
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
