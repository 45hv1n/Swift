//
//  ViewController.swift
//  task2.0
//
//  Created by Ashvin Alva on 05/07/23.
//

import UIKit

class ViewController: UIViewController {

    //Outlet for all the components
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userId: UITextField!
    @IBOutlet weak var userDepartment: UITextField!
    @IBOutlet weak var userPhone: UITextField!
    @IBOutlet weak var userAgg: UITextField!
    @IBOutlet weak var userEmail: UITextField!
    
    //Object of the storage class, where all the instance of the students are stored
    var storage = Storage()
    
    @IBAction func SaveBtn(_ sender: Any) {
        
        let secondView = UIStoryboard(name: "Main", bundle: nil)
        let secondController = secondView.instantiateViewController(withIdentifier: "secondControllerView") as! SecondViewController
        
        
        self.present(secondController , animated: true)
        
        storage.addStudentDetails(studentDetail: Storage.StudentDetails(name: userName.text!, id: Int(userId.text!)! , contact: Int( userPhone.text!)!, aggregate: Int(userAgg.text!)!, department: userDepartment.text!, email: userEmail.text!))
        
        print(storage.studentDetailArr[0].name)
        
        userName.text = ""
        userId.text = ""
        userDepartment.text = ""
        userPhone.text = ""
        userAgg.text = ""
        userEmail.text = ""

        secondController.setup(structarr: storage.studentDetailArr)
                
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

