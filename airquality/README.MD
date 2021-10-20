This project is based on ESPHome to generate and upload the code on the ESP32.

I use an ESP32 38 pins, but any ESP32/8266 which can use 1 uart, 1 spi and 1 i2c at the same time will work.

The sensors are:
- PM, HCHO, temperature and moisture: PM5003ST
- CO2 and VOC: sgp30
The screen is a Waveshare 2.9 inch E-Paper Gray (https://www.amazon.fr/gp/product/B071LGVVL1/ref=ppx_yo_dt_b_asin_title_o01_s00).

After creating a new configuration in ESPHome, complete the yaml file with the content of airquality.yaml file. Copy the fonts and images directories in the configuration directory of ESPHome (for home assistant it's config/esphome).

The pins used for this configuration:

sgp30:
- sda: GPIO17
- scl: GPIO16

PM5003ST:
- tx pin : GPIO13

Screen:
- clock: GPIO18
- out: GPIO23
- cs: GPIO05
- dc: GPIO04
- busy: GPIO02
- reset: GPIO14
