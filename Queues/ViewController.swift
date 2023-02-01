//
//  ViewController.swift
//  Queues
//
//  Created by Andrew Acton on 2/1/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func startButtonTapped(_ sender: Any) {
        let queue = DispatchQueue.global()
        queue.async {
            for i in 1...10 {
                DispatchQueue.main.async {
                    self.label.text = "\(i)"
                }
                sleep(1)  //Bad form. Don't use sleep. Better methods will be covered later.
            }
            DispatchQueue.main.async {
                self.label.text = "Done"
            }
        }
    }
    
    
    @IBAction func testButtonTapped(_ sender: Any) {
        print("Test")
    }
    
}

