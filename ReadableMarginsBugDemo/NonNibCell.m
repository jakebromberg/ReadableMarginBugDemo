#import "NonNibCell.h"


@implementation NonNibCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    if (self) {
        UIView *subview = [[UIView alloc] init];
        subview.backgroundColor = [UIColor blueColor];
        subview.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:subview];

        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[sv]-|" options:0 metrics:nil views:@{@"sv": subview}]];
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[sv]-|" options:0 metrics:nil views:@{@"sv": subview}]];
    }

    return self;
}
@end
