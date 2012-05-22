//
//  GHUIImageViewControl.m
//  GHUnitIOS
//
//  Created by Gabriel Handford on 4/1/11.
//  Copyright 2011. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//

#import "GHUIImageViewControl.h"


@implementation GHUIImageViewControl

@synthesize imageView=_imageView;

- (id)initWithFrame:(CGRect)frame {
  if ((self = [super initWithFrame:frame])) {
    _imageView = [[UIImageView alloc] init];
    [self addSubview:_imageView];
  }
  return self;
}

- (id)initWithFrame:(CGRect)frame image:(UIImage *)image highlightedImage:(UIImage *)highlightedImage {
  if ((self = [super initWithFrame:frame])) {
    _imageView = [[UIImageView alloc] initWithImage:image highlightedImage:highlightedImage];
    [self addSubview:_imageView];
  }
  return self;
}

- (void)layoutSubviews {
  [super layoutSubviews];
  _imageView.frame = self.bounds;
}

- (void)setHighlighted:(BOOL)highlighted {
  [super setHighlighted:highlighted];
  _imageView.highlighted = highlighted;
}

- (UIImage *)image {
  return _imageView.image;
}

- (void)setImage:(UIImage *)image {
  _imageView.image = image;
}

@end