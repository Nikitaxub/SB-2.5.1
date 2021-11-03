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
    
    // MARK: - Public Properties
    var answerChosen: [Answer]!

    // MARK: - Life Circle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: false)
        let prevailingType = getPrevailingType()
        resultTypeLabelOutlet.text = "\(prevailingType) - \(prevailingType.rawValue)"
        definitionOutlet.text = prevailingType.definition
    }

    // MARK: - Private Methods
    private func getPrevailingType() -> AnimalType {
        let typesOfChosenAnswer = answerChosen.map{$0.type}
        let typeCount = typesOfChosenAnswer.reduce(into: [:]) { counts, answer in counts[answer, default: 0] += 1 }
        return typeCount.sorted{$0.value > $1.value}.first!.key
    }
}
