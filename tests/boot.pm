# Copyright 2014-2018 SUSE LLC
# SPDX-License-Identifier: GPL-2.0-or-later

use base 'basetest';
use strict;
use testapi;

sub run {
    # wait for bootloader to appear
    assert_screen 'bootloader';

    # press enter to boot right away
    send_key 'ret';

    # wait for the desktop to appear
    assert_screen 'desktop', 300;
}

1;
