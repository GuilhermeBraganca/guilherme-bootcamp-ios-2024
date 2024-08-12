//
//  DetailTableViewModel.swift
//  TableView+CollectionViewBootcamp2024
//
//  Created by MacBook on 08/08/24.
//

import Foundation

class DetailTableViewCellModel {
    
    
    var detail: Detail?
    
    
    func setDetail(detail: Detail) {
        self.detail = detail
    }
    var numberOfItemsInSection: Int {
        return detail?.list.count ?? 0
    }
    
    func loadListItem (indexPath: IndexPath) -> Item {
        return detail?.list[indexPath.row] ?? Item(text: "", image: "")
    }
    
    func getTitle(indexPath: IndexPath) -> String{
        return loadListItem(indexPath: indexPath).text
    }
}
