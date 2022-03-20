//
//  DiaryViewController.swift
//  iosStudy1
//
//  Created by 이승후 on 2022/02/02.
//

import UIKit


class DiaryViewController: UIViewController {
    

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label9: UILabel!
    
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.text = "행복해 0"
        label2.text = "사랑해 0"
        label3.text = "좋아해 0"
        label4.text = "당황해 0"
        label5.text = "속상해 0"
        label6.text = "피곤해 0"
        label7.text = "심심해 0"
        label8.text = "적당해 0"
        label9.text = "우울해 0"
        
    }
    @IBAction func button2Tap(_ sender: UIButton) {
        index += 1
        label2.text = "사랑해 \(index)"
    }
    
    
    

   
}
