/*
   Copyright (c) 2014, The Linux Foundation. All rights reserved.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <cstdlib>
#include <fstream>
#include <string>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#include "init_msm8916.h"

void init_target_properties()
{
    char platform[PROP_VALUE_MAX];
    std::ifstream fin;
    std::string buf;
    int rc;
    bool boll;

    rc = property_get("ro.board.platform", platform);
    if (!rc || strncmp(platform, "msm8916", PROP_VALUE_MAX))
        return;

    fin.open("/proc/app_info");
    while (getline(fin, buf))
        if (buf.find("huawei_fac_product_name") != std::string::npos)
            break;
    fin.close();

    rc = property_get("ro.boot.hwsim", platform);
    if (!rc)
        return;

    if (buf.find("RIO-L01") != std::string::npos) {
        property_set("ro.product.model", "HUAWEI RIO-L01");
        property_set("ro.product.device", "hwRIO-L01");
        property_set("ro.build.product", "RIO-L01");
        property_set("ro.build.description", "RIO-L01-user 6.0.1 GRJ90 C432B340 release-keys");
        property_set("ro.build.fingerprint", "HUAWEI/RIO-L01/hwRIO-L01:6.0.1/HuaweiRIO-L01/C432B340:user/release-keys");
    }
    else if (buf.find("RIO-L02") != std::string::npos) {
        property_set("ro.product.model", "HUAWEI RIO-L02");
        property_set("ro.product.device", "hwRIO-L02");
        property_set("ro.build.product", "RIO-L02");
    }
    else if (buf.find("RIO-L03") != std::string::npos) {
        property_set("ro.product.model", "HUAWEI RIO-L03");
        property_set("ro.product.device", "hwRIO-L03");
        property_set("ro.build.product", "RIO-L03");
    }
    else if (buf.find("RIO-AL00") != std::string::npos) {
        property_set("ro.product.model", "HUAWEI RIO-AL00");
        property_set("ro.product.device", "hwRIO-AL00");
        property_set("ro.build.product", "RIO-AL00");
    }
    else if (buf.find("RIO-CL00") != std::string::npos) {
        property_set("ro.product.model", "HUAWEI RIO-CL00");
        property_set("ro.product.device", "hwRIO-CL00");
        property_set("ro.build.product", "RIO-CL00");
    }
    else if (buf.find("RIO-TL00") != std::string::npos) {
        property_set("ro.product.model", "HUAWEI RIO-TL00");
        property_set("ro.product.device", "hwRIO-TL00");
        property_set("ro.build.product", "RIO-TL00");
    }

    if (!strncmp(platform, "double", PROP_VALUE_MAX)) {
	property_set("persist.radio.multisim.config", "dsds");
	property_set("ro.telephony.ril.config", "simactivation,sim2gsmonly");
	property_set("ro.telephony.default_network", "9,9");
    } else {
	property_set("ro.telephony.ril.config", "simactivation");
	property_set("ro.telephony.default_network", "9");
    }
}
