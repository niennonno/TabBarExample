//
//  CrumbsLikeViewController.swift
//  TabBarExample
//
//  Created by Aditya Vikram Godawat on 27/04/16.
//  Copyright © 2016 Wow Labz. All rights reserved.
//

import UIKit
import XLPagerTabStrip


class CrumbsLikeViewController: ButtonBarPagerTabStripViewController {

    let yellowColor = UIColor(red: 253/255.0, green: 216/255.0, blue: 53/255.0, alpha: 1.0)
    let unselectedIconColor = UIColor(red: 73/255.0, green: 8/255.0, blue: 10/255.0, alpha: 1.0)
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settings.style.buttonBarBackgroundColor = UIColor(red: 34/255, green: 34/255, blue: 34/55, alpha: 0.85)
        settings.style.buttonBarItemTitleColor = yellowColor
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        
        

        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - PagerTabStripDataSource
    
    override func viewControllersForPagerTabStrip(pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = ChildExampleViewController(itemInfo: "HOME")
        let child_2 = ChildExampleViewController(itemInfo: "ELSE")
        return [child_1, child_2]
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
