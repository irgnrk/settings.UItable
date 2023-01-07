
import UIKit
import SnapKit


class ViewController: UIViewController {
    
    var model = Model()
    
    //MARK: - UI elements
    
    private lazy var myTableView: UITableView = {
        let tableview = UITableView(frame: CGRect.zero, style: .insetGrouped)
        tableview.backgroundColor = .yellow
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableview.dataSource = self
        tableview.delegate = self
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
        
    } ()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Setup
    private func setupView() {
        view.backgroundColor = .orange
        title = "Settings:"
        let bar = navigationController?.navigationBar
        //bar?.prefersLargeTitles = true // большой текст
        bar?.layer.backgroundColor = CGColor(red: 254/255, green: 17/255, blue: 242/255, alpha: 1)
        bar?.layer.cornerRadius = 10
    }
    
    private func setupHierarchy() {
        view.addSubview(myTableView)
    }
    
    private func setupLayout() {
        
        myTableView.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(view)
        }
    }
    
    //MARK: - Actions
    
    
}

// MARK: - Extentions
  
extension ViewController: UITableViewDataSource {
    
    //количество секций
    func numberOfSections(in tableView: UITableView) -> Int {
        model.models.count
    }
    
    
    // количество строк в ячейке
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.models[section].count
    }
    
    //настройка ячейки
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            let cellData = model.models[indexPath.section][indexPath.row]
            let myImage = UIImage(named: cellData.icon)
            cell.textLabel?.text = cellData.firstName
        cell.imageView?.image =  myImage
        return cell
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
   
}
