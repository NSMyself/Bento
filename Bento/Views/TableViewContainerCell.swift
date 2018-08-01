import UIKit

final class TableViewContainerCell: UITableViewCell {

    var containedView: UIView? = nil

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        backgroundColor = .clear
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        selectionStyle = .none
    }

    func install(view: UIView) {
        self.containedView = view
        contentView.addSubview(view)
        view.pinToEdges(of: contentView)
    }
}
