//
//  Copyright © 2016 The CocoaBots. All rights reserved.

import ReactiveKit

final class Parent {

    /// Array of child models
    let children: [Child]

    /// Current selection
    var selection = Property<String>("Hi")

    private let disposeBag = DisposeBag()

    required init() {
        self.children = [
            Child(),
            Child(),
            Child(),
            Child(),
            Child()
        ]

        for child in self.children {
            self.selection
                .bidirectionalBind(to: child.selection)
                .disposeIn(self.disposeBag)
        }
    }
    
}
