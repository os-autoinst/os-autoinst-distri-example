#!/usr/bin/env perl
# Copyright SUSE LLC
# SPDX-License-Identifier: GPL-2.0-or-later

use Test::Most;
use Test::Exception;

throws_ok {
    require OpenQA::Test::TimeLimit;
    import OpenQA::Test::TimeLimit;
} qr/OpenQA::Test::TimeLimit: Need argument on import/, 'use without parameters is not allowed';

lives_ok {
    require OpenQA::Test::TimeLimit;
    import OpenQA::Test::TimeLimit 10;
} 'use with parameters is ok';

done_testing();
