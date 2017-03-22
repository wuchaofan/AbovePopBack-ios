//
//  Detail1ViewController.swift
//  AbovePopBack
//


import UIKit

class Detail1ViewController: AbovePopBackVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "detail1"
        view.backgroundColor = UIColor.lightGray
        customNavBar.isTranslucent = false
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(intoDetail2))
        
    }

    func intoDetail2(){
        let detail2 = Detail2ViewController()
        
        navigationController?.pushViewController(detail2, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
