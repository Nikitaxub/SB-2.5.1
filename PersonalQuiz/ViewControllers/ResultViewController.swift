//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Nikita Zharinov on 01/11/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var resultTypeLabelOutlet: UILabel!
    @IBOutlet var definitionOutlet: UILabel!
    
    var answerChosen: [Answer]!

    // MARK: - Life circle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        print(answerChosen)
        self.navigationItem.setHidesBackButton(true, animated: false)
        let prevailingType = getAnimalType()
        resultTypeLabelOutlet.text = "\(prevailingType) - \(prevailingType.rawValue)"
        definitionOutlet.text = prevailingType.definition
    }

    // 1. Передать сюда массив с ответами
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты в соответствии с этим животным
    // 4. Избавиться от кнопки возврата назад на экране результатов
    
    // MARK: - Private methods
    private func getAnimalType() -> AnimalType {
        return .cat
    }
}
