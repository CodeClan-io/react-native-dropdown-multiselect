#ifdef RCT_NEW_ARCH_ENABLED
#import "DropdownMultiselectView.h"

#import <react/renderer/components/RNDropdownMultiselectViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNDropdownMultiselectViewSpec/EventEmitters.h>
#import <react/renderer/components/RNDropdownMultiselectViewSpec/Props.h>
#import <react/renderer/components/RNDropdownMultiselectViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface DropdownMultiselectView () <RCTDropdownMultiselectViewViewProtocol>

@end

@implementation DropdownMultiselectView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<DropdownMultiselectViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const DropdownMultiselectViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<DropdownMultiselectViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<DropdownMultiselectViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> DropdownMultiselectViewCls(void)
{
    return DropdownMultiselectView.class;
}

@end
#endif
