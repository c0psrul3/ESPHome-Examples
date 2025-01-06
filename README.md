# ESPHome - Device Configuration Examples
![ESPHome logo dark](https://esphome.io/_static/logo-text-on-dark.svg)


## Complete Examples

* [EXAMPLES.with-mqtt.yaml](./EXAMPLES.with-mqtt.yaml)
* [EXAMPLES.moisture-sensor.yaml](./EXAMPLES.moisture-sensor.yaml)


## Example Block Snippets




----
## Devices

* ESP32 - [Datasheet](https://www.espressif.com/sites/default/files/documentation/esp32_datasheet_en.pdf)
  * [TinyPico](#TinyPico)
  * [Wemos D1](#Wemos_D1)
* ESP32-S2 - [Datasheet](https://www.espressif.com/sites/default/files/documentation/esp32-s2_datasheet_en.pdf)
  * [LOLIN S2 Mini](#lolin_s2_mini)
* ESP32-S3 - [Datasheet](https://www.espressif.com/sites/default/files/documentation/esp32-s3_datasheet_en.pdf)
  * [Waveshare ESP32-S3 Zero](#Waveshare_ESP32-S3-Zero)
  * [LOLIN S3 Pro](#lolin_s3_pro)
* ESP32-C3 - [Datasheet](https://www.espressif.com/sites/default/files/documentation/esp32-c3_datasheet_en.pdf)


#### [TinyPico](https://www.tinypico.com/)
+ ![Pinout][pinout-tinypico]
+ [PlatformIO][platformio-tinypico]
  ```yaml
  esp32:
    board: tinypico
    framework:
      type: arduino
  ```

#### [Wemos_D1](https://wemos-d1.com/)
+ ![Pinout][pinout-wemos-d1-mini]
+ [PlatformIO][platformio-wemos-d1-mini]


#### [Waveshare_ESP32-S3-Zero](https://www.waveshare.com/wiki/ESP32-S3-Zero)
+ ![Pinout][pinout-esp32-s3-zero]
+ [ESPHome - discussion](https://www.reddit.com/r/Esphome/comments/1b5ufmx/esp32_s3_zero_support/)
+ ESPHome Example
  ```yaml
  esp32:
    board: adafruit_feather_esp32s3
    framework:
      type: esp-idf
      version: recommended
      # Custom sdkconfig options
      sdkconfig_options:
        COMPILER_OPTIMIZATION_SIZE: y
      # Advanced tweaking options
      advanced:
        ignore_efuse_mac_crc: false
  ```
+ PlatformIO
  + [forum discussion - config example][platformio-esp32-s3-zero]
  + [Examples: reference configuration](https://github.com/sivar2311/ESP32-S3-PlatformIO-Flash-and-PSRAM-configurations)
  + serial output (debugging)
    ```
    # You need to enable USB-CDC by
    
    build_flags = 
      -DARDUINO_USB_CDC_ON_BOOT=1
    
    This allows you to use the Serial object.
    After a reboot of the ESP32 your PC will detect a new Serial device.
    ```
  + Example: platformio.ini
    ```
    [env:esp32-s3-devkitc-1]
    platform = espressif32
    board = esp32-s3-devkitc-1
    framework = arduino
    board_upload.flash_size = 4MB
    board_build.partitions = default.csv
    build_flags = 
      -DARDUINO_USB_CDC_ON_BOOT=1
      -DBOARD_HAS_PSRAM
    ```

#### [lolin_s2_mini](https://www.wemos.cc/en/latest/s2/s2_mini.html)
+ ![Pinout][pinout-lolin-s2-mini]
+ [PlatformIO][platformio-lolin_s2]
+ [MicroSD card file read/write](https://www.roboticboat.uk/Microcontrollers/LolinESP32S2mini/SDcard/SDcard.html)
+ [MicroSD card file read/write sketch][sketch-code-lolin-s2-microsd]


#### lolin_s3_pro
+ ![Pinout][pinout-lolin-s3-pro]
+ [LOLIN S3 Pro - pinout, datasheet, specs](https://mischianti.org/wemos-lolin-s3-pro-esp32-s3-high-resolution-pinout-datasheet-and-specs/)




#### References:
* [nuttytree/ESPHome-Devices](https://github.com/nuttytree/ESPHome-Devices)
* [Presence and Air Quality - example](https://github.com/withanhdammit/ESPHome-Presence/blob/main/README.md)
* [VDBX - ESPHome Examples](https://wiki.vdbx.io/wild-ideas/esphome-configs)

[detailed-tinypico]: https://s3.amazonaws.com/images.ecwid.com/images/wysiwyg/product/90477757/577111313/1692399779744304132957/main_features_tinypico_jpg "TinyPico detailed"
[pinout-tinypico]: ./pinouts/TinyPico.jpg "TinyPico"
[platformio-tinypico]: (https://docs.platformio.org/en/latest/boards/espressif32/tinypico.html)

[pinout-wemos-d1-mini]: ./pinouts/Wemos_D1_mini_v4.webp "Wemos D1 mini v4"
[platformio-wemos-d1-mini]: https://docs.platformio.org/en/latest/boards/espressif32/wemos_d1_mini32.html

[pinout-waveshare-esp32-s3-zero]: ./pinouts/waveshare_esp32-s3_zero_pinout.png "Waveshare ESP32-S3 zero"
[pinout-esp32-s3-zero]: ./pinouts/waveshare_esp32-s3-zero_pinout.jpg "Waveshare ESP32-S3 zero"
[dimensions-esp32-s3-zero]: https://www.waveshare.com/w/upload/thumb/e/e0/ESP32-S3-Zero_02.jpg/500px-ESP32-S3-Zero_02.jpg "Waveshare ESP32-S3-Zero dimensions"
[platformio-esp32-s3-zero]: https://community.platformio.org/t/esp32-s3-zero-does-not-work-on-platformio/40297/9

[pinout-lolin-s2-mini]: ./pinouts/LOLIN_S2_mini_ESP32_pinout.webp "LOLIN S2 Mini"
[platformio-lolin_s2]: https://docs.platformio.org/en/latest/boards/espressif32/lolin_s2_mini.html
[sketch-code-lolin-s2-microsd]: https://gist.githubusercontent.com/pwesson/7b0fdf02a4d16423df94b08cd431d9e7/raw/e83d19ab860899b0b9812e41c53daa74d7feaea5/sketch_ESP32_S2_SDcard2.ino

[pinout-lolin-s3-pro]: ./pinouts/LOLIN-S3-Pro-pinout-high.png "LOLIN S3 Pro"

