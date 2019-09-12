#!/bin/bash
systemctl restart bluetooth
pacmd list-cards
pacmd set-card-profile 13 a2dp_sink
