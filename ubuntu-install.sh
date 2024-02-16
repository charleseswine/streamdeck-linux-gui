#!/bin/bash

rm -rf $HOME/.local/lib/python3.10/site-packages/streamdeck_linux_gui-4.1.0.dist-info
rm -rf $HOME/.local/lib/python3.10/site-packages/streamdeck_ui
rm -rf $HOME/.local/lib/python3.10/site-packages/streamdeck_*
rm -rf $HOME/.local/bin/streamdeck
rm -rf $HOME/.local/bin/streamdeckc

rm -rf dist
rm -rf $HOME/.local/local
python3 -m build --wheel --no-isolation
python3 -m installer -p $HOME/.local dist/*.whl

mv $HOME/.local/local/lib/python3.10/dist-packages/* $HOME/.local/lib/python3.10/site-packages/
mv $HOME/.local/local/bin/streamdeck $HOME/.local/bin/streamdeck
mv $HOME/.local/local/bin/streamdeckc $HOME/.local/bin/streamdeckc
