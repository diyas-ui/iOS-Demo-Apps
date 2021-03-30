//
//  ViewController.swift
//  Reminder
//
//  Created by mac on 10/15/20.
//  Copyright © 2020 Diyas Agmanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let alarm = [Alarm(time: "12:00", text: "iOS assignment", isSwitch: false),
                Alarm(time: "12:00", text: "iOS assignment", isSwitch: false),
                Alarm(time: "12:00", text: "iOS assignment", isSwitch: false)
                ]
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alarm.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCell") as? CustomCell
        cell?.titleLabel.text = alarm[indexPath.row].text
        cell?.timeLabel.text = alarm[indexPath.row].time
        return cell!
    }
    
    
}

