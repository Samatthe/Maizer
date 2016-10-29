 
 /* declare a digitzer device generated with HID Descriptor tool */
/* 4 buttons (reports only 3 for compatibility), absolute pointer , normally generates X/Y valus of max. 15 bits   
 * this represents an absolute pointer device with a resolution of 0.1 mm (2972 dots on a 29,7 cm tablet)
 * to the OS .
*/
PROGMEM char usbHidReportDescriptor[60] = {
    0x05, 0x01,                    // USAGE_PAGE (Generic Desktop)
    0x09, 0x02,                    // USAGE (Mouse)
    0xa1, 0x01,                    // COLLECTION (Application)
    0x09, 0x01,                    //   USAGE (Pointer)
    0xa1, 0x00,                    //   COLLECTION (Physical)
    0x05, 0x09,                    //     USAGE_PAGE (Button)
    0x19, 0x01,                    //     USAGE_MINIMUM (Button 1)
    0x29, 0x03,                    //     USAGE_MAXIMUM (Button 3)
    0x15, 0x00,                    //     LOGICAL_MINIMUM (0)
    0x25, 0x01,                    //     LOGICAL_MAXIMUM (1)
    0x95, 0x03,                    //     REPORT_COUNT (3)
    0x75, 0x01,                    //     REPORT_SIZE (1)
    0x81, 0x02,                    //     INPUT (Data,Var,Abs)
    0x95, 0x01,                    //     REPORT_COUNT (1)
    0x75, 0x05,                    //     REPORT_SIZE (5)
    0x81, 0x03,                    //     INPUT (Cnst,Var,Abs)
    0x05, 0x01,                    //     USAGE_PAGE (Generic Desktop)
    0x09, 0x30,                    //     USAGE (X)
    0x09, 0x31,                    //     USAGE (Y)
    0x35, 0x00,                    //     PHYSICAL_MINIMUM (0)
    0x46, 0x9d, 0x0b,              //     PHYSICAL_MAXIMUM (2973)
    0x15, 0x00,                    //     LOGICAL_MINIMUM (0)
    0x26, 0x9d, 0x0b,              //     LOGICAL_MAXIMUM (2973)
    0x65, 0x11,                    //     UNIT (SI Lin:Distance)
    0x55, 0x0e,                    //     UNIT_EXPONENT (-2)
    0x75, 0x10,                    //     REPORT_SIZE (16)
    0x95, 0x02,                    //     REPORT_COUNT (2)
    0x81, 0x02,                    //     INPUT (Data,Var,Abs)
    0xc0,                          //   END_COLLECTION
    0xc0                           // END_COLLECTION
};