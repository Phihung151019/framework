.class public Lcom/samsung/android/server/uwb/bigdata/item/UwbDeviceInfoCallback;
.super Ljava/lang/Object;
.source "UwbDeviceInfoCallback.java"

# interfaces
.implements Lcom/samsung/android/server/uwb/bigdata/SurveyLogSender$Callback;


# static fields
.field private static final DBG:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "UwbDeviceInfoCallback"


# instance fields
.field mSamsungExtension:Lcom/samsung/android/server/uwb/SamsungExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/uwb/bigdata/item/UwbDeviceInfoCallback;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/uwb/SamsungExtension;Landroid/content/Context;)V
    .locals 2
    .param p1, "samsungExtension"    # Lcom/samsung/android/server/uwb/SamsungExtension;
    .param p2, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/samsung/android/server/uwb/bigdata/item/UwbDeviceInfoCallback;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UwbDeviceInfoCallback"

    const-string v1, "SurveyLogCAllback created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/server/uwb/bigdata/item/UwbDeviceInfoCallback;->mSamsungExtension:Lcom/samsung/android/server/uwb/SamsungExtension;

    .line 23
    return-void
.end method

.method private getVendorName()Ljava/lang/String;
    .locals 2

    .line 60
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getUwbChipInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SR100T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getUwbChipInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SR200T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getUwbChipInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QM35725"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "QORVO"

    return-object v0

    .line 65
    :cond_1
    const-string v0, "DEFAULT"

    return-object v0

    .line 61
    :cond_2
    :goto_0
    const-string v0, "NXP"

    return-object v0
.end method


# virtual methods
.method public getDefaultMessage(I)Lcom/samsung/android/server/uwb/bigdata/LogMessage;
    .locals 8
    .param p1, "flag"    # I

    .line 27
    const-string v0, "."

    invoke-static {}, Lcom/samsung/android/server/uwb/bigdata/LogMessage;->createBuilder()Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v1

    .line 29
    .local v1, "logBuilder":Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    .line 30
    const-string v2, "UVEN"

    invoke-direct {p0}, Lcom/samsung/android/server/uwb/bigdata/item/UwbDeviceInfoCallback;->getVendorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    .line 31
    const-string v2, "UCHP"

    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getUwbChipInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    .line 35
    :cond_0
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    .line 36
    const-string v2, "Add UWB Common Info"

    const-string v3, "UwbDeviceInfoCallback"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/item/UwbDeviceInfoCallback;->mSamsungExtension:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/SamsungExtension;->getSecUwbDeviceInfo()Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;

    move-result-object v2

    .line 40
    .local v2, "secUwbDeviceInfo":Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;
    if-eqz v2, :cond_1

    .line 41
    const-string v4, ""

    .line 42
    .local v4, "deviceInfo":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n F/W Version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFwMajorVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFwMinorVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n FiRa UCI Version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 43
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFiraUciGenMajorVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFiraUciGenMinorVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n Vendor UCI Version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 44
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getVendorUciMajorVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getVendorUciMinorVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    .end local v4    # "deviceInfo":Ljava/lang/String;
    .local v5, "deviceInfo":Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v3, "DUCV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFwMajorVersion()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFwMinorVersion()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v3

    const-string v4, "DMWV"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFiraUciGenMajorVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getFiraUciGenMinorVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;

    move-result-object v3

    const-string v4, "DFWV"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getVendorUciMajorVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;->getVendorUciMinorVersion()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v2    # "secUwbDeviceInfo":Lcom/samsung/uwb/support/data/SecUwbDeviceInfo;
    .end local v5    # "deviceInfo":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/bigdata/LogMessage$Builder;->build()Lcom/samsung/android/server/uwb/bigdata/LogMessage;

    move-result-object v0

    return-object v0
.end method
