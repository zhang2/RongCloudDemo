//
//  ConversationViewController.swift
//  RongCloudAppDemo
//
//  Created by apple on 3/16/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ConversationListViewController: RCConversationListViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setDisplayConversationTypes([RCConversationType.ConversationType_PRIVATE.rawValue, RCConversationType.ConversationType_GROUP.rawValue,RCConversationType.ConversationType_DISCUSSION.rawValue])
        self.conversationListTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        
    }
    
    override func onSelectedTableRow(_ conversationModelType: RCConversationModelType, conversationModel model: RCConversationModel!, at indexPath: IndexPath!) {
        let vc = RCConversationViewController()
        vc.conversationType = model.conversationType
        vc.targetId = model.targetId
        vc.title = "聊天室"
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
