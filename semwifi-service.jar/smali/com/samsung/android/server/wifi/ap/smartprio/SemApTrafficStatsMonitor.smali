.class public Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final MIN_PK_CNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SemApTrafficStatsMonitor"


# instance fields
.field private mAccumulatedWakeTime:J

.field private mCurConvoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDlTotalDataSize:I

.field private mDlTotalPacketCnt:I

.field private mNetdService:Landroid/net/INetd;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private mPrevWakeRatioCalculationTime:J

.field private mUlTotalDataSize:I

.field private mUlTotalPacketCnt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mUlTotalPacketCnt:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDlTotalPacketCnt:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mUlTotalDataSize:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDlTotalDataSize:I

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mAccumulatedWakeTime:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mPrevWakeRatioCalculationTime:J

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->getOemNetd()Lcom/android/internal/net/IOemNetd;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 32
    .line 33
    return-void
.end method

.method private clearOldData()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mUlTotalPacketCnt:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDlTotalPacketCnt:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mUlTotalDataSize:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDlTotalDataSize:I

    .line 9
    .line 10
    return-void
.end method

.method public static convertToMacAddress(J)Ljava/lang/String;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_2

    .line 6
    .line 7
    const-wide v0, 0xffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v0, p0, v0

    .line 13
    .line 14
    if-gtz v0, :cond_2

    .line 15
    .line 16
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "%012X"

    .line 25
    .line 26
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ge v0, v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v0, 0x1

    .line 50
    .line 51
    rem-int/lit8 v2, v1, 0x2

    .line 52
    .line 53
    if-nez v2, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    add-int/lit8 v2, v2, -0x1

    .line 60
    .line 61
    if-ge v0, v2, :cond_0

    .line 62
    .line 63
    const-string v0, ":"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_0
    move v0, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string p1, "Invalid long value for MAC address"

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method private genKeyStr(Landroid/net/UidStatsParcel;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p1, Landroid/net/UidStatsParcel;->ipVersion:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "_"

    .line 5
    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget v0, p1, Landroid/net/UidStatsParcel;->ipv4sAddr:I

    .line 22
    .line 23
    invoke-static {v2, v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 24
    .line 25
    .line 26
    iget p1, p1, Landroid/net/UidStatsParcel;->ipv4Addr:I

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    iget p0, p1, Landroid/net/UidStatsParcel;->ipv4Addr:I

    .line 41
    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_1
    const/4 v1, 0x6

    .line 48
    if-ne v0, v1, :cond_3

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    const-string v0, ","

    .line 57
    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    iget v1, p1, Landroid/net/UidStatsParcel;->ipv6sAddr1:I

    .line 66
    .line 67
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 68
    .line 69
    .line 70
    iget v1, p1, Landroid/net/UidStatsParcel;->ipv6sAddr2:I

    .line 71
    .line 72
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 73
    .line 74
    .line 75
    iget v1, p1, Landroid/net/UidStatsParcel;->ipv6sAddr3:I

    .line 76
    .line 77
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 78
    .line 79
    .line 80
    iget v1, p1, Landroid/net/UidStatsParcel;->ipv6sAddr4:I

    .line 81
    .line 82
    invoke-static {v2, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 83
    .line 84
    .line 85
    iget v1, p1, Landroid/net/UidStatsParcel;->ipv6Addr1:I

    .line 86
    .line 87
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 88
    .line 89
    .line 90
    iget v1, p1, Landroid/net/UidStatsParcel;->ipv6Addr2:I

    .line 91
    .line 92
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 93
    .line 94
    .line 95
    iget v1, p1, Landroid/net/UidStatsParcel;->ipv6Addr3:I

    .line 96
    .line 97
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 98
    .line 99
    .line 100
    iget p1, p1, Landroid/net/UidStatsParcel;->ipv6Addr4:I

    .line 101
    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    iget v1, p1, Landroid/net/UidStatsParcel;->ipv6Addr1:I

    .line 120
    .line 121
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 122
    .line 123
    .line 124
    iget v1, p1, Landroid/net/UidStatsParcel;->ipv6Addr2:I

    .line 125
    .line 126
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 127
    .line 128
    .line 129
    iget v1, p1, Landroid/net/UidStatsParcel;->ipv6Addr3:I

    .line 130
    .line 131
    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 132
    .line 133
    .line 134
    iget p1, p1, Landroid/net/UidStatsParcel;->ipv6Addr4:I

    .line 135
    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v0, "Unidentified IP version in genKeyStr(): "

    .line 151
    .line 152
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget p1, p1, Landroid/net/UidStatsParcel;->ipVersion:I

    .line 156
    .line 157
    const-string v0, "SemApTrafficStatsMonitor"

    .line 158
    .line 159
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 160
    .line 161
    .line 162
    const/4 p0, 0x0

    .line 163
    return-object p0
.end method

.method private getOemNetd()Lcom/android/internal/net/IOemNetd;
    .locals 4

    .line 1
    const-string v0, "SemApTrafficStatsMonitor"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    :try_start_0
    const-string v1, "netd"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mNetdService:Landroid/net/INetd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "Failed to bind service netd, error="

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mNetdService:Landroid/net/INetd;

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    const-string v1, "Can\'t bind service netd"

    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_1
    move-exception v1

    .line 65
    const-string v2, "Failed to get OemNetd listener "

    .line 66
    .line 67
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 71
    .line 72
    return-object p0
.end method

.method private wrapTrafficData(Landroid/net/UidStatsParcel;Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x4

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v0, "SemApTrafficStatsMonitor"

    .line 13
    .line 14
    const-string v1, "Traffic key is null."

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    :cond_0
    new-instance v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 22
    .line 23
    invoke-direct {v7}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->key:Ljava/lang/String;

    .line 27
    .line 28
    iget v1, v0, Landroid/net/UidStatsParcel;->uid:I

    .line 29
    .line 30
    iput v1, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->uid:I

    .line 31
    .line 32
    iget v1, v0, Landroid/net/UidStatsParcel;->ipVersion:I

    .line 33
    .line 34
    iput v1, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ipVersion:I

    .line 35
    .line 36
    iget v1, v0, Landroid/net/UidStatsParcel;->sport:I

    .line 37
    .line 38
    iput v1, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->sport:I

    .line 39
    .line 40
    iget v1, v0, Landroid/net/UidStatsParcel;->dport:I

    .line 41
    .line 42
    iput v1, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->dport:I

    .line 43
    .line 44
    iget v1, v0, Landroid/net/UidStatsParcel;->ipv4Addr:I

    .line 45
    .line 46
    iput v1, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ipv4Address:I

    .line 47
    .line 48
    new-array v1, v6, [I

    .line 49
    .line 50
    iput-object v1, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ipv6Address:[I

    .line 51
    .line 52
    iget v8, v0, Landroid/net/UidStatsParcel;->ipv6Addr1:I

    .line 53
    .line 54
    aput v8, v1, v5

    .line 55
    .line 56
    iget v8, v0, Landroid/net/UidStatsParcel;->ipv6Addr2:I

    .line 57
    .line 58
    aput v8, v1, v4

    .line 59
    .line 60
    iget v8, v0, Landroid/net/UidStatsParcel;->ipv6Addr3:I

    .line 61
    .line 62
    aput v8, v1, v3

    .line 63
    .line 64
    iget v8, v0, Landroid/net/UidStatsParcel;->ipv6Addr4:I

    .line 65
    .line 66
    aput v8, v1, v2

    .line 67
    .line 68
    iget v1, v0, Landroid/net/UidStatsParcel;->ipv4sAddr:I

    .line 69
    .line 70
    iput v1, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ipv4sAddress:I

    .line 71
    .line 72
    new-array v1, v6, [I

    .line 73
    .line 74
    iput-object v1, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ipv6sAddress:[I

    .line 75
    .line 76
    iget v8, v0, Landroid/net/UidStatsParcel;->ipv6sAddr1:I

    .line 77
    .line 78
    aput v8, v1, v5

    .line 79
    .line 80
    iget v8, v0, Landroid/net/UidStatsParcel;->ipv6sAddr2:I

    .line 81
    .line 82
    aput v8, v1, v4

    .line 83
    .line 84
    iget v8, v0, Landroid/net/UidStatsParcel;->ipv6sAddr3:I

    .line 85
    .line 86
    aput v8, v1, v3

    .line 87
    .line 88
    iget v8, v0, Landroid/net/UidStatsParcel;->ipv6sAddr4:I

    .line 89
    .line 90
    aput v8, v1, v2

    .line 91
    .line 92
    iget-wide v8, v0, Landroid/net/UidStatsParcel;->cliMacAddr:J

    .line 93
    .line 94
    invoke-static {v8, v9}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->convertToMacAddress(J)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iput-object v1, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->cliMacAddr:Ljava/lang/String;

    .line 99
    .line 100
    iget v1, v0, Landroid/net/UidStatsParcel;->rxPackets:I

    .line 101
    .line 102
    int-to-float v8, v1

    .line 103
    iput v8, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->dlPacketCnt:F

    .line 104
    .line 105
    iget v9, v0, Landroid/net/UidStatsParcel;->txPackets:I

    .line 106
    .line 107
    int-to-float v10, v9

    .line 108
    iput v10, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ulPacketCnt:F

    .line 109
    .line 110
    iget v11, v0, Landroid/net/UidStatsParcel;->maxTxPacketSize:I

    .line 111
    .line 112
    int-to-float v11, v11

    .line 113
    iput v11, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ulPacketSizeMax:F

    .line 114
    .line 115
    iget v12, v0, Landroid/net/UidStatsParcel;->minTxPacketSize:I

    .line 116
    .line 117
    int-to-float v12, v12

    .line 118
    iput v12, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ulPacketSizeMin:F

    .line 119
    .line 120
    iget v12, v0, Landroid/net/UidStatsParcel;->maxRxPacketSize:I

    .line 121
    .line 122
    int-to-float v12, v12

    .line 123
    iput v12, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->dlPacketSizeMax:F

    .line 124
    .line 125
    iget v13, v0, Landroid/net/UidStatsParcel;->minRxPacketSize:I

    .line 126
    .line 127
    int-to-float v13, v13

    .line 128
    iput v13, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->dlPacketSizeMin:F

    .line 129
    .line 130
    iget-wide v13, v0, Landroid/net/UidStatsParcel;->txBytes:J

    .line 131
    .line 132
    long-to-float v15, v13

    .line 133
    iput v15, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ulBytes:F

    .line 134
    .line 135
    move/from16 p0, v2

    .line 136
    .line 137
    move v15, v3

    .line 138
    iget-wide v2, v0, Landroid/net/UidStatsParcel;->rxBytes:J

    .line 139
    .line 140
    move/from16 v16, v5

    .line 141
    .line 142
    long-to-float v5, v2

    .line 143
    iput v5, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->dlBytes:F

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    if-nez v9, :cond_1

    .line 147
    .line 148
    iput v5, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ulPacketSizeMin:F

    .line 149
    .line 150
    :cond_1
    if-nez v1, :cond_2

    .line 151
    .line 152
    iput v5, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->dlPacketSizeMin:F

    .line 153
    .line 154
    :cond_2
    move/from16 v17, v6

    .line 155
    .line 156
    iget-wide v5, v0, Landroid/net/UidStatsParcel;->maxTxInterPacketTime:J

    .line 157
    .line 158
    long-to-float v5, v5

    .line 159
    const v6, 0x4e6e6b28    # 1.0E9f

    .line 160
    .line 161
    .line 162
    div-float/2addr v5, v6

    .line 163
    iput v5, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->interTimeMax:F

    .line 164
    .line 165
    move/from16 v19, v5

    .line 166
    .line 167
    iget-wide v4, v0, Landroid/net/UidStatsParcel;->minTxInterPacketTime:J

    .line 168
    .line 169
    long-to-float v4, v4

    .line 170
    div-float/2addr v4, v6

    .line 171
    iput v4, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->interTimeMin:F

    .line 172
    .line 173
    move/from16 v20, v6

    .line 174
    .line 175
    move-object v5, v7

    .line 176
    iget-wide v6, v0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime:J

    .line 177
    .line 178
    long-to-float v6, v6

    .line 179
    div-float v6, v6, v20

    .line 180
    .line 181
    iput v6, v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->interTimeDLMax1:F

    .line 182
    .line 183
    move/from16 v21, v6

    .line 184
    .line 185
    iget-wide v6, v0, Landroid/net/UidStatsParcel;->maxRxInterPacketTime2:J

    .line 186
    .line 187
    long-to-float v6, v6

    .line 188
    div-float v6, v6, v20

    .line 189
    .line 190
    iput v6, v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->interTimeDLMax2:F

    .line 191
    .line 192
    iget v7, v0, Landroid/net/UidStatsParcel;->tcpPackets:I

    .line 193
    .line 194
    int-to-float v7, v7

    .line 195
    iput v7, v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->tcpPacketCnt:F

    .line 196
    .line 197
    move/from16 v22, v15

    .line 198
    .line 199
    iget v15, v0, Landroid/net/UidStatsParcel;->udpPackets:I

    .line 200
    .line 201
    int-to-float v15, v15

    .line 202
    iput v15, v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->udpPacketCnt:F

    .line 203
    .line 204
    if-lez v9, :cond_3

    .line 205
    .line 206
    long-to-float v13, v13

    .line 207
    int-to-float v14, v9

    .line 208
    div-float/2addr v13, v14

    .line 209
    goto :goto_0

    .line 210
    :cond_3
    const/4 v13, 0x0

    .line 211
    :goto_0
    iput v13, v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ulPacketSizeAvg:F

    .line 212
    .line 213
    if-lez v1, :cond_4

    .line 214
    .line 215
    long-to-float v2, v2

    .line 216
    int-to-float v1, v1

    .line 217
    div-float v1, v2, v1

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_4
    const/4 v1, 0x0

    .line 221
    :goto_1
    iput v1, v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->dlPacketSizeAvg:F

    .line 222
    .line 223
    const/4 v2, 0x1

    .line 224
    if-le v9, v2, :cond_5

    .line 225
    .line 226
    move/from16 v18, v2

    .line 227
    .line 228
    iget-wide v2, v0, Landroid/net/UidStatsParcel;->latestTxTime:J

    .line 229
    .line 230
    move v14, v1

    .line 231
    iget-wide v0, v0, Landroid/net/UidStatsParcel;->firstTxTime:J

    .line 232
    .line 233
    sub-long/2addr v2, v0

    .line 234
    add-int/lit8 v9, v9, -0x1

    .line 235
    .line 236
    int-to-long v0, v9

    .line 237
    div-long/2addr v2, v0

    .line 238
    goto :goto_2

    .line 239
    :cond_5
    move v14, v1

    .line 240
    const-wide/16 v2, 0x0

    .line 241
    .line 242
    :goto_2
    long-to-float v0, v2

    .line 243
    div-float v0, v0, v20

    .line 244
    .line 245
    iput v0, v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->interTimeAvg:F

    .line 246
    .line 247
    iget v1, v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->ulPacketSizeMin:F

    .line 248
    .line 249
    iget v2, v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->dlPacketSizeMin:F

    .line 250
    .line 251
    const/16 v3, 0xf

    .line 252
    .line 253
    new-array v3, v3, [F

    .line 254
    .line 255
    aput v19, v3, v16

    .line 256
    .line 257
    const/16 v18, 0x1

    .line 258
    .line 259
    aput v0, v3, v18

    .line 260
    .line 261
    aput v10, v3, v22

    .line 262
    .line 263
    aput v8, v3, p0

    .line 264
    .line 265
    aput v1, v3, v17

    .line 266
    .line 267
    const/4 v0, 0x5

    .line 268
    aput v11, v3, v0

    .line 269
    .line 270
    const/4 v0, 0x6

    .line 271
    aput v13, v3, v0

    .line 272
    .line 273
    const/4 v0, 0x7

    .line 274
    aput v12, v3, v0

    .line 275
    .line 276
    const/16 v0, 0x8

    .line 277
    .line 278
    aput v2, v3, v0

    .line 279
    .line 280
    const/16 v0, 0x9

    .line 281
    .line 282
    aput v14, v3, v0

    .line 283
    .line 284
    const/16 v0, 0xa

    .line 285
    .line 286
    aput v15, v3, v0

    .line 287
    .line 288
    const/16 v0, 0xb

    .line 289
    .line 290
    aput v7, v3, v0

    .line 291
    .line 292
    const/16 v0, 0xc

    .line 293
    .line 294
    aput v4, v3, v0

    .line 295
    .line 296
    const/16 v0, 0xd

    .line 297
    .line 298
    aput v21, v3, v0

    .line 299
    .line 300
    const/16 v0, 0xe

    .line 301
    .line 302
    aput v6, v3, v0

    .line 303
    .line 304
    iput-object v3, v5, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->trfFeatures:[F

    .line 305
    .line 306
    return-object v5
.end method


# virtual methods
.method public getApTrafficStatsMap()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 3
    .line 4
    invoke-interface {v1}, Lcom/android/internal/net/IOemNetd;->getMhsTrafficStats()[Landroid/net/UidStatsParcel;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    move-object v1, v0

    .line 14
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    array-length v3, v1

    .line 22
    const/4 v4, 0x0

    .line 23
    move v5, v4

    .line 24
    :goto_1
    if-ge v5, v3, :cond_6

    .line 25
    .line 26
    aget-object v6, v1, v5

    .line 27
    .line 28
    iget v7, v6, Landroid/net/UidStatsParcel;->ipVersion:I

    .line 29
    .line 30
    const/4 v8, 0x4

    .line 31
    if-eq v7, v8, :cond_0

    .line 32
    .line 33
    const/4 v8, 0x6

    .line 34
    if-ne v7, v8, :cond_4

    .line 35
    .line 36
    :cond_0
    iget v7, v6, Landroid/net/UidStatsParcel;->txPackets:I

    .line 37
    .line 38
    iget v8, v6, Landroid/net/UidStatsParcel;->rxPackets:I

    .line 39
    .line 40
    add-int/2addr v7, v8

    .line 41
    const/16 v8, 0x14

    .line 42
    .line 43
    const/4 v9, 0x1

    .line 44
    if-lt v7, v8, :cond_1

    .line 45
    .line 46
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->genKeyStr(Landroid/net/UidStatsParcel;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mCurConvoSet:Ljava/util/Set;

    .line 52
    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->genKeyStr(Landroid/net/UidStatsParcel;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mCurConvoSet:Ljava/util/Set;

    .line 60
    .line 61
    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-eqz v8, :cond_2

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_2
    :goto_2
    move v9, v4

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move-object v7, v0

    .line 71
    goto :goto_2

    .line 72
    :goto_3
    if-eqz v7, :cond_4

    .line 73
    .line 74
    if-eqz v9, :cond_4

    .line 75
    .line 76
    invoke-direct {p0, v6, v7}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->wrapTrafficData(Landroid/net/UidStatsParcel;Ljava/lang/String;)Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    if-eqz v7, :cond_4

    .line 81
    .line 82
    iget-object v8, v7, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficData;->key:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    iget v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mUlTotalPacketCnt:I

    .line 88
    .line 89
    iget v8, v6, Landroid/net/UidStatsParcel;->txPackets:I

    .line 90
    .line 91
    add-int/2addr v7, v8

    .line 92
    iput v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mUlTotalPacketCnt:I

    .line 93
    .line 94
    iget v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDlTotalPacketCnt:I

    .line 95
    .line 96
    iget v8, v6, Landroid/net/UidStatsParcel;->rxPackets:I

    .line 97
    .line 98
    add-int/2addr v7, v8

    .line 99
    iput v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDlTotalPacketCnt:I

    .line 100
    .line 101
    iget v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mUlTotalDataSize:I

    .line 102
    .line 103
    int-to-long v7, v7

    .line 104
    iget-wide v9, v6, Landroid/net/UidStatsParcel;->txBytes:J

    .line 105
    .line 106
    add-long/2addr v7, v9

    .line 107
    long-to-int v7, v7

    .line 108
    iput v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mUlTotalDataSize:I

    .line 109
    .line 110
    iget v7, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDlTotalDataSize:I

    .line 111
    .line 112
    int-to-long v7, v7

    .line 113
    iget-wide v9, v6, Landroid/net/UidStatsParcel;->rxBytes:J

    .line 114
    .line 115
    add-long/2addr v7, v9

    .line 116
    long-to-int v6, v7

    .line 117
    iput v6, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDlTotalDataSize:I

    .line 118
    .line 119
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_5
    const-string p0, "SemApTrafficStatsMonitor"

    .line 123
    .line 124
    const-string v0, "TrafficStats data is null."

    .line 125
    .line 126
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_6
    return-object v2
.end method

.method public getDebugStatus()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public setDebugMode(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mDebug:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->clearOldData()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->startTrafficStatsController(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->stopTrafficStatsController(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public updateCurConvoSet(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->mCurConvoSet:Ljava/util/Set;

    .line 2
    .line 3
    return-void
.end method
