//
//  Storage.swift
//  task2.0
//
//  Created by Ashvin Alva on 06/07/23.
//

import Foundation


class Storage{
    
    var studentDetailArr : [StudentDetails] = []
    
    // Structure to store the details of the students
    struct StudentDetails{
        var name : String
        var id: Int
        var contact : Int
        var aggregate : Int
        var department : String
        var email : String
        
        init(name: String, id : Int, contact: Int,aggregate: Int, department: String, email: String ){
            self.name = name
            self.id = id
            self.contact = contact
            self.aggregate = aggregate
            self.department = department
            self.email = email
        }
    }
    
    func addStudentDetails(studentDetail : StudentDetails){
        self.studentDetailArr.append(studentDetail)
    }
    
    func viewStudentDetails() -> [StudentDetails] {
        return self.studentDetailArr
    }
}



