//
//  AbovePopBackVC.swift
//  AbovePopBack
//

import UIKit

class AbovePopBackVC: UIViewController,UIGestureRecognizerDelegate {
    
    let customNavBar = UINavigationBar() //自定义的navigationBar
    
    private var backbar:UIBarButtonItem{
        let backbar = UIBarButtonItem(image: #imageLiteral(resourceName: "arrowheadpng"), style: .plain, target: self, action: #selector(popViewController))
        return backbar
    }
    
    private var _isshowbackbar: Bool = true
    
    var isBackbarShow: Bool{ //显示或者隐藏back bar
        set{
            if !newValue{
                if let leftbarItems = itemNav.leftBarButtonItems{
                    if leftbarItems.count > 1 && leftbarItems[1] == backbar{
                        itemNav.leftBarButtonItems?.remove(at: 1)
                    }
                }
           
            }
            _isshowbackbar = newValue
        }
        get{
            return _isshowbackbar
        }
    }
    
    private let itemNav = UINavigationItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        setNav()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setNav(){ //隐藏navigationcontroller的nav bar，添加自定义的bar
        
        navigationController?.setNavigationBarHidden(true, animated: true)
        navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        customNavBar.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 64.0)
        customNavBar.tintColor = UIColor.black
        if navigationController != nil && navigationController!.viewControllers.count <= 1{
            
        }else{
            let spaceItem = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
            spaceItem.width = -13
            
            itemNav.leftBarButtonItems = [spaceItem,self.backbar]
        }
  
        
        self.customNavBar.items = [itemNav]
        
        self.view.addSubview(customNavBar)
    }
    func popViewController(){
        _ = navigationController?.popViewController(animated: true)
    }

    override var title: String?{
        set{
            itemNav.title = newValue
        }
        get{
            return itemNav.title
        }
    }
    
    override var navigationItem: UINavigationItem{
        return itemNav
    }
    
}
