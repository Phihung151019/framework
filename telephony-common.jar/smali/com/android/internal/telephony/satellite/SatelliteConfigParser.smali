.class public Lcom/android/internal/telephony/satellite/SatelliteConfigParser;
.super Lcom/android/internal/telephony/configupdate/ConfigParser;
.source "SatelliteConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/configupdate/ConfigParser<",
        "Lcom/android/internal/telephony/satellite/SatelliteConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;-><init>([B)V

    return-void
.end method


# virtual methods
.method protected blacklist parseData([B)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 71
    const-string v2, "SatelliteConfigParser"

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 72
    :try_start_0
    const-string p1, "config data is null"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->parseFrom([B)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 77
    iget-object p1, p1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$TelephonyConfigProto;->satellite:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-nez p1, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    iget v4, p1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->version:I

    iput v4, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 82
    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteConfig;

    invoke-direct {v4, p1}, Lcom/android/internal/telephony/satellite/SatelliteConfig;-><init>(Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;)V

    iput-object v4, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mConfig:Ljava/lang/Object;

    .line 83
    const-string p1, "SatelliteConfig is created"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_2
    :goto_0
    const-string p1, "telephonyConfigData or telephonyConfigData.satellite is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const/4 v3, 0x1

    .line 86
    :try_start_1
    const-string v4, "Parse Error"

    invoke-static {v2, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    iput v1, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 90
    iput-object v0, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mConfig:Ljava/lang/Object;

    return-void

    :goto_2
    if-eqz v3, :cond_3

    .line 89
    iput v1, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 90
    iput-object v0, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mConfig:Ljava/lang/Object;

    .line 92
    :cond_3
    throw p1
.end method
