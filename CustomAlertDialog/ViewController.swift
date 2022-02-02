//
//  ViewController.swift
//  CustomAlertDialog
//
//  Created by masco bazar on 2/2/22.
//

import UIKit

class ViewController: UIViewController, AlertDialogDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func saveBtnTapped(from: String, to: String){
        print("---From-----\(from)")
        print("----to----\(to)")
    }
    @IBAction func getDialogBtn(_ sender: Any) {
        
        let alertDialog = self.storyboard?.instantiateViewController(identifier: "AlertDialogViewController") as! AlertDialogViewController
        alertDialog.delegate = self
        alertDialog.modalPresentationStyle = .overCurrentContext
        alertDialog.providesPresentationContextTransitionStyle = true
        alertDialog.definesPresentationContext = true
        alertDialog.modalTransitionStyle = .crossDissolve
        self.present(alertDialog, animated: true, completion: nil);
    }
    
}

