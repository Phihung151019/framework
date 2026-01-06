.class public Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field currentDayNonActiveSessionMobileDataUsage:J

.field currentDayNonActiveSessionTotalTime:J

.field dataLimit:J

.field deviceType:I

.field deviceTypeDhcp:Ljava/lang/String;

.field editedName:Ljava/lang/String;

.field ipAddress:Ljava/lang/String;

.field isAutoHotspotClient:Z

.field isCellularStream:Z

.field isConnected:Z

.field isGuestClient:Z

.field isInternetPauseByUser:Z

.field macAddress:Ljava/lang/String;

.field manufactureDhcp:Ljava/lang/String;

.field name:Ljava/lang/String;

.field nsdName:Ljava/lang/String;

.field osTypeDhcp:Ljava/lang/String;

.field semWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

.field timeLimit:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->semWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->macAddress:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "Connected Device"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->name:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->editedName:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->nsdName:Ljava/lang/String;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->ipAddress:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->deviceType:I

    .line 25
    .line 26
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->dataLimit:J

    .line 29
    .line 30
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->timeLimit:J

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isInternetPauseByUser:Z

    .line 33
    .line 34
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->currentDayNonActiveSessionMobileDataUsage:J

    .line 35
    .line 36
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->currentDayNonActiveSessionTotalTime:J

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isCellularStream:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isConnected:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isAutoHotspotClient:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isGuestClient:Z

    .line 45
    .line 46
    const-string v0, "unknown"

    .line 47
    .line 48
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->osTypeDhcp:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->deviceTypeDhcp:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->manufactureDhcp:Ljava/lang/String;

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    invoke-static {p3}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidMac(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->context:Landroid/content/Context;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->semWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 68
    .line 69
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->macAddress:Ljava/lang/String;

    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string p1, "invalid arguments"

    .line 77
    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isConnected:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->ipAddress:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v1, "Invalid Argument : ip address can\'t be empty if device is connected"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    :goto_0
    new-instance v2, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;

    .line 25
    .line 26
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->context:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->semWifiApEbpf:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;

    .line 29
    .line 30
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->macAddress:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->name:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->editedName:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->nsdName:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->ipAddress:Ljava/lang/String;

    .line 39
    .line 40
    iget v10, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->deviceType:I

    .line 41
    .line 42
    iget-wide v11, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->dataLimit:J

    .line 43
    .line 44
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->timeLimit:J

    .line 45
    .line 46
    iget-boolean v15, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isInternetPauseByUser:Z

    .line 47
    .line 48
    move-object/from16 v16, v2

    .line 49
    .line 50
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->currentDayNonActiveSessionMobileDataUsage:J

    .line 51
    .line 52
    move-wide/from16 v17, v1

    .line 53
    .line 54
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->currentDayNonActiveSessionTotalTime:J

    .line 55
    .line 56
    move-wide/from16 v19, v1

    .line 57
    .line 58
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isCellularStream:Z

    .line 59
    .line 60
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isConnected:Z

    .line 61
    .line 62
    move/from16 v21, v1

    .line 63
    .line 64
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isAutoHotspotClient:Z

    .line 65
    .line 66
    move/from16 v22, v1

    .line 67
    .line 68
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isGuestClient:Z

    .line 69
    .line 70
    move/from16 v23, v1

    .line 71
    .line 72
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->osTypeDhcp:Ljava/lang/String;

    .line 73
    .line 74
    move-object/from16 v24, v1

    .line 75
    .line 76
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->deviceTypeDhcp:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->manufactureDhcp:Ljava/lang/String;

    .line 79
    .line 80
    const/16 v27, 0x0

    .line 81
    .line 82
    move/from16 v25, v21

    .line 83
    .line 84
    move/from16 v21, v2

    .line 85
    .line 86
    move-object/from16 v2, v16

    .line 87
    .line 88
    move-wide/from16 v16, v17

    .line 89
    .line 90
    move-wide/from16 v18, v19

    .line 91
    .line 92
    move/from16 v20, v25

    .line 93
    .line 94
    move-object/from16 v26, v0

    .line 95
    .line 96
    move-object/from16 v25, v1

    .line 97
    .line 98
    invoke-direct/range {v2 .. v27}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApEbpf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJZJJZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    move-object/from16 v16, v2

    .line 102
    .line 103
    return-object v16
.end method

.method public setCellularStream(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isCellularStream:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setClientConnected(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isConnected:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setClientEditedName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->editedName:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public setClientNsdName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->nsdName:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public setDataLimitInBytes(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->dataLimit:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setDeviceType(I)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->deviceType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setDeviceTypeFromDhcpFingerprint(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->deviceTypeDhcp:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public setInternetPauseByUser(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isInternetPauseByUser:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setIpAddress(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->ipAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsAutoHotspotClient(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isAutoHotspotClient:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsGuestClient(Z)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->isGuestClient:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setManufactureFromDhcpFingerprint(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->manufactureDhcp:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->name:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method

.method public setNonActiveSessionCellularDataUsage(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->currentDayNonActiveSessionMobileDataUsage:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setNonActiveSessionTotalTime(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->currentDayNonActiveSessionTotalTime:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setOsTypeFromDhcpFingerprint(Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->osTypeDhcp:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method

.method public setTimeLimitInMilliSec(J)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApClientController$Builder;->timeLimit:J

    .line 2
    .line 3
    return-object p0
.end method
