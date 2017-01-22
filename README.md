# android_device_huawei_rio

You need to create .repo/local_manifests/android_manifest.xml, and put this content : 

<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="Huawei-Dev/android_kernel_huawei_msm8939" path="kernel/huawei/msm8939" remote="github" revision="7.1.1"/>
  <project name="Huawei-Dev/android_device_huawei_rio" path="device/huawei/rio" remote="github" revision="7.1.1"/>
  <project name="Huawei-Dev/android_vendor_huawei_rio" path="vendor/huawei/rio" remote="github" revision="7.1.1"/>
  <project name="LineageOS/android_device_qcom_common" path="device/qcom/common" remote="github" revision="cm-14.1"/>
  <project name="LineageOS/android_packages_resources_devicesettings" path="packages/resources/devicesettings" remote="github" revision="cm-14.1"/>
  <project name="LineageOS/android_packages_apps_FlipFlap" path="packages/apps/FlipFlap" remote="github" revision="cm-14.1"/>
  <project name="LineageOS/android_vendor_nxp-nfc_opensource_Nfc" path="vendor/nxp-nfc/opensource/Nfc" remote="github" revision="cm-14.1"/>
  <project name="LineageOS/android_vendor_nxp-nfc_opensource_libnfc-nci" path="vendor/nxp-nfc/opensource/libnfc-nci" remote="github" revision="cm-14.1"/>
  <project name="LineageOS/android_vendor_nxp-nfc_opensource_frameworks" path="vendor/nxp-nfc/opensource/frameworks" remote="github" revision="cm-14.1"/>
</manifest>


