import 'package:general_test/ui/ui.ui.dart';
import 'package:test/test.dart';

import 'values.dart';

void main() {
  testImages();
  testImagesColored();
}

void testImages() {
  test('Module: images (light)', () {
    final ui = UI.light;

    expect(ui.images.lorem.ipsum.dolor.amet, testImage01);
    expect(ui.images.lorem.ipsum.dolor.consectetur, testImage02);
    expect(ui.images.lorem.ipsum.sit.adipiscing, testImage03);
    expect(ui.images.lorem.ipsum.sit.elit, testImage04);
    expect(ui.images.lorem.ipsum.do_, testImage05);
    expect(ui.images.lorem.ipsum.sed, testImage06);
    expect(ui.images.lorem.eiusmod, testImage07);
    expect(ui.images.lorem.tempor, testImage08);
    expect(ui.images.incididunt, testImage09);
    expect(ui.images.ut, testImage10);
  });

  test('Module: images (dark)', () {
    final ui = UI.dark;

    expect(ui.images.lorem.ipsum.dolor.amet, testImage01);
    expect(ui.images.lorem.ipsum.dolor.consectetur, testImage02);
    expect(ui.images.lorem.ipsum.sit.adipiscing, testImage03);
    expect(ui.images.lorem.ipsum.sit.elit, testImage04);
    expect(ui.images.lorem.ipsum.do_, testImage05);
    expect(ui.images.lorem.ipsum.sed, testImage06);
    expect(ui.images.lorem.eiusmod, testImage07);
    expect(ui.images.lorem.tempor, testImage08);
    expect(ui.images.incididunt, testImage09);
    expect(ui.images.ut, testImage10);
  });
}

void testImagesColored() {
  test('Module: images_colored (light)', () {
    final ui = UI.light;

    expect(ui.imagesColored.lorem.ipsum.dolor.amet, ImagesColoredWithColors.light(testImage01));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur, ImagesColoredWithColors.light(testImage02));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing, ImagesColoredWithColors.light(testImage03));
    expect(ui.imagesColored.lorem.ipsum.sit.elit, ImagesColoredWithColors.light(testImage04));
    expect(ui.imagesColored.lorem.ipsum.do_, ImagesColoredWithColors.light(testImage05));
    expect(ui.imagesColored.lorem.ipsum.sed, ImagesColoredWithColors.light(testImage06));
    expect(ui.imagesColored.lorem.eiusmod, ImagesColoredWithColors.light(testImage07));
    expect(ui.imagesColored.lorem.tempor, ImagesColoredWithColors.light(testImage08));
    expect(ui.imagesColored.incididunt, ImagesColoredWithColors.light(testImage09));
    expect(ui.imagesColored.ut, ImagesColoredWithColors.light(testImage10));

    expect(ui.imagesColored.lorem.ipsum.dolor.amet.sed, (testImage01, testColor08));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.sed, (testImage02, testColor08));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.sed, (testImage03, testColor08));

    expect(ui.imagesColored.lorem.ipsum.dolor.amet.sedXml, (testImage01, testColor08));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.sedXml, (testImage02, testColor08));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.sedXml, (testImage03, testColor08));

    expect(ui.imagesColored.lorem.ipsum.dolor.amet.dolore, (testImage01, testColor09));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.dolore, (testImage02, testColor09));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.dolore, (testImage03, testColor09));

    expect(ui.imagesColored.lorem.ipsum.dolor.amet.doloreXml, (testImage01, testColor09));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.doloreXml, (testImage02, testColor09));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.doloreXml, (testImage03, testColor09));
    
    expect(ui.imagesColored.lorem.ipsum.dolor.amet.et, (testImage01, testColor13));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.et, (testImage02, testColor13));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.et, (testImage03, testColor13));
    
    expect(ui.imagesColored.lorem.ipsum.dolor.amet.minim, (testImage01, testColor14));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.minim, (testImage02, testColor14));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.minim, (testImage03, testColor14));
    
    expect(ui.imagesColored.lorem.ipsum.dolor.amet.minimXml, (testImage01, testColor14));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.minimXml, (testImage02, testColor14));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.minimXml, (testImage03, testColor14));

    expect(ui.imagesColored.lorem.ipsum.dolor.amet.colored(testColor01), (testImage01, testColor01));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.colored(testColor01), (testImage02, testColor01));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.colored(testColor01), (testImage03, testColor01));
  });

  test('Module: images (dark)', () {
    final ui = UI.dark;

    expect(ui.imagesColored.lorem.ipsum.dolor.amet, ImagesColoredWithColors.dark(testImage01));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur, ImagesColoredWithColors.dark(testImage02));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing, ImagesColoredWithColors.dark(testImage03));
    expect(ui.imagesColored.lorem.ipsum.sit.elit, ImagesColoredWithColors.dark(testImage04));
    expect(ui.imagesColored.lorem.ipsum.do_, ImagesColoredWithColors.dark(testImage05));
    expect(ui.imagesColored.lorem.ipsum.sed, ImagesColoredWithColors.dark(testImage06));
    expect(ui.imagesColored.lorem.eiusmod, ImagesColoredWithColors.dark(testImage07));
    expect(ui.imagesColored.lorem.tempor, ImagesColoredWithColors.dark(testImage08));
    expect(ui.imagesColored.incididunt, ImagesColoredWithColors.dark(testImage09));
    expect(ui.imagesColored.ut, ImagesColoredWithColors.dark(testImage10));

    expect(ui.imagesColored.lorem.ipsum.dolor.amet.sed, (testImage01, testColor07));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.sed, (testImage02, testColor07));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.sed, (testImage03, testColor07));

    expect(ui.imagesColored.lorem.ipsum.dolor.amet.sedXml, (testImage01, testColor07));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.sedXml, (testImage02, testColor07));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.sedXml, (testImage03, testColor07));

    expect(ui.imagesColored.lorem.ipsum.dolor.amet.dolore, (testImage01, testColor09));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.dolore, (testImage02, testColor09));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.dolore, (testImage03, testColor09));

    expect(ui.imagesColored.lorem.ipsum.dolor.amet.doloreXml, (testImage01, testColor09));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.doloreXml, (testImage02, testColor09));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.doloreXml, (testImage03, testColor09));
    
    expect(ui.imagesColored.lorem.ipsum.dolor.amet.et, (testImage01, testColor13));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.et, (testImage02, testColor13));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.et, (testImage03, testColor13));

    expect(ui.imagesColored.lorem.ipsum.dolor.amet.minim, (testImage01, testColor14));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.minim, (testImage02, testColor14));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.minim, (testImage03, testColor14));
    
    expect(ui.imagesColored.lorem.ipsum.dolor.amet.minimXml, (testImage01, testColor14));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.minimXml, (testImage02, testColor14));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.minimXml, (testImage03, testColor14));

    expect(ui.imagesColored.lorem.ipsum.dolor.amet.colored(testColor01), (testImage01, testColor01));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur.colored(testColor01), (testImage02, testColor01));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing.colored(testColor01), (testImage03, testColor01));
  });
}
