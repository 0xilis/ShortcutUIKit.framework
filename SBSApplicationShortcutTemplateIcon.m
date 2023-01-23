#import <SpringBoardServices/SBSApplicationShortcutTemplateIcon.h>

@implementation SBSApplicationShortcutTemplateIcon (ShortcutUIKit)
-(id)_scui_iconImageWithAssetProvider:(id)arg0 {
    return [[arg0 imageNamed:[self templateImageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
}
@end
