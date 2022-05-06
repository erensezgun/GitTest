//
//  ViewController.swift
//  GitTest
//
//  Created by Eren on 5/5/22.
//

import UIKit

class ViewController: UIViewController {

    let ustView : UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        //view.layer.cornerRadius = 10.0
        return view
    }()
    
    
    let erenImage : UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "eren"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 30.0
        //imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        
        return imageView
     }()
    
    let textLabel : UILabel = {
        let label = UILabel()
        label.text = "Hello World!"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 50)
        label.textAlignment = .center
        return label
    }()
    
    let textDics : UITextField = {
        let field = UITextField()
        //field.translatesAutoresizingMaskIntoConstraints = false
        field.placeholder = "Acıklamayı Giriniz."
        field.tintColor = .darkGray
        field.textAlignment = .center
        field.backgroundColor = .yellow
        return field
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(textLabel)
        view.addSubview(ustView)
        view.addSubview(textDics)
        textLabelConstraint()
        textDicsConstraint()
        layoutDuzenle()
        print("GitHub Üzerinden Değişiklik yapıldı.")
    }

    func textLabelConstraint() {
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        textLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 150).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    func textDicsConstraint() {
        textDics.translatesAutoresizingMaskIntoConstraints = false
        textDics.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        textDics.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        textDics.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //textDics.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textDics.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 10).isActive = true
    }
    
    func layoutDuzenle() {
        ustView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        ustView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        ustView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        ustView.bottomAnchor.constraint(equalTo: textLabel.topAnchor,constant: -10).isActive = true
        ustView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 2/5).isActive = true
        
        ustView.addSubview(erenImage)
        erenImage.centerXAnchor.constraint(equalTo: ustView.centerXAnchor).isActive = true
        erenImage.bottomAnchor.constraint(equalTo: ustView.bottomAnchor, constant: -10).isActive = true
        erenImage.centerYAnchor.constraint(equalTo: ustView.centerYAnchor).isActive = true
        erenImage.heightAnchor.constraint(equalTo: ustView.heightAnchor, multiplier: 0.5).isActive = true
        erenImage.widthAnchor.constraint(equalTo: ustView.widthAnchor, multiplier: 0.5).isActive = true
        //erenImage.topAnchor.constraint(equalTo: ustView.topAnchor, constant: 40).isActive = true
        
        }

}

