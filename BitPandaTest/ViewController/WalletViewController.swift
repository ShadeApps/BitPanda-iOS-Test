//
//  WalletViewController.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import UIKit

final class WalletViewController: UIViewController {

    var viewModel: ListViewModel!
    var topInset = CGFloat(0) {
        didSet {
            tableView?.contentInset = UIEdgeInsets(top: topInset, left: 0, bottom: 20, right: 0)
        }
    }

    @IBOutlet private weak var tableView: UITableView!

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableView()
    }

}

// MARK: - Table View
extension WalletViewController: UITableViewDelegate, UITableViewDataSource {
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.rowHeight = UITableView.automaticDimension
        tableView.contentInset = UIEdgeInsets(top: topInset, left: 0, bottom: 20, right: 0)
        tableView.register(R.nib.headerCell)
        tableView.register(R.nib.mainCell)
        tableView.register(R.nib.separatorCell)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.numberOfSections
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfItems(inSection: section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        cellFor(indexPath)
    }
}

// MARK: - CellForRowAt Logics
extension WalletViewController {

    private func cellFor(_ indexPath: IndexPath) -> UITableViewCell {
        let rowIndex = indexPath.row

        if rowIndex == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.headerCell, for: indexPath)!
            cell.layoutWith(text: viewModel.sectionAtIndex(indexPath.section).type)
            return cell
        }

        if let commodity = viewModel.itemAtIndex(section: indexPath.section, index: rowIndex - 1) {
            let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.mainCell, for: indexPath)!
            cell.layoutWith(commodity, type: .wallet)
            return cell
        } else {
            return tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.separatorCell, for: indexPath)!
        }
    }

}
