#import <Foundation/Foundation.h>

@interface SCUIAssetProvider : NSObject {
    NSURL *_bundleURL;
    _UIAssetManager *_assetManager;
}
-(id)_assetManager;
-(id)imageNamed:(id)arg0;
-(id)initWithBundleURL:(id)arg0;
@end
