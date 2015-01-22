//
//  Copyright (c) 2014 Mobile Warsaw. All rights reserved.
//

#import "AgendaViewController.h"
#import "AgendaProvider.h"
#import "AgendaTableViewCell.h"

NSString *const AgendaTableViewCellID = @"AgendaTableViewCellID";


@implementation AgendaViewController

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        self.title = NSLocalizedString(@"Agenda", @"Agenda");
        self.tabBarItem.image = [UIImage imageNamed:@"agenda"];

        self.agendaProvider = [AgendaProvider new];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.tableView registerClass:[AgendaTableViewCell class] forCellReuseIdentifier:AgendaTableViewCellID];

    typeof(self) __weak weakSelf = self;
    [self.agendaProvider reloadAgendaWithCompletionHandler:^{
        [weakSelf.tableView reloadData];
    }];
}

#pragma mark - Data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.agendaProvider.agendaItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AgendaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:AgendaTableViewCellID forIndexPath:indexPath];
    AgendaItem *agendaItem = self.agendaProvider.agendaItems[(NSUInteger) indexPath.row];
    cell.textLabel.text = agendaItem.title;
    return cell;
}

@end
