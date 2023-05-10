

//
//  ViewController.swift
//  CityPrototype
//
//  Created by Robby Blakemore on 2/22/23.


//EMAIL RESOURCE: https://www.hackingwithswift.com/example-code/uikit/how-to-send-an-email
//

import MessageUI;


import UIKit

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendEmailAction(_ sender: Any) {
        sendEmail()
    }
    
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            print("entering email")
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["robby.blakemore@carrolltoncityschools.net"])
            mail.setMessageBody("<p>You're so awesome!</p>", isHTML: true)

            present(mail, animated: true)
        } else {
            // show failure alert
            print("email failed")
        }
    }

    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
    

}

