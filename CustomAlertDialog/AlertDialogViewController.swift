//
//  AlertDialogViewController.swift
//  CustomAlertDialog
//
//  Created by masco bazar on 2/2/22.
//

import UIKit
import YYCalendar

protocol AlertDialogDelegate {
    func saveBtnTapped(from: String, to: String)
}

class AlertDialogViewController: UIViewController {

    @IBOutlet weak var fromTxt: UIButton!
    @IBOutlet weak var toTxt: UIButton!
    var delegate:AlertDialogDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func fromBtn(_ sender: Any) {
        
        let currentDate = Date()
         let dateFormatter = DateFormatter()
         dateFormatter.dateFormat = "yyyy-MM-dd"
         
         let calendar = YYCalendar(normalCalendarLangType: .ENG3,
                                   date: dateFormatter.string(from: currentDate),
                                           format: "yyyy-MM-dd") { [weak self] date in
        
            self?.fromTxt.setTitle(date, for: .normal)
         }
            calendar.sundayColor = UIColor.gray
            calendar.defaultDayColor = UIColor.gray
            calendar.saturdayColor = UIColor.gray
            
            calendar.show()
    
    }
    
    @IBAction func toBtn(_ sender: Any) {
        
        let currentDate = Date()
         let dateFormatter = DateFormatter()
         dateFormatter.dateFormat = "yyyy-MM-dd"
         
         let calendar = YYCalendar(normalCalendarLangType: .ENG3,
                                   date: dateFormatter.string(from: currentDate),
                                           format: "yyyy-MM-dd") { [weak self] date in
        
            self?.toTxt.setTitle(date, for: .normal)
         }
            calendar.sundayColor = UIColor.gray
            calendar.defaultDayColor = UIColor.gray
            calendar.saturdayColor = UIColor.gray
            
            calendar.show()
    }
    
    @IBAction func saveBtn(_ sender: Any) {
        delegate?.saveBtnTapped(from: (fromTxt.titleLabel?.text)!,to: (toTxt.titleLabel?.text)!)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
