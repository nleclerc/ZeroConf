/*
The MIT License (MIT)

Copyright (c) 2014 Nicolas Leclerc <nl@spirotron.fr>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

#import <Cordova/CDV.h>
#import "ZeroConf.h"

@implementation ZeroConf

- (void)getNetServiceBrowser:
{
	
}

- (void)watch:(CDVInvokedUrlCommand *)command
{
	NSString* type = [command argumentAtIndex:0];
}

- (void)unwatch:(CDVInvokedUrlCommand *)command
{
	NSString* type = [command argumentAtIndex:0];
}

- (void)close:(CDVInvokedUrlCommand *)command
{

}

- (void)register:(CDVInvokedUrlCommand *)command
{
	NSString* type = [command argumentAtIndex:0];
	NSString* name = [command argumentAtIndex:1];
	NSString* port = [[command argumentAtIndex:2] integerValue];
	NSString* text = [command argumentAtIndex:3];
}

- (void)unregister:(CDVInvokedUrlCommand *)command
{

}

/*
 * NSNetServiceBrowser delegate methods.
 */

- (void)netServiceBrowser:(NSNetServiceBrowser*)netServiceBrowser didRemoveService:(NSNetService*)service moreComing:(BOOL)moreComing
{
    NSLog(@"netServiceBrowser:didRemoveService name %@", service.name);
}

- (void)netServiceBrowser:(NSNetServiceBrowser*)netServiceBrowser didFindService:(NSNetService*)service moreComing:(BOOL)moreComing
{
    NSLog(@"netServiceBrowser:didFindService name %@", service.name);
}

- (void)netServiceBrowser:(NSNetServiceBrowser *)browser didNotSearch:(NSDictionary *)errorDict
{
    NSLog(@"netServiceBrowser:didNotSearch");
	
}

- (void)netServiceBrowserWillSearch:(NSNetServiceBrowser *)browser
{
    NSLog(@"netServiceBrowserWillSearch");

}

- (void)netServiceBrowserDidStopSearch:(NSNetServiceBrowser *)browser
{
    NSLog(@"netServiceBrowserDidStopSearch");

}

@end