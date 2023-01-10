
import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CustomTableViewCell"
    
    private lazy var finderView: UITextField = {
        let label = UITextField()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = UIColor.systemBackground
        self.imageView?.image = UIImage(systemName: "magnifyingglass")
        
    }
    
    private func setupHierarchy() {
        contentView.addSubview(finderView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            finderView.leftAnchor.constraint(equalTo: imageView?.rightAnchor ?? self.rightAnchor, constant: 10),
            finderView.rightAnchor.constraint(equalTo: self.rightAnchor),
            finderView.topAnchor.constraint(equalTo: self.topAnchor),
            finderView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
