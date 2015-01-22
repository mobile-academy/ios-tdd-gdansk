//
//  Copyright (c) 2014 Mobile Warsaw. All rights reserved.
//

#import "AgendaViewController.h"
#import "AgendaProvider.h"
#import "AgendaTableViewCell.h"


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
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

@end
