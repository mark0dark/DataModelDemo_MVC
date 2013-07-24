//this is about network

#import "AJNetService.h"
#import "DataModel.h"

@implementation AJNetService

+ (NSDictionary*) requestUrl:(NSURL*)url WithParameters:(NSDictionary*)params ignoreIndicator:(BOOL)ignore jsonGlobalWrapper:(BOOL)wrapper
{
	//net content recive
    NSMutableDictionary *dict_0 = [[NSMutableDictionary alloc] initWithCapacity:5];
    [dict_0 setObject:@"id" forKey:@"id"];
    [dict_0 setObject:@"detestName" forKey:@"detestName"];
    [dict_0 setObject:@"detestDesc" forKey:@"detestDesc"];

    NSArray *docsArray = [NSArray arrayWithObjects:dict_0,dict_0,dict_0, nil];
    
	NSDictionary *result = [NSDictionary dictionaryWithObjects:@[@"1",docsArray]
                                                       forKeys:@[@"status",@"docs"]];
    return result ;
}

+ (AJList*)getNewListWith:(NSDictionary*)response clazz:(Class)clazz
{
    NSArray *jasonResultArray = nil;
    NSMutableArray *outputArray = [[NSMutableArray alloc] init];
    AJList* list = [[AJList alloc] init];
	if (response != nil)
	{
        int status = [[response objectForKey:@"status"] intValue];
		if (status == 1)
        {
            jasonResultArray = (NSArray*)[response objectForKey:@"docs"];
            for(NSDictionary *dic in jasonResultArray)
            {
                id mappedObj = [[clazz alloc] initWithJsonDictionary:dic];
                [outputArray addObject:mappedObj];
            }
            
        }
        list.totalNum = [outputArray count];
        
    }
    list.itemArray = outputArray;
    
	return list;
}

+ (AJList*)getDealList
{
    NSString* urlPath = @"test";
    NSURL* url = [[NSURL alloc] initWithString:[urlPath stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    NSDictionary* response = [self requestUrl:url WithParameters:nil ignoreIndicator:NO jsonGlobalWrapper:YES];
    AJList* list = [AJNetService getNewListWith:response clazz:[DataModel class]];
    return list;
}

@end
