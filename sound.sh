sudo #!/bin/bash

sudo hda-verb /dev/snd/hwC0D0 0x20 0x500 0x1b
sudo hda-verb /dev/snd/hwC0D0 0x20 0x477 0x4a4b
sudo hda-verb /dev/snd/hwC0D0 0x20 0x500 0xf
sudo hda-verb /dev/snd/hwC0D0 0x20 0x477 0x74
shutdown -h now

