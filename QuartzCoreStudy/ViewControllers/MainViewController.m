
#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize roundView = _roundView;

- (id) init
{
    self = [self initWithNibName:NSStringFromClass([self class]) bundle:nil];
    if(self)
    {
    
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) dealloc
{
    [super dealloc];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void) makeRoundCornersForView:(UIView*) _uiview
{
    CALayer* roundViewLayer = _uiview.layer;
    [roundViewLayer setCornerRadius:10.0f];
}

- (void) makeCircleForView:(UIView*) _uiview
{
    CALayer* roundViewLayer = _uiview.layer;
    [roundViewLayer setCornerRadius:_uiview.frame.size.height/2];
}

- (void) addShadowForView:(UIView*) _uiview
{
    CALayer* roundViewLayer = _uiview.layer;
    
    [roundViewLayer setShadowOffset:CGSizeMake(-3, 3)];
    
    [roundViewLayer setShadowRadius:3.0f];
    
    [roundViewLayer setShadowOpacity:3.0f];
    
    [roundViewLayer setShadowColor:[UIColor blackColor].CGColor];
    
    //[roundViewLayer setShouldRasterize:YES];
}

-(void) addBorderForView:(UIView *) _uiview
{
    CALayer *layer = _uiview.layer;
    layer.borderWidth = 3.0f;
    layer.borderColor = [UIColor colorWithWhite:0.0f alpha:0.5f].CGColor;
}

-(void) addGradientForView:(UIView *) _uiview
{ 
    CALayer *layer = _uiview.layer;
    
    layer.masksToBounds = YES;
    
    // Add Shine
    CAGradientLayer *shineLayer = [CAGradientLayer layer];
    shineLayer.frame = layer.bounds;
    shineLayer.colors = [NSArray arrayWithObjects:
                         (id)[UIColor colorWithWhite:1.0f alpha:0.4f].CGColor,
                         (id)[UIColor colorWithWhite:1.0f alpha:0.2f].CGColor,
                         (id)[UIColor colorWithWhite:0.75f alpha:0.2f].CGColor,
                         (id)[UIColor colorWithWhite:0.4f alpha:0.2f].CGColor,
                         (id)[UIColor colorWithWhite:1.0f alpha:0.4f].CGColor,
                         nil];
    
    shineLayer.locations = [NSArray arrayWithObjects:
                            [NSNumber numberWithFloat:0.0f],
                            [NSNumber numberWithFloat:0.5f],
                            [NSNumber numberWithFloat:0.6f],
                            [NSNumber numberWithFloat:0.8f],
                            [NSNumber numberWithFloat:1.0f],
                            nil];
    
    [layer addSublayer:shineLayer];
    
    //[roundViewLayer setShouldRasterize:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
