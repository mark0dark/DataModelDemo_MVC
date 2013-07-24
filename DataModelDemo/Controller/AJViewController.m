//this is a Controller

#import "AJViewController.h"
#import "AJNetService.h"
#import "DataModel.h"

@interface AJViewController ()

@end

@implementation AJViewController

-(void)getDealInfoGCD
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        AJList* list = [AJNetService getDealList];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            if (list && [list.itemArray count]>=1) {
                _dataArray = [NSArray arrayWithArray:list.itemArray];
               
                [self updateView:(DataModel*)[_dataArray objectAtIndex:0]];
                
            }else{
                //no data
            }
        });
    });
}

-(void)updateView:(DataModel*)dataModel
{
    [_firstView updateValueLabel:dataModel];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    float dec = 10.0;
    float width = 300.0;
    float height = 300;
    
    _firstView = [[AJViewFirst alloc] initWithFrame:CGRectMake(dec, dec, width, height)];
    [_firstView setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:_firstView];
  
    [self getDealInfoGCD];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
