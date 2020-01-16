//
//  secondViewController.swift
//  customCollectionView
//
//  Created by Macbook on 05/01/2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit



class secondViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
   
    
    var labelNo : Int?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    
    //TODO: delegate functions
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return selectedItem.count + 2
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < selectedItem.count
        {
            
            print(indexPath.row)
            print(selectedItem.count)
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath) as! customTableViewCell
            cell.selecteditemNameLbl.text = selectedItem[indexPath.row]
            
            cell.priceLbl.text = "\(burgerPrice[priceOfTheSelectedItem[indexPath.row]])"
            
            
            
            
            
            
            return cell
        }else {
            
            
           
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath) as! customTableViewCell
            
            if (indexPath.row == selectedItem.count){
                cell.totalSumLbl.text = ""
                
               
                
            }else{
                
                
                cell.totalSumLbl.text = "\(sumofTotalAmount.reduce(0, +))"
                
            
                
            }
            
            return cell
        }
        
        
    }
    
    
    

    

}
