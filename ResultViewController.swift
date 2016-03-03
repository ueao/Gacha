//
//  ResultViewController.swift
//  Gachapin
//
//  Created by Aoi Sakaue on 2016/02/11.
//  Copyright © 2016年 Aoi Sakaue. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    

//使う部品を宣言する
    @IBOutlet var haikeiImageView: UIImageView!
    
    @IBOutlet var monsterImageView: UIImageView!
    
    var monsterArray:[UIImage]!
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fromValue = NSNumber(double: 0)
        
        animation.toValue = NSNumber(double: 2 * M_PI)
        
        animation.valueFunction = CAValueFunction(name:kCAValueFunctionRotateZ)
        
        animation.duration = 5
        
        animation.repeatCount = Float.infinity
        
        haikeiImageView.layer.addAnimation(animation, forKey: nil)
    }
    
    
    @IBAction func modoru() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


//ランダムにモンスターを表示させる
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //このResulltViewControllerが表示されるたびに呼び出すメソッド
        
        // Do any additional setup after loading the view.

        let number = Int(rand() % 9)
        
//monsterArray配列に画像を10枚追加（保存）する
        monsterArray = [UIImage(named: "monster001.png")!,
            UIImage(named: "monster002.png")!,
            UIImage(named: "monster003.png")!,
            UIImage(named: "monster004.png")!,
            UIImage(named: "monster005.png")!,
            UIImage(named: "monster006.png")!,
            UIImage(named: "monster007.png")!,
            UIImage(named: "monster008.png")!,
            UIImage(named: "monster009.png")!,
            UIImage(named: "monster010.png")!
        ]
//monsterArrayの中のnumber番目を表示させる（ランダムに表示させる）
        monsterImageView.image = monsterArray[number]
        
//numberの数字により背景画像を切り替える
        if number == 9 {
            haikeiImageView.image = UIImage(named: "bg_gold.ong")
        }else if number > 6{
            haikeiImageView.image = UIImage(named: "bg_red.png")
        }else {
            haikeiImageView.image = UIImage(named: "bg_blue.png")
        }
    

    }
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 */



