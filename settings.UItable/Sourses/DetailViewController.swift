
import UIKit

class DetailViewController: UIViewController {
    
    var valueForImage: CGFloat = 250
    
    var model: ModelItems? {
        didSet {
            guard let imageString = model?.icon else { return }
            image.image = UIImage(named: imageString)
            label.text = model?.firstName
        }
    }
    
    private lazy var image: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = valueForImage / 2
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = UIColor.black
        return imageView
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    private func setupView() {
        view.backgroundColor = .magenta
    }
    
    private func setupHierarchy() {
        view.addSubview(image)
        view.addSubview(label)
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            image.widthAnchor.constraint(equalToConstant: valueForImage),
            image.heightAnchor.constraint(equalToConstant: valueForImage),
    
            label.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 15),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
