//
//  ViewController.swift
//  YuYuHakushoCharacters
//
//  Created by Daniel Washington Ignacio on 07/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    var arrCharacters: [Character] = []
    
    var imageArray: [UIImage?] = [UIImage(named: "atsuko"),UIImage(named: "Botan"),UIImage(named: "Chu"),UIImage(named: "En"),UIImage(named: "Genkai"),UIImage(named: "Hiei"),UIImage(named: "Jin"),UIImage(named: "JorgeSaotome"),UIImage(named: "KaiM2"),UIImage(named: "KaiM3"),UIImage(named: "kazumaKuwabara"),UIImage(named: "KeikoYukimura"),UIImage(named: "kido"),UIImage(named: "Kiyoshi Mitarai"),UIImage(named: "Koenma"),UIImage(named: "Kurama"),UIImage(named: "Kuroko Sanada"),UIImage(named: "Mitsunari Yanagisawa"),UIImage(named: "pu"),UIImage(named: "Rinku"),UIImage(named: "Shigeru Murota"),UIImage(named: "Shishiwakamaru"),UIImage(named: "ShizuruKuwabara"),UIImage(named: "Suzuki"),UIImage(named: "Toya"),UIImage(named: "Yu_Kaito"),UIImage(named: "Yukina"),UIImage(named: "yusukeUrameshi")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       //
      //  self.myTableView.rowHeight = UITableViewCell
        
        
        self.myTableView.register(UINib(nibName: "CustomCellCharacter", bundle: nil), forCellReuseIdentifier: "CustomCellCharacter")
        self.myTableView.rowHeight = UITableView.automaticDimension
        self.myTableView.estimatedRowHeight = 50
        
        
        
        let character1 = Character(name: "Atsuko", surname: "Urameshi",  species: "Human", classCharacter: "Unknown")
        let character2 = Character(name: "Botan", surname: "",  species: "Spirit", classCharacter: "Unknown")
        let character3 = Character(name: "Chū", surname: "",  species: "Demon", classCharacter: "S-Class")
        let character4 = Character(name: "En", surname: "",  species: "Human (Psychic)", classCharacter: "C")
        let character5 = Character(name: "Genkai", surname: "",  species: "Psychic", classCharacter: "B-Class")
        let character6 = Character(name: "Hiei", surname: "",  species: "Demon", classCharacter: "Upper-S")
        let character7 = Character(name: "Jin", surname: "",  species: "Demon", classCharacter: "S-Class")
        let character8 = Character(name: "Jorge", surname: "Saotome", species: "Spirit", classCharacter: "Unknown")
        let character9 = Character(name: "Kai/Ryo", surname: "M2",  species: "Human (Psychic)", classCharacter: "C")
        let character10 = Character(name: "Kai/Ryo", surname: "M3", species: "Human (Psychic)", classCharacter: "C")
        let character11 = Character(name: "Kazuma", surname: "Kuwabara",  species: "Human (Psychic)", classCharacter: "Upper-S")
        let character12 = Character(name: "Keiko", surname: "Yukimura", species: "Human", classCharacter: "Unknown")
        let character13 = Character(name: "Asato", surname: "Kido", species: "Psychic", classCharacter: "E-Class Human")
        let character14 = Character(name: "Kiyoshi", surname: "Mitarai",  species: "Human (Psychic)", classCharacter: "D+")
        let character15 = Character(name: "King Enma Jr.", surname: "",  species: "Spirit", classCharacter: "Unknown")
        let character16 = Character(name: "Yoko", surname: "Kurama",  species: "(Fox Demon) fused with a Human Body", classCharacter: "Upper-S")
        let character17 = Character(name: "Kuroko", surname: "Sanada",  species: "Human", classCharacter: "B Class")
        let character18 = Character(name: "Mitsunari", surname: "Yanagisawa",  species: "Psychic", classCharacter: "E Class")
        let character19 = Character(name: "Pu", surname: "",  species: "unknown", classCharacter: "Unknown")
        let character20 = Character(name: "Rinku", surname: "",  species: "Demon", classCharacter: "S-Class")
        let character21 = Character(name: "Shigeru", surname: "Murota", species: "Psychic", classCharacter: "Unknown")
        let character22 = Character(name: "Shishiwakamaru", surname: "", species: "Demon", classCharacter: "S-Class")
        let character23 = Character(name: "Shizuru", surname: "Kuwabara", species: "Psychic", classCharacter: "unknown")
        let character24 = Character(name: "Suzuki", surname: "",  species: "Demon", classCharacter: "S-Class")
        let character25 = Character(name: "Toya", surname: "",  species: "Demon", classCharacter: "S-Class")
        let character26 = Character(name: "Yu", surname: "Kaito",  species: "Psychic", classCharacter: "D")
        let character27 = Character(name: "Yukina", surname: "",  species: "Demon", classCharacter: "Unknown")
        let character28 = Character(name: "Yusuke", surname: "Urameshi",  species: "Human (Psychic)", classCharacter: "Upper S")
        
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        
        self.arrCharacters = [character1,character2,character3,character4,character5,character6,character7,character8,character9,character10,character11,character12,character13,character14,character15,character16,character17,character18,character19,character20,character21,character22,character23,character24,character25,character26,character27,character28]
        
        
        
    }


}


// MARK: - UITableViewDelegate, UITableViewDataSource

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Yu Yu Hakusho Characters"
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCharacters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CustomCellCharacter? = tableView.dequeueReusableCell(withIdentifier: "CustomCellCharacter", for: indexPath) as? CustomCellCharacter
        
        
        cell?.nameLabel.text = self.arrCharacters[indexPath.row].name
        cell?.surnameLabel.text = self.arrCharacters[indexPath.row].surname
        cell?.specieLabel.text = self.arrCharacters[indexPath.row].species
        cell?.classLabel.text = self.arrCharacters[indexPath.row].classCharacter
        cell?.imageCharacer.image = self.imageArray[indexPath.row]
        cell?.imageCharacer.layer.cornerRadius = 20
        
        return cell ?? UITableViewCell()
    }
    
    
}
