//
//  TableViewController.h
//  SeikoFestaapp
//
//  Created by 二宮啓 on 2015/03/24.
//  Copyright (c) 2015年 SatoshiNinomiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *TableView;@end

