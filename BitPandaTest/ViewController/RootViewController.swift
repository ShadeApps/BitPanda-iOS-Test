//
//  RootViewController.swift
//  BitPandaTest
//
//  Created by Sergey Grischyov on 28.02.2021.
//

import Pageboy
import Tabman
import UIKit

final class RootViewController: TabmanViewController {

    private enum Tab {
        case assets, wallets
    }

    @IBOutlet private weak var navigationView: UIView!
    @IBOutlet private var navigationControls: [UIView]!
    @IBOutlet private weak var topNavigationConstraint: NSLayoutConstraint!
    @IBOutlet private weak var navigationHeightConstraint: NSLayoutConstraint!
    @IBOutlet private weak var tabView: UIView!
    private let topBar = DefaultBar()

    private let assetsVC = Storyboard.main.assetViewController()!
    private let walletsVC = Storyboard.main.walletViewController()!

    private var viewControllers: [UIViewController] {
        [assetsVC, walletsVC]
    }

    // Overriding not supported in extensions so it has to be here
    override func pageboyViewController(_ pageboyViewController: PageboyViewController,
                                        didScrollToPageAt index: TabmanViewController.PageIndex,
                                        direction: PageboyViewController.NavigationDirection,
                                        animated: Bool) {
        HapticHelper.vibrate(.light)
    }
}

// MARK: - Lifecycle
extension RootViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        prepareTabs()

        topBar.setUp()
        addBar(topBar, dataSource: self, at: .custom(view: tabView, layout: nil))
        navigationHeightConstraint.constant = UIViewController.topNotchHeight + Constants.navigationHeight
    }

    private func prepareTabs() {
        // Account for all devices
        var inset = UIViewController.topNotchHeight + Constants.navigationHeight

        if !UIViewController.hasTopNotch {
            inset = Constants.navigationHeight + Constants.tabHeight
        }

        assetsVC.topInset = inset
        walletsVC.topInset = inset

        // PageboyViewControllerDataSource
        dataSource = self
    }
}

// MARK: - Tabs DataSource
extension RootViewController: PageboyViewControllerDataSource {
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        viewControllers.count
    }

    func viewController(for pageboyViewController: PageboyViewController, at index: PageboyViewController.PageIndex) -> UIViewController? {
        viewControllers[index]
    }

    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        .next
    }
}

// MARK: - Tabs UI
extension RootViewController: TMBarDataSource {
    func barItem(for bar: TMBar, at index: Int) -> TMBarItemable {
        switch index {
        case 0:
            return TMBarItem(title: Localizable.assets())
        case 1:
            return TMBarItem(title: Localizable.wallets())
        default:
            fatalError("not supported")
        }
    }
}

private extension RootViewController {

    enum Constants {
        static let navigationHeight = CGFloat(44)
        static let tabHeight = CGFloat(40)
    }

}
