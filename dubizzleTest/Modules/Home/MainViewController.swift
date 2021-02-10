//
//  ViewController.swift
//  dubizzleTest
//
//  Created by Mapple Technologioes on 09/02/2021.
//

import UIKit

// MARK: View Output (Presenter -> View)
protocol PresenterToViewDynamoProtocol: class {
    //    func updateDynamoList(groceriesList: [Result]) -> ()
    //    func presentLoading()
    func onFetchDynamoSuccess()
    func onFetchDynamoFailure(error: String)
    
    func showHUD()
    func hideHUD()
    
    //    func deselectRowAt(row: Int)
}

class MainViewController: BaseListController,Loading {
    
    
    // MARK: - Properties
    var presenter: ViewToPresenterDynamoProtocol?
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpUI()
        presenter?.viewDidLoad()
    }
    
    // MARK: - UI IN CODE
    func  setUpUI(){
        collectionView.backgroundColor = .white
        collectionView.register(ListingCell.self, forCellWithReuseIdentifier: ListingCell.reuseIdentifier)
    }
    
}

// MARK: - output from presenter to view
extension MainViewController:PresenterToViewDynamoProtocol{
    func onFetchDynamoSuccess() {
        print("View receives the response from Presenter and updates itself.")
        self.collectionView.reloadData()
//        self.refreshControl.endRefreshing()
        
    }
    
    func onFetchDynamoFailure(error: String) {
        print("View receives the response from Presenter with error: \(error)")
        //        self.refreshControl.endRefreshing()
        self.collectionView.reloadData()
    }
    
    
    
    
    
    func showHUD() {
        self.showProgressIndicator()
    }
    
    func hideHUD() {
        self.hideProgressIndicator()
    }
    
    
}

extension MainViewController:UICollectionViewDelegateFlowLayout{
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter?.numberOfRowsInSection() ?? 5
        //        return datasource.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ListingCell.reuseIdentifier, for: indexPath) as! ListingCell
        //        cell.result = datasource[indexPath.row]
        guard let viewModel =  presenter?.viewModelForEachCell(indexPath: indexPath)else{
            return UICollectionViewCell()
        }
        cell.configure(usingViewModel: viewModel)
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width , height: 100)
    }
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presenter?.didSelectRowAt(index: indexPath.row)
        
//        let DetailVc = DetailViewController()
//        DetailVc.result = datasource[indexPath.row]
//        self.navigationController?.pushViewController(DetailVc, animated: true)
    }
}

