//
//  ViewController.swift
//  Pods-TestModularization_A_Example
//
//  Created by cuicc on 2019/3/7.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.view.backgroundColor = UIColor.blue


        var associateBundleURL = Bundle.main.url(forResource: "Frameworks", withExtension: nil)
        associateBundleURL = associateBundleURL?.appendingPathComponent("TestModularization_A")
        associateBundleURL = associateBundleURL?.appendingPathExtension("framework")
        let associateBunle = Bundle(url: associateBundleURL!)
        let aViewController = UIStoryboard(name: "A_Main", bundle: associateBunle).instantiateInitialViewController()
        print("aViewController=\(aViewController)")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
