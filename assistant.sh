#!/bin/bash

echo "What can i do for you" 

read text

tgpt -q "($text)" | ./piper/piper --model piper/en_GB-cori-high.onnx --output-raw | aplay -r 22050 -f S16_LE -t raw -