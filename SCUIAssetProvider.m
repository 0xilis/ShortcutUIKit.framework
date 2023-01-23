#import <Foundation/Foundation.h>
#import "SCUIAssetProvider.h"

@implementation SCUIAssetProvider
-(id)initWithBundleURL:(id)arg0 {
    if (!arg0) {
            [[NSAssertionHandler currentHandler] handleFailureInMethod:_cmd object:self file:@"SCUIAssetProvider.m" lineNumber:18 description:@"Invalid parameter not satisfying: %@",@"bundleURL != nil"];
    }
    self = [super init];
    if (self) {
            _bundleURL = arg0;
    }
    return self;
}
-(id)imageNamed:(id)arg0 {
    UIImage* imageAsset = [[self _assetManager] imageNamed:arg0 withTrait:nil];
    if (!imageAsset) {
            imageAsset = [UIImage imageWithContentsOfFile:[[_bundleURL URLByAppendingPathComponent:arg0, NO]path]];
    }
    return imageAsset;
}
-(id)_assetManager {
    _UIAssetManager *assetManager = _assetManager;
    if (!assetManager) {
            _assetManager = [[_UIAssetManager alloc] initWithURL:[_bundleURL URLByAppendingPathComponent:@"Assets.car"] idiom:[[UIDevice currentDevice]userInterfaceIdiom] error:nil];
            assetManager = _assetManager;
    }
    return assetManager;
}
@end
