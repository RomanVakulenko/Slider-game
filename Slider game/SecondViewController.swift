//
//  SecondViewController.swift
//  Slider game
//
//  Created by Roman Vakulenko on 21.05.2023.
//

import UIKit

class SecondViewController: UIViewController {

    override func loadView() {
        super.loadView()
        print("loadView 2nd VC")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func getBack(){
        self.dismiss(animated: true, completion: nil)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear 2nd VC")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear 2nd VC")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear 2nd VC")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear 2nd VC")

    }
}
