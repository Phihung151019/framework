.class public Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;
.super Ljava/lang/Object;
.source "SamsungUwbSessionManager.java"

# interfaces
.implements Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SamsungUwbSessionManager"


# instance fields
.field private final PP_ALLOW_LIST:[Ljava/lang/String;

.field private final mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

.field private final mContext:Landroid/content/Context;

.field private final mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

.field private final mPostProcessingManager:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private final mUwbExtAdvertiseManager:Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;

.field private final mUwbSessionMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OEaKQwQ8QuY6mQmJzkV32FbdWc8(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->lambda$setWifiUwbCoexEnabled$0(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetPP_ALLOW_LIST(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->PP_ALLOW_LIST:[Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/IVendorExtension;Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;Lcom/samsung/android/server/uwb/bigdata/BigdataManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vendorExtension"    # Lcom/samsung/android/server/uwb/IVendorExtension;
    .param p3, "vendorExtensionWrapper"    # Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;
    .param p4, "bigdataManager"    # Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    const-string v0, "com.samsung.uwbtest"

    const-string v1, "com.sec.android.app.uwbtest"

    const-string v2, "com.samsung.android.mcfserver"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->PP_ALLOW_LIST:[Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    .line 69
    new-instance v0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mPostProcessingManager:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    .line 70
    new-instance v0, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbExtAdvertiseManager:Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;

    .line 72
    invoke-virtual {p3, p0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->setSessionListener(Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbExtAdvertiseManager:Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;

    invoke-virtual {p3, v0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->setAdvertiseListener(Lcom/samsung/android/server/uwb/IVendorExtension$AdvertiseNotification;)V

    .line 74
    iput-object p4, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    .line 76
    const-string v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 77
    return-void
.end method

.method private addUwbSession(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)V
    .locals 2
    .param p1, "uwbSession"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addUwbSession: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionToken()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungUwbSessionManager"

    invoke-static {v1, v0}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method public static degreeToRadian(F)F
    .locals 4
    .param p0, "angleInDegrees"    # F

    .line 570
    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private synthetic lambda$setWifiUwbCoexEnabled$0(IZ)V
    .locals 2
    .param p1, "channelNumber"    # I
    .param p2, "enable"    # Z

    .line 351
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiUwbCoexEnabled(IZ)I

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiUwbCoexEnabled : ch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungUwbSessionManager"

    invoke-static {v1, v0}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method private recordOwrMeasurementFromPostProcessedRangeData(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;Lcom/samsung/uwb/support/data/ranging/RangingData;)V
    .locals 4
    .param p1, "uwbSession"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    .param p2, "rangingData"    # Lcom/samsung/uwb/support/data/ranging/RangingData;

    .line 286
    invoke-virtual {p2}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 287
    .local v0, "rangingMeasurement":Lcom/samsung/uwb/support/data/ranging/Measurement;
    instance-of v1, v0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    if-eqz v1, :cond_1

    .line 288
    move-object v1, v0

    check-cast v1, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getMacAddress()[B

    move-result-object v1

    .line 289
    .local v1, "macAddress":[B
    if-nez v1, :cond_0

    .line 290
    const-string v2, "SamsungUwbSessionManager"

    const-string v3, "OwR Aoa UwbSession: Invalid MacAddress for remote device"

    invoke-static {v2, v3}, Lcom/samsung/android/server/uwb/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void

    .line 294
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseUtil;->macAddressByteArrayToLong([B)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->addRemoteMacAddress(J)V

    .line 295
    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbExtAdvertiseManager:Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;

    move-object v3, v0

    check-cast v3, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->updateExtAdvertiseTarget(Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;)V

    .line 297
    .end local v1    # "macAddress":[B
    :cond_1
    return-void
.end method

.method private removeAdvertiserData(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)V
    .locals 4
    .param p1, "uwbSession"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    .line 279
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getRemoteMacAddressList()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 280
    .local v1, "remoteMacAddress":J
    iget-object v3, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbExtAdvertiseManager:Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseManager;->removeExtAdvertiseTarget(J)V

    .line 281
    .end local v1    # "remoteMacAddress":J
    goto :goto_0

    .line 282
    :cond_0
    return-void
.end method

.method private removeUwbSession(I)V
    .locals 2
    .param p1, "sessionId"    # I

    .line 374
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void
.end method

.method private setAntennaConfigurations(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;Z)V
    .locals 6
    .param p1, "uwbSession"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    .param p2, "isAoaEnabled"    # Z

    .line 301
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 302
    new-instance v2, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    invoke-direct {v2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;-><init>()V

    new-array v3, v1, [B

    aput-byte v1, v3, v0

    .line 303
    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setAntennaConfigurationTx([B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v1

    .line 304
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getChannelNumber()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getRxAntForRanging(I)[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setAntennaConfigurationRx(B[B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v0

    .local v0, "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    goto :goto_0

    .line 307
    .end local v0    # "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    :cond_0
    new-instance v2, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    invoke-direct {v2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;-><init>()V

    new-array v3, v1, [B

    aput-byte v1, v3, v0

    .line 308
    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setAntennaConfigurationTx([B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v0

    .line 309
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getRxAntForAoaPortrait()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setAntennaConfigurationRx(B[B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v0

    .line 313
    .restart local v0    # "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    :goto_0
    new-instance v1, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;

    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionToken()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;-><init>(JLjava/util/List;)V

    .line 314
    .local v1, "uciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/uci/UciPacket;->getGid()B

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/uwb/support/uci/UciPacket;->getOid()B

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/server/uwb/IVendorExtension;->sendVendorUciMessage(II[B)[B

    .line 315
    return-void
.end method

.method private setWifiUwbCoexEnabled(IZ)V
    .locals 2
    .param p1, "channelNumber"    # I
    .param p2, "enable"    # Z

    .line 350
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;IZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 353
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 354
    return-void
.end method

.method private setWifiUwbCoexEnabled(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;Z)V
    .locals 8
    .param p1, "uwbSession"    # Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    .param p2, "enable"    # Z

    .line 318
    if-nez p1, :cond_0

    .line 319
    return-void

    .line 321
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v0, "chNum":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getChannelNumber()I

    move-result v1

    .line 323
    .local v1, "channelNumber":I
    if-eqz p2, :cond_1

    .line 324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "SamsungUwbSessionManager"

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 328
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    .line 329
    .local v5, "session":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sessionid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sessionState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    if-eq v5, p1, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionState()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 331
    invoke-virtual {v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getChannelNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 332
    invoke-virtual {v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getChannelNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;>;"
    .end local v5    # "session":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    :cond_2
    goto :goto_0

    .line 337
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "coex Channel Number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    const/4 v2, 0x0

    invoke-direct {p0, v2, v2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->setWifiUwbCoexEnabled(IZ)V

    goto :goto_1

    .line 341
    :cond_4
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 342
    invoke-direct {p0, v2, v4}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->setWifiUwbCoexEnabled(IZ)V

    goto :goto_1

    .line 344
    :cond_5
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 345
    invoke-direct {p0, v2, v4}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->setWifiUwbCoexEnabled(IZ)V

    .line 347
    :cond_6
    :goto_1
    return-void
.end method

.method private updateRangingReport(Landroid/uwb/RangingReport;Lcom/samsung/uwb/support/data/ranging/RangingData;Ljava/lang/String;Lcom/google/uwb/support/base/Params;)Landroid/uwb/RangingReport;
    .locals 28
    .param p1, "rangingReport"    # Landroid/uwb/RangingReport;
    .param p2, "rangingData"    # Lcom/samsung/uwb/support/data/ranging/RangingData;
    .param p3, "protocolName"    # Ljava/lang/String;
    .param p4, "sessionParams"    # Lcom/google/uwb/support/base/Params;

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/uwb/RangingReport;->getMeasurements()Ljava/util/List;

    move-result-object v0

    .line 413
    .local v0, "baseRangingMeasurements":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/RangingMeasurement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v1, "postProcessedRangingMeasurements":Ljava/util/List;, "Ljava/util/List<Landroid/uwb/RangingMeasurement;>;"
    const/4 v2, 0x1

    .line 416
    .local v2, "isAoaAzimuthEnabled":Z
    const/4 v3, 0x1

    .line 419
    .local v3, "isAoaElevationEnabled":Z
    const-string v4, "fira"

    move-object/from16 v5, p3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "SamsungUwbSessionManager"

    if-eqz v4, :cond_0

    .line 420
    const-string v4, "FiraOpenSessionParams"

    invoke-static {v6, v4}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    move-object/from16 v4, p4

    check-cast v4, Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    .line 422
    .local v4, "openSessionParams":Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    invoke-virtual {v4}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getAoaResultRequest()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 441
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid AOA result req"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 437
    :sswitch_0
    const/4 v2, 0x0

    .line 439
    goto :goto_0

    .line 434
    :sswitch_1
    const/4 v3, 0x0

    .line 435
    goto :goto_0

    .line 431
    :sswitch_2
    goto :goto_0

    .line 424
    :sswitch_3
    const/4 v2, 0x0

    .line 425
    const/4 v3, 0x0

    .line 426
    nop

    .line 445
    .end local v4    # "openSessionParams":Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurementType()B

    move-result v4

    const-string v7, "AoaElevation(): "

    const-string v8, "AoaAzimuth(): "

    const/4 v9, 0x1

    const/4 v12, 0x0

    if-ne v4, v9, :cond_a

    .line 446
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v4

    check-cast v4, [Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    .line 448
    .local v4, "twrMeasurement":[Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getNumOfRangingMeasurements()B

    move-result v13

    if-ge v9, v13, :cond_9

    .line 449
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/uwb/RangingMeasurement;

    .line 451
    .local v13, "baseRangingMeasurement":Landroid/uwb/RangingMeasurement;
    invoke-virtual {v13}, Landroid/uwb/RangingMeasurement;->getStatus()I

    move-result v14

    if-eqz v14, :cond_1

    .line 452
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v16, v2

    move/from16 v27, v3

    move/from16 v17, v12

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    goto/16 :goto_5

    .line 454
    :cond_1
    new-instance v14, Landroid/uwb/RangingMeasurement$Builder;

    invoke-direct {v14}, Landroid/uwb/RangingMeasurement$Builder;-><init>()V

    .line 455
    invoke-virtual {v13}, Landroid/uwb/RangingMeasurement;->getRemoteDeviceAddress()Landroid/uwb/UwbAddress;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/uwb/RangingMeasurement$Builder;->setRemoteDeviceAddress(Landroid/uwb/UwbAddress;)Landroid/uwb/RangingMeasurement$Builder;

    move-result-object v14

    .line 456
    invoke-virtual {v14, v12}, Landroid/uwb/RangingMeasurement$Builder;->setStatus(I)Landroid/uwb/RangingMeasurement$Builder;

    move-result-object v14

    .line 457
    const-wide/high16 v15, 0x4059000000000000L    # 100.0

    invoke-virtual {v13}, Landroid/uwb/RangingMeasurement;->getElapsedRealtimeNanos()J

    move-result-wide v10

    invoke-virtual {v14, v10, v11}, Landroid/uwb/RangingMeasurement$Builder;->setElapsedRealtimeNanos(J)Landroid/uwb/RangingMeasurement$Builder;

    move-result-object v10

    .line 458
    invoke-virtual {v13}, Landroid/uwb/RangingMeasurement;->getLineOfSight()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/uwb/RangingMeasurement$Builder;->setLineOfSight(I)Landroid/uwb/RangingMeasurement$Builder;

    move-result-object v10

    .line 459
    invoke-virtual {v13}, Landroid/uwb/RangingMeasurement;->getMeasurementFocus()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/uwb/RangingMeasurement$Builder;->setMeasurementFocus(I)Landroid/uwb/RangingMeasurement$Builder;

    move-result-object v10

    .line 460
    invoke-virtual {v13}, Landroid/uwb/RangingMeasurement;->getRssiDbm()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/uwb/RangingMeasurement$Builder;->setRssiDbm(I)Landroid/uwb/RangingMeasurement$Builder;

    move-result-object v10

    .line 461
    invoke-virtual {v13}, Landroid/uwb/RangingMeasurement;->getRangingMeasurementMetadata()Landroid/os/PersistableBundle;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/uwb/RangingMeasurement$Builder;->setRangingMeasurementMetadata(Landroid/os/PersistableBundle;)Landroid/uwb/RangingMeasurement$Builder;

    move-result-object v10

    .line 463
    .local v10, "rangingMeasurement":Landroid/uwb/RangingMeasurement$Builder;
    invoke-virtual {v13}, Landroid/uwb/RangingMeasurement;->getDistanceMeasurement()Landroid/uwb/DistanceMeasurement;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 464
    invoke-virtual {v13}, Landroid/uwb/RangingMeasurement;->getDistanceMeasurement()Landroid/uwb/DistanceMeasurement;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/uwb/RangingMeasurement$Builder;->setDistanceMeasurement(Landroid/uwb/DistanceMeasurement;)Landroid/uwb/RangingMeasurement$Builder;

    .line 468
    :cond_2
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v27, v3

    move/from16 v17, v12

    move-wide/from16 v18, v15

    move/from16 v16, v2

    goto/16 :goto_4

    .line 469
    :cond_4
    :goto_2
    const/4 v11, 0x0

    .line 471
    .local v11, "angleOfArrivalMeasurement":Landroid/uwb/AngleOfArrivalMeasurement$Builder;
    if-eqz v2, :cond_5

    .line 472
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v17, v4, v9

    move-wide/from16 v18, v15

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getFinalAoaAzimuth()F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v20, Landroid/uwb/AngleMeasurement;

    aget-object v14, v4, v9

    .line 474
    invoke-virtual {v14}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getFinalAoaAzimuth()F

    move-result v14

    invoke-static {v14}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->degreeToRadian(F)F

    move-result v14

    float-to-double v14, v14

    aget-object v16, v4, v9

    .line 475
    move/from16 v17, v12

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getAoaAzimuthFom()I

    move-result v12

    move/from16 v16, v2

    move/from16 v27, v3

    .end local v2    # "isAoaAzimuthEnabled":Z
    .end local v3    # "isAoaElevationEnabled":Z
    .local v16, "isAoaAzimuthEnabled":Z
    .local v27, "isAoaElevationEnabled":Z
    int-to-double v2, v12

    div-double v25, v2, v18

    const-wide/16 v23, 0x0

    move-wide/from16 v21, v14

    invoke-direct/range {v20 .. v26}, Landroid/uwb/AngleMeasurement;-><init>(DDD)V

    move-object/from16 v2, v20

    .line 477
    .local v2, "azimuthAngleMeasurement":Landroid/uwb/AngleMeasurement;
    new-instance v3, Landroid/uwb/AngleOfArrivalMeasurement$Builder;

    invoke-direct {v3, v2}, Landroid/uwb/AngleOfArrivalMeasurement$Builder;-><init>(Landroid/uwb/AngleMeasurement;)V

    move-object v11, v3

    goto :goto_3

    .line 471
    .end local v16    # "isAoaAzimuthEnabled":Z
    .end local v27    # "isAoaElevationEnabled":Z
    .local v2, "isAoaAzimuthEnabled":Z
    .restart local v3    # "isAoaElevationEnabled":Z
    :cond_5
    move/from16 v27, v3

    move/from16 v17, v12

    move-wide/from16 v18, v15

    move/from16 v16, v2

    .line 479
    .end local v2    # "isAoaAzimuthEnabled":Z
    .end local v3    # "isAoaElevationEnabled":Z
    .restart local v16    # "isAoaAzimuthEnabled":Z
    .restart local v27    # "isAoaElevationEnabled":Z
    :goto_3
    if-eqz v27, :cond_6

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v4, v9

    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getFinalAoaElevation()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v20, Landroid/uwb/AngleMeasurement;

    aget-object v2, v4, v9

    .line 482
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getFinalAoaElevation()F

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->degreeToRadian(F)F

    move-result v2

    float-to-double v2, v2

    aget-object v12, v4, v9

    .line 483
    invoke-virtual {v12}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getAoaElevationFom()I

    move-result v12

    int-to-double v14, v12

    div-double v25, v14, v18

    const-wide/16 v23, 0x0

    move-wide/from16 v21, v2

    invoke-direct/range {v20 .. v26}, Landroid/uwb/AngleMeasurement;-><init>(DDD)V

    move-object/from16 v2, v20

    .line 485
    .local v2, "altitudeAngleMeasurement":Landroid/uwb/AngleMeasurement;
    if-eqz v11, :cond_6

    .line 486
    invoke-virtual {v11, v2}, Landroid/uwb/AngleOfArrivalMeasurement$Builder;->setAltitude(Landroid/uwb/AngleMeasurement;)Landroid/uwb/AngleOfArrivalMeasurement$Builder;

    .line 490
    .end local v2    # "altitudeAngleMeasurement":Landroid/uwb/AngleMeasurement;
    :cond_6
    if-eqz v11, :cond_7

    .line 491
    invoke-virtual {v11}, Landroid/uwb/AngleOfArrivalMeasurement$Builder;->build()Landroid/uwb/AngleOfArrivalMeasurement;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/uwb/RangingMeasurement$Builder;->setAngleOfArrivalMeasurement(Landroid/uwb/AngleOfArrivalMeasurement;)Landroid/uwb/RangingMeasurement$Builder;

    .line 494
    :cond_7
    invoke-virtual {v13}, Landroid/uwb/RangingMeasurement;->getDestinationAngleOfArrivalMeasurement()Landroid/uwb/AngleOfArrivalMeasurement;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 495
    nop

    .line 496
    invoke-virtual {v13}, Landroid/uwb/RangingMeasurement;->getDestinationAngleOfArrivalMeasurement()Landroid/uwb/AngleOfArrivalMeasurement;

    move-result-object v2

    .line 495
    invoke-virtual {v10, v2}, Landroid/uwb/RangingMeasurement$Builder;->setDestinationAngleOfArrivalMeasurement(Landroid/uwb/AngleOfArrivalMeasurement;)Landroid/uwb/RangingMeasurement$Builder;

    .line 500
    .end local v11    # "angleOfArrivalMeasurement":Landroid/uwb/AngleOfArrivalMeasurement$Builder;
    :cond_8
    :goto_4
    invoke-virtual {v10}, Landroid/uwb/RangingMeasurement$Builder;->build()Landroid/uwb/RangingMeasurement;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    .end local v10    # "rangingMeasurement":Landroid/uwb/RangingMeasurement$Builder;
    .end local v13    # "baseRangingMeasurement":Landroid/uwb/RangingMeasurement;
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    move/from16 v12, v17

    move/from16 v3, v27

    goto/16 :goto_1

    .end local v16    # "isAoaAzimuthEnabled":Z
    .end local v27    # "isAoaElevationEnabled":Z
    .local v2, "isAoaAzimuthEnabled":Z
    .restart local v3    # "isAoaElevationEnabled":Z
    :cond_9
    move/from16 v16, v2

    move/from16 v27, v3

    .line 504
    .end local v2    # "isAoaAzimuthEnabled":Z
    .end local v3    # "isAoaElevationEnabled":Z
    .end local v9    # "i":I
    .restart local v16    # "isAoaAzimuthEnabled":Z
    .restart local v27    # "isAoaElevationEnabled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/uwb/RangingReport;->getRangingReportMetadata()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RangingReportMetadata;

    move-result-object v2

    .line 506
    .local v2, "metadata":Lcom/google/uwb/support/oemextension/RangingReportMetadata;
    new-instance v3, Landroid/uwb/RangingReport$Builder;

    invoke-direct {v3}, Landroid/uwb/RangingReport$Builder;-><init>()V

    .line 507
    invoke-virtual {v3, v1}, Landroid/uwb/RangingReport$Builder;->addMeasurements(Ljava/util/List;)Landroid/uwb/RangingReport$Builder;

    move-result-object v3

    .line 508
    invoke-virtual {v2}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/uwb/RangingReport$Builder;->addRangingReportMetadata(Landroid/os/PersistableBundle;)Landroid/uwb/RangingReport$Builder;

    move-result-object v3

    .line 509
    invoke-virtual {v3}, Landroid/uwb/RangingReport$Builder;->build()Landroid/uwb/RangingReport;

    move-result-object v3

    .line 506
    return-object v3

    .line 510
    .end local v4    # "twrMeasurement":[Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    .end local v16    # "isAoaAzimuthEnabled":Z
    .end local v27    # "isAoaElevationEnabled":Z
    .local v2, "isAoaAzimuthEnabled":Z
    .restart local v3    # "isAoaElevationEnabled":Z
    :cond_a
    move/from16 v16, v2

    move/from16 v27, v3

    move/from16 v17, v12

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    .end local v2    # "isAoaAzimuthEnabled":Z
    .end local v3    # "isAoaElevationEnabled":Z
    .restart local v16    # "isAoaAzimuthEnabled":Z
    .restart local v27    # "isAoaElevationEnabled":Z
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurementType()B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_11

    .line 511
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v2

    aget-object v2, v2, v17

    check-cast v2, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    .line 512
    .local v2, "owrAoaMeasurement":Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;
    move/from16 v3, v17

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/uwb/RangingMeasurement;

    .line 514
    .local v3, "baseRangingMeasurement":Landroid/uwb/RangingMeasurement;
    invoke-virtual {v3}, Landroid/uwb/RangingMeasurement;->getStatus()I

    move-result v4

    if-eqz v4, :cond_b

    .line 515
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 517
    :cond_b
    new-instance v4, Landroid/uwb/RangingMeasurement$Builder;

    invoke-direct {v4}, Landroid/uwb/RangingMeasurement$Builder;-><init>()V

    .line 518
    invoke-virtual {v3}, Landroid/uwb/RangingMeasurement;->getRemoteDeviceAddress()Landroid/uwb/UwbAddress;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/uwb/RangingMeasurement$Builder;->setRemoteDeviceAddress(Landroid/uwb/UwbAddress;)Landroid/uwb/RangingMeasurement$Builder;

    move-result-object v4

    .line 519
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/uwb/RangingMeasurement$Builder;->setStatus(I)Landroid/uwb/RangingMeasurement$Builder;

    move-result-object v4

    .line 520
    invoke-virtual {v3}, Landroid/uwb/RangingMeasurement;->getElapsedRealtimeNanos()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/uwb/RangingMeasurement$Builder;->setElapsedRealtimeNanos(J)Landroid/uwb/RangingMeasurement$Builder;

    move-result-object v4

    .line 521
    invoke-virtual {v3}, Landroid/uwb/RangingMeasurement;->getLineOfSight()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/uwb/RangingMeasurement$Builder;->setLineOfSight(I)Landroid/uwb/RangingMeasurement$Builder;

    move-result-object v4

    .line 523
    .local v4, "rangingMeasurement":Landroid/uwb/RangingMeasurement$Builder;
    if-nez v16, :cond_c

    if-eqz v27, :cond_10

    .line 524
    :cond_c
    const/4 v9, 0x0

    .line 526
    .local v9, "angleOfArrivalMeasurement":Landroid/uwb/AngleOfArrivalMeasurement$Builder;
    if-eqz v16, :cond_d

    .line 527
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getAoaAzimuth()F

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v20, Landroid/uwb/AngleMeasurement;

    .line 529
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getAoaAzimuth()F

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->degreeToRadian(F)F

    move-result v8

    float-to-double v10, v8

    .line 530
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getAoaAzimuthFom()I

    move-result v8

    int-to-double v12, v8

    div-double v25, v12, v18

    const-wide/16 v23, 0x0

    move-wide/from16 v21, v10

    invoke-direct/range {v20 .. v26}, Landroid/uwb/AngleMeasurement;-><init>(DDD)V

    move-object/from16 v8, v20

    .line 532
    .local v8, "azimuthAngleMeasurement":Landroid/uwb/AngleMeasurement;
    new-instance v10, Landroid/uwb/AngleOfArrivalMeasurement$Builder;

    invoke-direct {v10, v8}, Landroid/uwb/AngleOfArrivalMeasurement$Builder;-><init>(Landroid/uwb/AngleMeasurement;)V

    move-object v9, v10

    .line 534
    .end local v8    # "azimuthAngleMeasurement":Landroid/uwb/AngleMeasurement;
    :cond_d
    if-eqz v27, :cond_e

    .line 535
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getAoaElevation()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance v20, Landroid/uwb/AngleMeasurement;

    .line 537
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getAoaElevation()F

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->degreeToRadian(F)F

    move-result v6

    float-to-double v6, v6

    .line 538
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getAoaElevationFom()I

    move-result v8

    int-to-double v10, v8

    div-double v25, v10, v18

    const-wide/16 v23, 0x0

    move-wide/from16 v21, v6

    invoke-direct/range {v20 .. v26}, Landroid/uwb/AngleMeasurement;-><init>(DDD)V

    move-object/from16 v6, v20

    .line 540
    .local v6, "altitudeAngleMeasurement":Landroid/uwb/AngleMeasurement;
    if-eqz v9, :cond_e

    .line 541
    invoke-virtual {v9, v6}, Landroid/uwb/AngleOfArrivalMeasurement$Builder;->setAltitude(Landroid/uwb/AngleMeasurement;)Landroid/uwb/AngleOfArrivalMeasurement$Builder;

    .line 545
    .end local v6    # "altitudeAngleMeasurement":Landroid/uwb/AngleMeasurement;
    :cond_e
    if-eqz v9, :cond_f

    .line 546
    invoke-virtual {v9}, Landroid/uwb/AngleOfArrivalMeasurement$Builder;->build()Landroid/uwb/AngleOfArrivalMeasurement;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/uwb/RangingMeasurement$Builder;->setAngleOfArrivalMeasurement(Landroid/uwb/AngleOfArrivalMeasurement;)Landroid/uwb/RangingMeasurement$Builder;

    .line 549
    :cond_f
    invoke-virtual {v3}, Landroid/uwb/RangingMeasurement;->getDestinationAngleOfArrivalMeasurement()Landroid/uwb/AngleOfArrivalMeasurement;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 550
    nop

    .line 551
    invoke-virtual {v3}, Landroid/uwb/RangingMeasurement;->getDestinationAngleOfArrivalMeasurement()Landroid/uwb/AngleOfArrivalMeasurement;

    move-result-object v6

    .line 550
    invoke-virtual {v4, v6}, Landroid/uwb/RangingMeasurement$Builder;->setDestinationAngleOfArrivalMeasurement(Landroid/uwb/AngleOfArrivalMeasurement;)Landroid/uwb/RangingMeasurement$Builder;

    .line 555
    .end local v9    # "angleOfArrivalMeasurement":Landroid/uwb/AngleOfArrivalMeasurement$Builder;
    :cond_10
    invoke-virtual {v4}, Landroid/uwb/RangingMeasurement$Builder;->build()Landroid/uwb/RangingMeasurement;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v4    # "rangingMeasurement":Landroid/uwb/RangingMeasurement$Builder;
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/uwb/RangingReport;->getRangingReportMetadata()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-static {v4}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RangingReportMetadata;

    move-result-object v4

    .line 560
    .local v4, "metadata":Lcom/google/uwb/support/oemextension/RangingReportMetadata;
    new-instance v6, Landroid/uwb/RangingReport$Builder;

    invoke-direct {v6}, Landroid/uwb/RangingReport$Builder;-><init>()V

    .line 561
    invoke-virtual {v6, v1}, Landroid/uwb/RangingReport$Builder;->addMeasurements(Ljava/util/List;)Landroid/uwb/RangingReport$Builder;

    move-result-object v6

    .line 562
    invoke-virtual {v4}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/uwb/RangingReport$Builder;->addRangingReportMetadata(Landroid/os/PersistableBundle;)Landroid/uwb/RangingReport$Builder;

    move-result-object v6

    .line 563
    invoke-virtual {v6}, Landroid/uwb/RangingReport$Builder;->build()Landroid/uwb/RangingReport;

    move-result-object v6

    .line 560
    return-object v6

    .line 566
    .end local v2    # "owrAoaMeasurement":Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;
    .end local v3    # "baseRangingMeasurement":Landroid/uwb/RangingMeasurement;
    .end local v4    # "metadata":Lcom/google/uwb/support/oemextension/RangingReportMetadata;
    :cond_11
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public findUwbSession(I)Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    .locals 2
    .param p1, "sessionId"    # I

    .line 357
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    return-object v0
.end method

.method public findUwbSessionByToken(I)Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    .locals 3
    .param p1, "sessionToken"    # I

    .line 361
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 362
    .local v1, "sessionIter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionToken()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 363
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    return-object v0

    .line 364
    .end local v1    # "sessionIter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;>;"
    :cond_0
    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllUwbSessions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;",
            ">;"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSessionCount()I
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getSessionState(I)I
    .locals 2
    .param p1, "sessionId"    # I

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSessionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungUwbSessionManager"

    invoke-static {v1, v0}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->findUwbSession(I)Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    move-result-object v0

    .line 388
    .local v0, "session":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionState()I

    move-result v1

    return v1

    .line 391
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isPostProcessingEnabled()Z
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 401
    .local v1, "sessionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    .line 402
    .local v2, "uwbSession":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getPpEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    const/4 v0, 0x1

    return v0

    .line 405
    .end local v1    # "sessionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;>;"
    .end local v2    # "uwbSession":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    :cond_0
    goto :goto_0

    .line 407
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onRangingReportReceived(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;
    .locals 7
    .param p1, "rangingReport"    # Landroid/uwb/RangingReport;

    .line 248
    const-string v0, "onRangingReportReceived "

    const-string v1, "SamsungUwbSessionManager"

    invoke-static {v1, v0}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "not calculate AoA in FactoryBinary"

    invoke-static {v1, v0}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-object p1

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/uwb/RangingReport;->getRangingReportMetadata()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RangingReportMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->getRawNtfData()[B

    move-result-object v0

    .line 255
    .local v0, "rawNtf":[B
    new-instance v2, Lcom/samsung/uwb/support/data/ranging/RangingData;

    invoke-direct {v2, v0}, Lcom/samsung/uwb/support/data/ranging/RangingData;-><init>([B)V

    .line 257
    .local v2, "rangingData":Lcom/samsung/uwb/support/data/ranging/RangingData;
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getSessionToken()J

    move-result-wide v3

    long-to-int v3, v3

    .line 258
    .local v3, "sessionToken":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session Token : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->findUwbSessionByToken(I)Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    move-result-object v4

    .line 262
    .local v4, "uwbSession":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    if-nez v4, :cond_1

    .line 263
    const-string v5, "onRangingReportReceived: UwbSession is Null"

    invoke-static {v1, v5}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-object p1

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mPostProcessingManager:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->isAvailableToPostProcessing(Lcom/samsung/uwb/support/data/ranging/RangingData;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getChannelNumber()I

    move-result v1

    .line 269
    .local v1, "channelNumber":I
    iget-object v5, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mPostProcessingManager:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getPpEnable()Z

    move-result v6

    invoke-virtual {v5, v6, v1, v2}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->requestPostProcessing(ZILcom/samsung/uwb/support/data/ranging/RangingData;)Lcom/samsung/uwb/support/data/ranging/RangingData;

    move-result-object v2

    .line 272
    .end local v1    # "channelNumber":I
    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getProtocolName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getParam()Lcom/google/uwb/support/base/Params;

    move-result-object v5

    invoke-direct {p0, p1, v2, v1, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->updateRangingReport(Landroid/uwb/RangingReport;Lcom/samsung/uwb/support/data/ranging/RangingData;Ljava/lang/String;Lcom/google/uwb/support/base/Params;)Landroid/uwb/RangingReport;

    move-result-object p1

    .line 273
    invoke-direct {p0, v4, v2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->recordOwrMeasurementFromPostProcessedRangeData(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;Lcom/samsung/uwb/support/data/ranging/RangingData;)V

    .line 275
    return-object p1
.end method

.method public onSessionConfigurationChanged(Landroid/os/PersistableBundle;)V
    .locals 12
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 151
    invoke-static {p1}, Lcom/google/uwb/support/oemextension/SessionConfigParams;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/SessionConfigParams;

    move-result-object v0

    .line 152
    .local v0, "sessionConfigParams":Lcom/google/uwb/support/oemextension/SessionConfigParams;
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionConfigParams;->getFiraOpenSessionParamsBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 154
    .local v1, "openSessionParamsBundle":Landroid/os/PersistableBundle;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->addBigDataItemByConfigureChanged(Lcom/google/uwb/support/oemextension/SessionConfigParams;)V

    .line 156
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionConfigParams;->getSessionId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->findUwbSession(I)Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    move-result-object v2

    .line 157
    .local v2, "uwbSession":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    const-string v3, "SamsungUwbSessionManager"

    if-nez v2, :cond_0

    .line 158
    const-string v4, "onSessionConfigurationChanged: UwbSession is NULL"

    invoke-static {v3, v4}, Lcom/samsung/android/server/uwb/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void

    .line 162
    :cond_0
    const/4 v4, 0x0

    .line 163
    .local v4, "isAoaEnabled":Z
    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_4

    .line 164
    const-string v5, "onSessionConfigurationChanged: FiraOpenSessionParams"

    invoke-static {v3, v5}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionId()I

    move-result v3

    if-nez v3, :cond_1

    .line 167
    return-void

    .line 170
    :cond_1
    invoke-static {v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    move-result-object v3

    .line 172
    .local v3, "params":Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setParam(Lcom/google/uwb/support/base/Params;)V

    .line 173
    const-string v5, "fira"

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setProtocolName(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getChannelNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setChannelNumber(I)V

    .line 175
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getPrfMode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setPrfMode(I)V

    .line 176
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getRangingRoundUsage()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setRoundUsage(I)V

    .line 177
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getScheduledMode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setScheduledMode(I)V

    .line 178
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getRangingIntervalMs()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setRangingInterval(I)V

    .line 179
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getStsConfig()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setStsUsage(I)V

    .line 180
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getSlotDurationRstu()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setSlotDuration(I)V

    .line 182
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getUwbChipInfo()Ljava/lang/String;

    move-result-object v5

    .line 183
    .local v5, "chipInfo":Ljava/lang/String;
    const-string v7, "SR100T"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "SR200T"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 184
    :cond_2
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getSessionType()I

    move-result v7

    .line 187
    .local v7, "sessionType":I
    if-eq v7, v6, :cond_3

    const/4 v6, 0x4

    if-eq v7, v6, :cond_3

    .line 188
    iget-object v6, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    invoke-interface {v6}, Lcom/samsung/android/server/uwb/IVendorExtension;->getSpecificationInfo()Lcom/google/uwb/support/generic/GenericSpecificationParams;

    move-result-object v6

    .line 189
    .local v6, "genericSpecificationParams":Lcom/google/uwb/support/generic/GenericSpecificationParams;
    if-eqz v6, :cond_3

    .line 190
    invoke-virtual {v6}, Lcom/google/uwb/support/generic/GenericSpecificationParams;->getFiraSpecificationParams()Lcom/google/uwb/support/fira/FiraSpecificationParams;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/uwb/support/fira/FiraSpecificationParams;->getAoaCapabilities()Ljava/util/EnumSet;

    move-result-object v8

    .line 191
    .local v8, "aoaCapabilityFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;>;"
    sget-object v9, Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;->HAS_AZIMUTH_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;

    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;->HAS_ELEVATION_SUPPORT:Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;

    .line 192
    invoke-virtual {v8, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 193
    invoke-virtual {v3}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->getAoaResultRequest()I

    move-result v9

    if-eqz v9, :cond_3

    .line 194
    const/4 v4, 0x1

    .line 199
    .end local v3    # "params":Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    .end local v5    # "chipInfo":Ljava/lang/String;
    .end local v6    # "genericSpecificationParams":Lcom/google/uwb/support/generic/GenericSpecificationParams;
    .end local v7    # "sessionType":I
    .end local v8    # "aoaCapabilityFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/uwb/support/fira/FiraParams$AoaCapabilityFlag;>;"
    :cond_3
    goto/16 :goto_3

    :cond_4
    invoke-static {v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    .line 239
    :cond_5
    const-string v5, "onSessionConfigurationChanged: Unknown protocol"

    invoke-static {v3, v5}, Lcom/samsung/android/server/uwb/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void

    .line 200
    :cond_6
    :goto_0
    const-string v5, ""

    .line 201
    .local v5, "protocolName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 202
    .local v7, "channel":I
    const/4 v8, 0x0

    .line 203
    .local v8, "rangingInterval":I
    const/4 v9, 0x0

    .line 204
    .local v9, "slotDuration":I
    const/4 v10, 0x0

    .line 206
    .local v10, "stsUsage":I
    invoke-static {v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 207
    const-string v11, "onSessionConfigurationChanged: CccOpenRangingParams"

    invoke-static {v3, v11}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-static {v1}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/ccc/CccOpenRangingParams;

    move-result-object v3

    .line 210
    .local v3, "params":Lcom/google/uwb/support/ccc/CccOpenRangingParams;
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setParam(Lcom/google/uwb/support/base/Params;)V

    .line 212
    const-string v5, "ccc"

    .line 213
    invoke-virtual {v3}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->getChannel()I

    move-result v7

    .line 214
    invoke-virtual {v3}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->getRanMultiplier()I

    move-result v8

    .line 215
    invoke-virtual {v3}, Lcom/google/uwb/support/ccc/CccOpenRangingParams;->getNumChapsPerSlot()I

    move-result v9

    .line 216
    const/4 v10, 0x1

    .end local v3    # "params":Lcom/google/uwb/support/ccc/CccOpenRangingParams;
    goto :goto_1

    .line 217
    :cond_7
    invoke-static {v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 218
    const-string v11, "onSessionConfigurationChanged: AliroOpenRangingParams"

    invoke-static {v3, v11}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {v1}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/aliro/AliroOpenRangingParams;

    move-result-object v3

    .line 221
    .local v3, "params":Lcom/google/uwb/support/aliro/AliroOpenRangingParams;
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setParam(Lcom/google/uwb/support/base/Params;)V

    .line 223
    const-string v5, "aliro"

    .line 224
    invoke-virtual {v3}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->getChannel()I

    move-result v7

    .line 225
    invoke-virtual {v3}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->getRanMultiplier()I

    move-result v8

    .line 226
    invoke-virtual {v3}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->getNumChapsPerSlot()I

    move-result v9

    .line 227
    invoke-virtual {v3}, Lcom/google/uwb/support/aliro/AliroOpenRangingParams;->getStsConfig()I

    move-result v10

    goto :goto_2

    .line 217
    .end local v3    # "params":Lcom/google/uwb/support/aliro/AliroOpenRangingParams;
    :cond_8
    :goto_1
    nop

    .line 230
    :goto_2
    invoke-virtual {v2, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setProtocolName(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v2, v7}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setChannelNumber(I)V

    .line 232
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setPrfMode(I)V

    .line 233
    invoke-virtual {v2, v6}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setRoundUsage(I)V

    .line 234
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setScheduledMode(I)V

    .line 235
    mul-int/lit8 v3, v8, 0x60

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setRangingInterval(I)V

    .line 236
    invoke-virtual {v2, v10}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setStsUsage(I)V

    .line 237
    mul-int/lit16 v3, v9, 0x190

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setSlotDuration(I)V

    .line 238
    .end local v5    # "protocolName":Ljava/lang/String;
    .end local v7    # "channel":I
    .end local v8    # "rangingInterval":I
    .end local v9    # "slotDuration":I
    .end local v10    # "stsUsage":I
    nop

    .line 243
    :goto_3
    invoke-direct {p0, v2, v4}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->setAntennaConfigurations(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;Z)V

    .line 244
    return-void
.end method

.method public onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V
    .locals 13
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 81
    invoke-static {p1}, Lcom/google/uwb/support/oemextension/SessionStatus;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/SessionStatus;

    move-result-object v0

    .line 82
    .local v0, "uwbSessionStatus":Lcom/google/uwb/support/oemextension/SessionStatus;
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getSessionId()J

    move-result-wide v1

    long-to-int v1, v1

    .line 83
    .local v1, "sessionId":I
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getState()I

    move-result v2

    .line 84
    .local v2, "sessionState":I
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getReasonCode()I

    move-result v3

    .line 86
    .local v3, "reasonCode":I
    const-string v4, ", State : "

    const-string v5, "onSessionStatusNotificationReceived - Session ID : "

    const-string v6, "SamsungUwbSessionManager"

    const/4 v7, 0x1

    if-nez v3, :cond_0

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/samsung/android/server/uwb/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Reason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v7}, Lcom/samsung/android/server/uwb/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    :goto_0
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getProtocolName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ccc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.uwb.action.SESSION_STATUS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, "sessionStatusIntent":Landroid/content/Intent;
    const-string v5, "session_id"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string v5, "status"

    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getState()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string v5, "com.samsung.android.dkey"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v5, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mContext:Landroid/content/Context;

    const-string v8, "com.samsung.android.uwb.READ_NOTIFICATION"

    invoke-virtual {v5, v4, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 100
    const-string v5, "com.samsung.android.uwbtest"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v5, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 104
    .end local v4    # "sessionStatusIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->findUwbSession(I)Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    move-result-object v4

    .line 105
    .local v4, "uwbSession":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    if-nez v4, :cond_3

    .line 106
    if-nez v2, :cond_2

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Session opened - ID : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", Protocol : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getProtocolName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", Pkg : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 108
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getAppPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-static {v6, v5, v7}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    new-instance v5, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;-><init>(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;Lcom/google/uwb/support/oemextension/SessionStatus;)V

    .line 110
    .local v5, "sessionInfo":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    invoke-direct {p0, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->addUwbSession(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)V

    .line 111
    .end local v5    # "sessionInfo":Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;
    goto/16 :goto_1

    .line 112
    :cond_2
    const-string v5, "onSessionStatusNotificationReceived - Invalid session status notification"

    invoke-static {v6, v5}, Lcom/samsung/android/server/uwb/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 115
    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionState()I

    move-result v5

    if-nez v5, :cond_4

    .line 116
    invoke-virtual {v4, v2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setSessionState(I)V

    .line 117
    return-void

    .line 120
    :cond_4
    const/4 v5, 0x3

    const/4 v8, 0x2

    if-eq v2, v5, :cond_5

    if-ne v2, v7, :cond_7

    .line 121
    :cond_5
    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionState()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getRangingStartTime()J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 123
    .local v9, "rangingDuration":J
    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setRangingDuration(J)V

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Session stopped - ID : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ", Ranging Duration : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v7}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    iget-object v5, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->sendDbDataForUwbUsage(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)V

    .line 126
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->setWifiUwbCoexEnabled(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;Z)V

    .line 129
    .end local v9    # "rangingDuration":J
    :cond_6
    if-ne v2, v7, :cond_7

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Session closed - ID : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v7}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    invoke-virtual {v4, v2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setSessionState(I)V

    .line 132
    iget-object v5, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->sendBigdata(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)V

    .line 133
    invoke-direct {p0, v4}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->removeAdvertiserData(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)V

    .line 134
    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->getSessionId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->removeUwbSession(I)V

    .line 135
    return-void

    .line 139
    :cond_7
    if-ne v2, v8, :cond_8

    .line 140
    invoke-direct {p0, v4, v7}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->setWifiUwbCoexEnabled(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;Z)V

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setRangingStartTime(J)V

    .line 144
    :cond_8
    invoke-virtual {v4, v2}, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;->setSessionState(I)V

    .line 145
    iget-object v5, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mBigdataManager:Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->sendBigdata(Lcom/samsung/android/server/uwb/SamsungUwbSessionManager$UwbSession;)V

    .line 147
    :goto_1
    return-void
.end method

.method public removeAllUwbSessions()V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/samsung/android/server/uwb/SamsungUwbSessionManager;->mUwbSessionMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 379
    return-void
.end method
