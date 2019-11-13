//
//  TabBarViewController.swift
//  PlanYourDay
//
//  Created by Kacper Kita on 11/11/2019.
//  Copyright © 2019 Kacper Kita. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    var customTabBarItem = UITabBarItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.white], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.black], for: .normal)
        //First Tab Bar item
        let selectedItem1 = UIImage(named: "day_sunny_1-512")?.withRenderingMode(.alwaysOriginal)
        let deSelectedItem1 = UIImage(named: "day_sunny_1-512")?.withRenderingMode(.alwaysOriginal)
        customTabBarItem = self.tabBar.items![0]
        customTabBarItem.image = deSelectedItem1
        customTabBarItem.selectedImage = selectedItem1
        //Second Tab Bar item
        let selectedItem2 = UIImage(named: "tomorrow-512")?.withRenderingMode(.alwaysOriginal)
        let deSelectedItem2 = UIImage(named: "tomorrow-512")?.withRenderingMode(.alwaysOriginal)
        customTabBarItem = self.tabBar.items![1]
        customTabBarItem.image = deSelectedItem2
        customTabBarItem.selectedImage = selectedItem2
        //Third Tab Bar item
        let selectedItem3 = UIImage(named: "calendar")?.withRenderingMode(.alwaysOriginal)
        let deSelectedItem3 = UIImage(named: "calendar")?.withRenderingMode(.alwaysOriginal)
        customTabBarItem = self.tabBar.items![2]
        customTabBarItem.image = deSelectedItem3
        customTabBarItem.selectedImage = selectedItem3
        //Four Tab Bar item
        let selectedItem4 = UIImage(named: "user")?.withRenderingMode(.alwaysOriginal)
        let deSelectedItem4 = UIImage(named: "user")?.withRenderingMode(.alwaysOriginal)
        customTabBarItem = self.tabBar.items![3]
        customTabBarItem.image = deSelectedItem4
        customTabBarItem.selectedImage = selectedItem4
        
        let numberOfTabs = CGFloat((tabBar.items?.count)!)
        let tabBarSize = CGSize(width: tabBar.frame.width / numberOfTabs, height: tabBar.frame.height)
        tabBar.selectionIndicatorImage = UIImage.imageWithColor(color: #colorLiteral(red: 0.186012849, green: 0.186012849, blue: 0.186012849, alpha: 1), size: tabBarSize)
        
        self.selectedIndex = 0
    }
    
        
  

}

extension UIImage {
   class func imageWithColor(color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
