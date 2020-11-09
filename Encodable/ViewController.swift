//
//  ViewController.swift
//  Encodable
//
//  Created by אורי האופטמן on 09/11/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var loadButton: UIButton!
    @IBOutlet weak var infoLabel: UILabel!
    
    var person: Person? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.infoLabel.text = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButtonPressed(_ sender: Any) {
        print("Saving object...")
        let person: Person = Person()
        
        do {
            try UserDefaults.standard.setToObject(person, forKey: "person")
            print("Object saved successfully")
        } catch let err {
            infoLabel.textColor = .red
            infoLabel.text = err.localizedDescription
            print("Error while saving object:\n\(err.localizedDescription)")
        }
        
    }
    
    @IBAction func loadButtonPressed(_ sender: Any) {
        print("Loading object...")
        
        do {
            self.person = try UserDefaults.standard.getToObject(forKey: "person", castTo: Person.self)
            print("Successfully load object:\n\(self.person!)")
        } catch let err {
            infoLabel.textColor = .red
            infoLabel.text = err.localizedDescription
            print("Error while loading object:\n\(err.localizedDescription)")
        }
    }
    
}

