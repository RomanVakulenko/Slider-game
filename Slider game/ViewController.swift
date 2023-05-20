//
//  ViewController.swift
//  Slider game
//
//  Created by Roman Vakulenko on 19.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    @IBOutlet var score: UILabel!

    var number: Int = 0
    var round: Int = 1
    var points: Int = 0

    override func viewDidLoad() { // метод выполнится 1 раз за жизнь VC (сцены)
        super.viewDidLoad()
        number = Int.random(in: 1...50)
        label.text = String(number)
        score.text = String(points)
    }

    @IBAction func checkNumber() {

        let numSlider = Int(slider.value.rounded())

        if numSlider == number {
            points += 10
        } else if numSlider >= number-3 && numSlider <= number+3 {
            points += 5
        } else {
            points += 1
        }
        if round == 5 {
            let alert = UIAlertController( title: "Игра окончена",
                                           message: "Вы набрали \(points) очков", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Начать заново", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            round = 1
            points = 0
        } else {
            round += 1
        }

        number = Int.random(in: 1...50)
        label.text = String(number)
        score.text = String(points)

    }
}

