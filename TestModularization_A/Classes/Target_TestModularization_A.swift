//
//  Target_TestModularization_A.swift
//  Pods-TestModularization_A_Example
//
//  Created by cuicc on 2019/3/8.
//

import UIKit

@objc class Target_TestModularization_A: NSObject {
    @objc func Action_Extension_ViewController(_ params:NSDictionary) -> UIViewController {
        if let callback = params["callback"] as? (String) -> Void {
            callback("Action_Extension_ViewController success")
        }

        let aViewController = ViewController()
        return aViewController
    }
    @objc func Action_Extension_ViewController_Storyboard(_ params:NSDictionary) -> UIViewController {
        if let callback = params["callback"] as? (String) -> Void {
            callback("Action_Extension_ViewController_Storyboard success")
        }

        print("Bundle.allBundles=\(Bundle.allBundles)")
//        let aViewController = UIStoryboard(name: "A_Main", bundle: nil).instantiateInitialViewController()
        var associateBundleURL = Bundle.main.url(forResource: "Frameworks", withExtension: nil)
        associateBundleURL = associateBundleURL?.appendingPathComponent("TestModularization_A")
        associateBundleURL = associateBundleURL?.appendingPathExtension("framework")
        let associateBunle = Bundle(url: associateBundleURL!)
        let aViewController = UIStoryboard(name: "A_Main", bundle: associateBunle).instantiateInitialViewController()



        return aViewController!
    }

    @objc func Action_Category_ViewController(_ params:NSDictionary) -> UIViewController {

        if let block = params["callback"] {

            typealias CallbackType = @convention(block) (NSString) -> Void
            let blockPtr = UnsafeRawPointer(Unmanaged<AnyObject>.passUnretained(block as AnyObject).toOpaque())
            let callback = unsafeBitCast(blockPtr, to: CallbackType.self)

            callback("Action_Category_ViewController success")
        }

        let aViewController = ViewController()
        return aViewController
    }
}
