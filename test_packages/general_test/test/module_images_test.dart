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

    expect(ui.imagesColored.lorem.ipsum.dolor.amet, ImagesColoredWithColors(testImage01, ui));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur, ImagesColoredWithColors(testImage02, ui));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing, ImagesColoredWithColors(testImage03, ui));
    expect(ui.imagesColored.lorem.ipsum.sit.elit, ImagesColoredWithColors(testImage04, ui));
    expect(ui.imagesColored.lorem.ipsum.do_, ImagesColoredWithColors(testImage05, ui));
    expect(ui.imagesColored.lorem.ipsum.sed, ImagesColoredWithColors(testImage06, ui));
    expect(ui.imagesColored.lorem.eiusmod, ImagesColoredWithColors(testImage07, ui));
    expect(ui.imagesColored.lorem.tempor, ImagesColoredWithColors(testImage08, ui));
    expect(ui.imagesColored.incididunt, ImagesColoredWithColors(testImage09, ui));
    expect(ui.imagesColored.ut, ImagesColoredWithColors(testImage10, ui));

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

    expect(ui.imagesColored.lorem.ipsum.dolor.amet, ImagesColoredWithColors(testImage01, ui));
    expect(ui.imagesColored.lorem.ipsum.dolor.consectetur, ImagesColoredWithColors(testImage02, ui));
    expect(ui.imagesColored.lorem.ipsum.sit.adipiscing, ImagesColoredWithColors(testImage03, ui));
    expect(ui.imagesColored.lorem.ipsum.sit.elit, ImagesColoredWithColors(testImage04, ui));
    expect(ui.imagesColored.lorem.ipsum.do_, ImagesColoredWithColors(testImage05, ui));
    expect(ui.imagesColored.lorem.ipsum.sed, ImagesColoredWithColors(testImage06, ui));
    expect(ui.imagesColored.lorem.eiusmod, ImagesColoredWithColors(testImage07, ui));
    expect(ui.imagesColored.lorem.tempor, ImagesColoredWithColors(testImage08, ui));
    expect(ui.imagesColored.incididunt, ImagesColoredWithColors(testImage09, ui));
    expect(ui.imagesColored.ut, ImagesColoredWithColors(testImage10, ui));

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
