//
//  ViewController.swift
//  AbovePopBack
//


import UIKit

class ViewController: AbovePopBackVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "ParentVC"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    @IBAction func intoDetailAction(_ sender: UIButton) {
        let detail1VC = Detail1ViewController()
        navigationController?.pushViewController(detail1VC, animated: true)
        
    }


}

