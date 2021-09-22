//
//  ViewController.swift
//  Project 5
//
//  Created by user on 20/09/21.
//

import UIKit

class ViewController: UITableViewController {
    var allWords = [String]()
    var usedWords = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //reconhecendo o arquivo start
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                allWords = startWords.components(separatedBy: "\n")
            }
        }
        //retorna vazio
        if allWords.isEmpty {
            allWords = ["silkworm"]
        }
    }


}

