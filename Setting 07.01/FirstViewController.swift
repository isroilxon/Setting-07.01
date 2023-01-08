//
//  FirstViewController.swift
//  Setting 07.01
//
//  Created by mac on 07/01/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    let tableView = UITableView()
    let setting: [Setting] = [
    Setting(label: "Airplane Mode", img: "airplane"), Setting(label: "Wi-Fi", img: "wifi"), Setting(label: "Cellular", img: "cellularbars"),
    Setting(label: "Personal Hotspot", img: "personalhotspot"), Setting(label: "Notification", img: "bell.badge.fill"),
    Setting(label: "Sounds & Haptics", img: "speaker.wave.2.fill"), Setting(label: "Focus", img: "moon.fill"),
    Setting(label: "Screen Time", img: "hourglass"), Setting(label: "Accessibility", img: "figure.stand"),
    Setting(label: "Battery", img: "battery.100"),
    Setting(label: "Privacy & Security", img: "hand.raised.app"),
    
    Setting(label: "Airplane Mode", img: "airplane"), Setting(label: "Wi-Fi", img: "wifi"), Setting(label: "Cellular", img: "cellularbars"),
    Setting(label: "Personal Hotspot", img: "personalhotspot"), Setting(label: "Notification", img: "bell.badge.fill"),
    Setting(label: "Sounds & Haptics", img: "speaker.wave.2.fill"), Setting(label: "Focus", img: "moon.fill"),
    Setting(label: "Screen Time", img: "hourglass"), Setting(label: "Accessibility", img: "figure.stand"),
    Setting(label: "Battery", img: "battery.100"),
    Setting(label: "Privacy & Security", img: "hand.raised.app")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        title = "Setting"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(FirstTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(Header.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.backgroundColor = .gray

    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header")
        return header
    }

}

extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 22
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FirstTableViewCell
        cell.img1.image = UIImage(systemName: setting[indexPath.row].img)
        cell.label.text = setting[indexPath.row].label
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 3
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondViewController()
        vc.name = setting[indexPath.row].label
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
