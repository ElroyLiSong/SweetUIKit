import UIKit

class ViewController: SweetCollectionViewController {
    lazy var data: [String] = {
        return ["123", "321", "lol"]
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .magentaColor()

        self.collectionView.register(CollectionCell.self)
        self.collectionView.backgroundColor = .lightGrayColor()
        self.collectionView.dataSource = self
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(CollectionCell.reuseIdentifier, forIndexPath: indexPath) as! CollectionCell
        cell.backgroundColor = .whiteColor()
        cell.label.text = self.data[indexPath.row]

        return cell
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.data.count
    }
}