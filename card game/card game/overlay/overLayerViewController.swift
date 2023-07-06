//
//  overLayerViewController.swift
//  card game
//
//  Created by Ashvin Alva on 04/07/23.
//

import UIKit

class overLayerViewController: UIViewController {
    
    init(){
        super.init(nibName: "overLayerViewController", bundle: nil)
        self.modalPresentationStyle = .overFullScreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func config(){
        self.view.backgroundColor = .clear
        self.backView.backgroundColor = .black.withAlphaComponent(0.5)
        
        self.backView.alpha = 0
        self.contentView.alpha = 0
        
        self.contentView.layer.cornerRadius = 10
        
    }
    
    func appear(_ sender: UIViewController, _ user: String){
        sender.present(self, animated: false) {
            self.show()
        }
    }
    
    func show(){
        UIView.animate(withDuration: 1, delay: 0.2) {
            self.backView.alpha = 1
            self.contentView.alpha = 1
        }
    }
    
    func hide(){
        UIView.animate(withDuration: 1, delay: 0) {
            self.backView.alpha = 0
            self.contentView.alpha = 0
        }completion: { _ in
            self.dismiss(animated: false)
            self.removeFromParent()
        }
    }
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var backView: UIView!
    
    @IBAction func resetBTN(_ sender: Any) {
        hide()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        config()
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
