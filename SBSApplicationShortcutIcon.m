#import <SpringBoardServices/SBSApplicationShortcutIcon.h>

@interface SBSApplicationShortcutIcon (ShortcutUIKit)
+(id)_scui_defaultImage {
 static dispatch_once_t onceToken;
 dispatch_once(&onceToken, ^{
  return [[UIImage imageNamed:@"UnreadDot" inBundle:[NSBundle bundleForClass:[SCUIAssetProvider class]] compatibleWithTraitCollection:nil] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
 });
}
-(id)_scui_iconImageWithAssetProvider:(id)arg0 {
 return 0;
}
-(id)scui_iconImageWithAssetProvider:(id)arg0 {
    id iconImage = [self _scui_iconImageWithAssetProvider:arg0];
    if (!iconImage) {
            return [[self class] _scui_defaultImage];
    }
    return iconImage;
}
@end
