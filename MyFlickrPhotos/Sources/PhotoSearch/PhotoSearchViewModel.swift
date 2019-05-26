//
//  PhotoSearchViewModel.swift
//  MyFlickrPhotos
//
//  Created by Jinwoo Kim on 02/04/2019.
//  Copyright © 2019 jinuman. All rights reserved.
//

import Foundation

class PhotoSearchViewModel {
    // MARK:- Properties
    private(set) var photos: [Photo]
    
    // MARK:- Dependency Injection (DI)
    init(photos: [Photo] = []) {
        self.photos = photos
    }
    
    // MARK:- Handling methods
    private func photo(for indexPath: IndexPath) -> Photo {
        return photos[indexPath.row]
    }
    
    func numberOfItems() -> Int {
        return photos.count
    }
    
    func photoCellViewModel(for indexPath: IndexPath) -> PhotoCellViewModel {
        let photo = self.photo(for: indexPath)
        
        return PhotoCellViewModel(imageUrl: photo.url)
    }
    
    func imageUrl(for indexPath: IndexPath) -> String {
        let photo = self.photo(for: indexPath)
        return photo.url
    }
}
