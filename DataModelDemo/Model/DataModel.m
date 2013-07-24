//this is a model

#import "DataModel.h"

@implementation DataModel

- (DataModel*)initWithJsonDictionary:(NSDictionary*)dic
{
	self = [super init];
    
    self.detestDesc = [dic objectForKey:@"detestDesc"];
    self.detestName = [dic objectForKey:@"detestName"];
    self.detestId = [dic objectForKey:@"id"];
    
	return self;
}

- (NSString *)description
{
    NSMutableString* desc = [NSMutableString string];
    [desc appendFormat:@"_detestDesc:%@ \n",_detestDesc];
    [desc appendFormat:@"_detestName:%@ \n",_detestName];
    [desc appendFormat:@"_detestId:%@ \n",_detestId];
    
    return [NSString stringWithString:desc];
}

@end
