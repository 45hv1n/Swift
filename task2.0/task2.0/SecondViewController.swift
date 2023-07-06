//
//  SecondViewController.swift
//  task2.0
//
//  Created by Ashvin Alva on 05/07/23.
//

import UIKit

class SecondViewController: UIViewController {

    var store = Storage()
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var label: UILabel!
    
    var arr : [Storage.StudentDetails] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        table.register(nib, forCellReuseIdentifier: "TableViewCell")
        table.delegate = self
        table.dataSource = self
        
        print("Load: \(store.viewStudentDetails())")
    }
    
    //Setup the second controller [Disabled the second controller].
    func setup(valArr : [Storage.StudentDetails]){
        arr = valArr
        print("Array size: \(arr)")
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

extension SecondViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped me Index : \(indexPath.row)")
    }
}

extension SecondViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
//        cell.nameLabel.text = "Name: \(self.arr[indexPath.row].name)"
//        cell.idLabel.text = "ID:\(String(self.arr[indexPath.row].id))"
//        cell.departmentLabel.text = "Department: \(self.arr[indexPath.row].department)"
//        cell.phoneLabel.text = "Phone: \(String(self.arr[indexPath.row].contact))"
//        cell.aggregrateLabel.text = "Aggregate: \(String(self.store.studentDetailArr[indexPath.row].aggregate))"
//        cell.emailLabel.text = "Email: \(self.store.studentDetailArr[indexPath.row].email)"
        
        cell.nameLabel.text = "Name: \(self.arr[indexPath.row].name)"
        cell.idLabel.text = "ID:\(String(self.arr[indexPath.row].id))"
        cell.departmentLabel.text = "Department: \(self.arr[indexPath.row].department)"
        cell.phoneLabel.text = "Phone: \(String(self.arr[indexPath.row].contact))"
        cell.aggregrateLabel.text = "Aggregate: \(String(self.arr[indexPath.row].aggregate))"
        cell.emailLabel.text = "Email: \(self.arr[indexPath.row].email)"
        
        //cell.deleteBtn.tag  = indexPath.row
        //cell.deleteBtn.addTarget(self, action: #selector(deleteElement), for: .touchUpInside)
                
        //print(self.store.studentDetailArr[indexPath.row].name)
        
        

//        cell.layer.cornerRadius = 20
//        cell.backgroundColor = .secondarySystemFill
//        cell.tintColor = .white
        
        return cell
    }
    
    @objc func deleteElement(sender:UIButton){
        let indexpath1 = IndexPath(row: sender.tag, section: 0)
        print(indexpath1)
        
        self.table.reloadData()
    }
}
