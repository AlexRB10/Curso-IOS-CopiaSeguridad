//
//  MainViewController.swift
//  Proyecto Alex
//
//  Created by Alumno on 6/7/17.
//  Copyright © 2017 Alex. All rights reserved.
//

//: Playground - noun: a place where people can play

import UIKit

class MainViewController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var datasource: [Album] = []
    
    @IBOutlet var collectionView: UICollectionView!
    
    // MARK - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate   = self
        self.collectionView.dataSource = self
        
        datasource = ControllerData.shareController.albumes
    }
    
    // MARK: - UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.datasource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoGridCell
        
        cell.photoImageView.image = UIImage.init(named: self.datasource[indexPath.item].fotoAlbum)
        return cell
    }
    
    
    // MARK: - UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    // MARK: - UICollectionViewFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewControllerDestination = segue.destination as? ControladorCanciones {
            
            let indexPath = self.collectionView.indexPathsForSelectedItems?.first
            let canciones = self.datasource[(indexPath?.row)!].pista
            viewControllerDestination.canciones = canciones
            print(self.datasource[(indexPath?.row)!].nombreAlbum)
        }
    }
}
