#!/bin/bash

while true; do
	tgpt -q -i | tr '*' ',' | ./piper/piper --model piper/en_GB-cori-high.onnx --output-raw | aplay -r 22050 -f S16_LE -t raw -
done
