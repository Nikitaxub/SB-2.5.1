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
        self.navigationItem.setHidesBackButton(true, animated: false)
        let prevailingType = getPrevailingType()
        resultTypeLabelOutlet.text = "\(prevailingType) - \(prevailingType.rawValue)"
        definitionOutlet.text = prevailingType.definition
    }

    // MARK: - Private Methods
    private func getPrevailingType() -> AnimalType {
        answerChosen.map{$0.type}.reduce(into: [:]) { counts, answer in counts[answer, default: 0] += 1 }.sorted{$0.value > $1.value}.first!.key
    }
}
