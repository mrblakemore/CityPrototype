//
//  ReportViewController.swift
//  CityPrototype
//
//  Created by Robby Blakemore on 4/30/23.
//
import MessageUI;
import UIKit

class ReportViewController: UIViewController, UINavigationControllerDelegate, MFMailComposeViewControllerDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    

    
    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var lName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet var descriptionTxt: UITextView!
    
    @IBAction func sendEmailAction(_ sender: Any) {
        sendEmail()
    }
    
    @IBOutlet weak var reportType: UIPickerView!
    var reportData: [String] = [String]()

    
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            print("entering email")
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["robby.blakemore@carrolltoncityschools.net"])
            mail.setMessageBody(buildMessage(), isHTML: true)

            present(mail, animated: true)
        } else {
            // show failure alert
            print("email failed")
        }
    }
    
    func buildMessage() -> String
    {
        var formatLocation: String? = location.text
        
        let fullName = "\(self.fName?.text ?? "") \(self.lName?.text ?? "")"
        var stringOutput = "Name: " + fullName + "<br/>"
        stringOutput += "Phone Number: \(self.phoneNumber?.text ?? "")<br/>"
        stringOutput += "Location: \(formatLocation ?? "")<br/>"
        stringOutput += "Description: \(self.descriptionTxt?.text ?? "")<br/>"
        return stringOutput
        
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return reportData[row]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.reportType.delegate = self
        self.reportType.dataSource = self
        
        reportData = ["Item 1", "Item 2", "Item 3"]
        
    }
    
    // Number of columns of data
        func numberOfComponents(in pickerView: UIPickerView) -> Int
     {
            return 1
        }
        
        // The number of rows of data
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return reportData.count
        }
        
        // The data to return fopr the row and component (column) that's being passed in
        func reportView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return reportData[row]
        }
    var reportSubject = ""
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        reportSubject = "test"
    }
    


}
