//this is a view

#import "AJViewFirst.h"

@implementation AJViewFirst

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UILabel *titleLab_1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 100, 40)];
        [titleLab_1 setText:@"row 1:"];
        [self addSubview:titleLab_1];
        
        UILabel *titleLab_2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 60, 100, 40)];
        [titleLab_2 setText:@"row 2:"];
        [self addSubview:titleLab_2];
        
        UILabel *titleLab_3 = [[UILabel alloc] initWithFrame:CGRectMake(10, 110, 100, 40)];
        [titleLab_3 setText:@"row 3:"];
        [self addSubview:titleLab_3];
        
    }
    return self;
}

-(void)updateValueLabel:(DataModel*)dataModel
{
    UILabel *titleLab_1 = [[UILabel alloc] initWithFrame:CGRectMake(130, 10, 100, 40)];
    [titleLab_1 setText:dataModel.detestId];
    [self addSubview:titleLab_1];
    
    UILabel *titleLab_2 = [[UILabel alloc] initWithFrame:CGRectMake(130, 60, 100, 40)];
    [titleLab_2 setText:dataModel.detestName];
    [self addSubview:titleLab_2];
    
    UILabel *titleLab_3 = [[UILabel alloc] initWithFrame:CGRectMake(130, 110, 100, 40)];
    [titleLab_3 setText:dataModel.detestDesc];
    [self addSubview:titleLab_3];

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
