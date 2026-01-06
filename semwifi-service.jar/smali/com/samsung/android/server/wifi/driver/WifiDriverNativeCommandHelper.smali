.class public Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final ANT_FILE:I = 0x4

.field public static final BAD_AP_FILE:I = 0x8

.field public static final CID_FILE:I = 0x1

.field public static final DCXO_CALIBRATION_FILE:I = 0xa

.field public static final FRAMEBURST_FILE:I = 0x3

.field public static final MAC_FILE:I = 0x0

.field public static final MEMORY_DUMP_MODE_FILE:I = 0x7

.field public static final PSM_FILE:I = 0x2

.field public static final SOFT_AP_VER_FILE:I = 0x6

.field public static final SUPPORTED_FEATURE:I = 0x9

.field static final UPLOAD_MODE_DISABLED_STR:Ljava/lang/String; = "2"

.field static final UPLOAD_MODE_ENABLED_STR:Ljava/lang/String; = "3"

.field static final VENDOR_WLAN_DRIVER_MODE:Ljava/lang/String; = "vendor.wlandriver.mode"

.field static final VENDOR_WLAN_DRIVER_STATUS:Ljava/lang/String; = "vendor.wlandriver.status"

.field public static final WIFIVER_FILE:I = 0x5


# instance fields
.field private final driverPropertyIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->driverPropertyIds:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "vendor.wlandriver.mode"

    .line 19
    .line 20
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "vendor.wlandriver.status"

    .line 29
    .line 30
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public getAntInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method getChipsetVendorName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getChipsetVendorName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getDcxoCalibrationData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getFeatureInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/16 v0, 0x9

    .line 4
    .line 5
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getFrameburstInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method getMacAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public getPsmInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public getVendorWlanDriverProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v0, "vendor.wlandriver.mode"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "vendor.wlandriver.status"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->driverPropertyIds:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-interface {v0, p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorProperty(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method getWifiCid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method getWifiVersions()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public isUploadModeEnabled()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_0
    const-string v0, "3"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public removeFactoryMacAddress()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->removeVendorConnFile(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public setAntInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    invoke-interface {p0, v0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->writeVendorConnFile(ILjava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public setDcxoCalibrationData(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    invoke-interface {p0, v0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->writeVendorConnFile(ILjava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public setFactoryMacAddress(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 10
    .line 11
    invoke-interface {p0, v1, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->writeVendorConnFile(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public setFrameburstInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-interface {p0, v0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->writeVendorConnFile(ILjava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public setPsmInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-interface {p0, v0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->writeVendorConnFile(ILjava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public setUploadModeEnabled(Z)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p1, "3"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p1, "2"

    .line 9
    .line 10
    :goto_0
    const/4 v0, 0x7

    .line 11
    invoke-interface {p0, v0, p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->writeVendorConnFile(ILjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public setVendorWlanDriverProp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v0, "vendor.wlandriver.mode"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const-string v0, "vendor.wlandriver.status"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->driverPropertyIds:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    invoke-interface {v0, p0, p2}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->setVendorProperty(ILjava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public updateBadApList()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->updateVendorConnFile(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public updateWifiVersions()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->wifiNative:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommand;->updateVendorConnFile(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method
