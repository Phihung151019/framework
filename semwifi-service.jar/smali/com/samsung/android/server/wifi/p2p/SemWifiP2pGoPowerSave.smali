.class public Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final ACTION_CHECK_SIOP_LEVEL:Ljava/lang/String; = "com.samsung.intent.action.CHECK_SIOP_LEVEL"

.field private static final ACTION_SMARTSWITCH_TRANSFER:Ljava/lang/String; = "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

.field private static final P2P_GOPS_EVENT_PATTERN:Ljava/lang/String; = "P2P_GOPS_EVENT method=NOA([0-4])OPS[0-9]P[0-4C], noa_dur=([0-9]+),.*"

.field private static final SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

.field private static final TAG:Ljava/lang/String; = "SemWifiP2pGoPowerSave"

.field private static awareinuseValue:I

.field private static intentValue:I

.field private static mDurationForNoa:I

.field private static mStartTimeForNoa:J

.field private static mWorkingTimeForNoa:J

.field private static numofclients:I

.field private static p2pinuseValue:I


# instance fields
.field private chkWfdStatus:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDumpGoPowerSave:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

.field private siopLevel:I


# direct methods
.method public static synthetic $r8$lambda$ExvbPysjdbUsq4LOvK3tNZmmJtc(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->handleScreenState(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x3

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->siopLevel:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDumpGoPowerSave:Ljava/util/List;

    .line 13
    .line 14
    const-string v0, "disconnected"

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiP2pNative()Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 31
    .line 32
    return-void
.end method

.method private addDumpGoPowerSave(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDumpGoPowerSave:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x64

    .line 24
    .line 25
    if-le v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDumpGoPowerSave:Ljava/util/List;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDumpGoPowerSave:Ljava/util/List;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "Time: "

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " "

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, "\n"

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private checkTimeNoa(II)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x64

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    if-eq p1, p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x2

    .line 11
    if-eq p1, p0, :cond_2

    .line 12
    .line 13
    const/4 p0, 0x3

    .line 14
    if-eq p1, p0, :cond_2

    .line 15
    .line 16
    const/4 p0, 0x4

    .line 17
    if-eq p1, p0, :cond_2

    .line 18
    .line 19
    const/4 p0, 0x5

    .line 20
    if-eq p1, p0, :cond_2

    .line 21
    .line 22
    sget-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v0, "mWorkingTimeForNoa: "

    .line 27
    .line 28
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-wide v0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    .line 32
    .line 33
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, " result: "

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v0, "SemWifiP2pGoPowerSave"

    .line 49
    .line 50
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    sput-wide v2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    .line 54
    .line 55
    return-wide p0

    .line 56
    :cond_0
    sget-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mStartTimeForNoa:J

    .line 57
    .line 58
    cmp-long p0, p0, v2

    .line 59
    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    sget-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    sget-wide v6, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mStartTimeForNoa:J

    .line 69
    .line 70
    sub-long/2addr v4, v6

    .line 71
    sget v6, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDurationForNoa:I

    .line 72
    .line 73
    int-to-long v6, v6

    .line 74
    mul-long/2addr v4, v6

    .line 75
    div-long/2addr v4, v0

    .line 76
    add-long/2addr v4, p0

    .line 77
    sput-wide v4, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    .line 78
    .line 79
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide p0

    .line 83
    sput-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mStartTimeForNoa:J

    .line 84
    .line 85
    sput p2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDurationForNoa:I

    .line 86
    .line 87
    return-wide v2

    .line 88
    :cond_2
    sget-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mStartTimeForNoa:J

    .line 89
    .line 90
    cmp-long p0, p0, v2

    .line 91
    .line 92
    if-eqz p0, :cond_3

    .line 93
    .line 94
    sget-wide p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    .line 95
    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v4

    .line 100
    sget-wide v6, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mStartTimeForNoa:J

    .line 101
    .line 102
    sub-long/2addr v4, v6

    .line 103
    sget p2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDurationForNoa:I

    .line 104
    .line 105
    int-to-long v6, p2

    .line 106
    mul-long/2addr v4, v6

    .line 107
    div-long/2addr v4, v0

    .line 108
    add-long/2addr v4, p0

    .line 109
    sput-wide v4, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWorkingTimeForNoa:J

    .line 110
    .line 111
    sput-wide v2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mStartTimeForNoa:J

    .line 112
    .line 113
    const/4 p0, 0x0

    .line 114
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDurationForNoa:I

    .line 115
    .line 116
    :cond_3
    return-wide v2
.end method

.method private getNoaDuration(Ljava/util/regex/Matcher;)I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private getNoaNumber(Ljava/util/regex/Matcher;)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private getP2pGoPowerSaveEventMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 0

    .line 1
    const-string p0, "P2P_GOPS_EVENT method=NOA([0-4])OPS[0-9]P[0-4C], noa_dur=([0-9]+),.*"

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    :cond_0
    return-object p0
.end method

.method private handleScreenState(Z)V
    .locals 2

    .line 1
    const-string v0, "handleScreenState: "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiP2pGoPowerSave"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p1, "lcdon"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "lcdoff"

    .line 18
    .line 19
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private setP2pNoticeOfAbsence(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->setP2pNoa(Ljava/lang/String;ZI)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private setProp(Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    const-string v2, "lcdoff"

    .line 8
    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    const-string v5, "lcdon"

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x1

    .line 16
    sparse-switch v0, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :sswitch_0
    const-string v0, "closeInvitationDialog"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x5

    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :sswitch_1
    const-string v0, "smswtroff"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const/4 p1, 0x3

    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :sswitch_2
    const-string v0, "apstadis"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    const/16 p1, 0xd

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :sswitch_3
    const-string v0, "apstacon"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    const/16 p1, 0xc

    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :sswitch_4
    const-string v0, "siopLevCha"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    const/16 p1, 0xe

    .line 76
    .line 77
    goto/16 :goto_1

    .line 78
    .line 79
    :sswitch_5
    const-string v0, "openInvitationDialog"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_0

    .line 86
    .line 87
    const/4 p1, 0x4

    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :sswitch_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_0

    .line 95
    .line 96
    move p1, v6

    .line 97
    goto/16 :goto_1

    .line 98
    .line 99
    :sswitch_7
    const-string v0, "smswtron"

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_0

    .line 106
    .line 107
    move p1, v4

    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :sswitch_8
    const-string v0, "wfdSta"

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_0

    .line 117
    .line 118
    const/16 p1, 0xf

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :sswitch_9
    const-string v0, "smswon"

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_0

    .line 128
    .line 129
    const/16 p1, 0xa

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :sswitch_a
    const-string v0, "p2pena"

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_0

    .line 139
    .line 140
    move p1, v3

    .line 141
    goto :goto_1

    .line 142
    :sswitch_b
    const-string v0, "p2pdis"

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_0

    .line 149
    .line 150
    const/16 p1, 0x9

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :sswitch_c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_0

    .line 158
    .line 159
    move p1, v7

    .line 160
    goto :goto_1

    .line 161
    :sswitch_d
    const-string v0, "groupexit"

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_0

    .line 168
    .line 169
    move p1, v1

    .line 170
    goto :goto_1

    .line 171
    :sswitch_e
    const-string v0, "awareena"

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_0

    .line 178
    .line 179
    const/4 p1, 0x6

    .line 180
    goto :goto_1

    .line 181
    :sswitch_f
    const-string v0, "awaredis"

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_0

    .line 188
    .line 189
    const/4 p1, 0x7

    .line 190
    goto :goto_1

    .line 191
    :sswitch_10
    const-string v0, "smswoff"

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    if-eqz p1, :cond_0

    .line 198
    .line 199
    const/16 p1, 0xb

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_0
    :goto_0
    const/4 p1, -0x1

    .line 203
    :goto_1
    const-string v0, "wlan.p2p.awareinuse"

    .line 204
    .line 205
    const-string v8, "wlan.p2p.wfdsta"

    .line 206
    .line 207
    const-string v9, "wlan.p2p.numclient"

    .line 208
    .line 209
    const-string v10, "wlan.p2p.p2pinuse"

    .line 210
    .line 211
    const-string v11, "wlan.p2p.chkintent"

    .line 212
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 214
    .line 215
    .line 216
    sput v6, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    .line 217
    .line 218
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {v9, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sput v6, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 226
    .line 227
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-static {v11, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string p1, "disconnected"

    .line 235
    .line 236
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {v8, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-eqz p1, :cond_1

    .line 248
    .line 249
    move-object v2, v5

    .line 250
    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    .line 255
    .line 256
    invoke-static {v8, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return-void

    .line 260
    :pswitch_1
    iget p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->siopLevel:I

    .line 261
    .line 262
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    const-string p1, "wlan.p2p.temp"

    .line 267
    .line 268
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    return-void

    .line 272
    :pswitch_2
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    .line 273
    .line 274
    if-lez p0, :cond_2

    .line 275
    .line 276
    sub-int/2addr p0, v7

    .line 277
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    .line 278
    .line 279
    :cond_2
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    .line 280
    .line 281
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-static {v9, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :pswitch_3
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    .line 290
    .line 291
    if-ltz p0, :cond_3

    .line 292
    .line 293
    add-int/2addr p0, v7

    .line 294
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    .line 295
    .line 296
    :cond_3
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->numofclients:I

    .line 297
    .line 298
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-static {v9, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :pswitch_4
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->p2pinuseValue:I

    .line 307
    .line 308
    and-int/lit8 p0, p0, -0x3

    .line 309
    .line 310
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->p2pinuseValue:I

    .line 311
    .line 312
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-static {v10, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :pswitch_5
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->p2pinuseValue:I

    .line 321
    .line 322
    or-int/2addr p0, v4

    .line 323
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->p2pinuseValue:I

    .line 324
    .line 325
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    invoke-static {v10, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :pswitch_6
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->p2pinuseValue:I

    .line 334
    .line 335
    and-int/lit8 p0, p0, -0x2

    .line 336
    .line 337
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->p2pinuseValue:I

    .line 338
    .line 339
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    invoke-static {v10, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    return-void

    .line 347
    :pswitch_7
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->p2pinuseValue:I

    .line 348
    .line 349
    or-int/2addr p0, v7

    .line 350
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->p2pinuseValue:I

    .line 351
    .line 352
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    invoke-static {v10, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    :pswitch_8
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->awareinuseValue:I

    .line 361
    .line 362
    and-int/lit8 p0, p0, -0x2

    .line 363
    .line 364
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->awareinuseValue:I

    .line 365
    .line 366
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p0

    .line 370
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :pswitch_9
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->awareinuseValue:I

    .line 375
    .line 376
    or-int/2addr p0, v7

    .line 377
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->awareinuseValue:I

    .line 378
    .line 379
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    return-void

    .line 387
    :pswitch_a
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 388
    .line 389
    and-int/lit8 p0, p0, -0x21

    .line 390
    .line 391
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 392
    .line 393
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    invoke-static {v11, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :pswitch_b
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 402
    .line 403
    or-int/lit8 p0, p0, 0x20

    .line 404
    .line 405
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 406
    .line 407
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p0

    .line 411
    invoke-static {v11, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    return-void

    .line 415
    :pswitch_c
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 416
    .line 417
    and-int/lit8 p0, p0, -0x11

    .line 418
    .line 419
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 420
    .line 421
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    invoke-static {v11, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :pswitch_d
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 430
    .line 431
    or-int/2addr p0, v1

    .line 432
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 433
    .line 434
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p0

    .line 438
    invoke-static {v11, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :pswitch_e
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 443
    .line 444
    and-int/lit8 p0, p0, -0x9

    .line 445
    .line 446
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 447
    .line 448
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p0

    .line 452
    invoke-static {v11, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    return-void

    .line 456
    :pswitch_f
    sget p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 457
    .line 458
    or-int/2addr p0, v3

    .line 459
    sput p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->intentValue:I

    .line 460
    .line 461
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p0

    .line 465
    invoke-static {v11, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    return-void

    .line 469
    :sswitch_data_0
    .sparse-switch
        -0x7c06d18f -> :sswitch_10
        -0x60ac7a90 -> :sswitch_f
        -0x60ac7646 -> :sswitch_e
        -0x585ca7e3 -> :sswitch_d
        -0x4212637e -> :sswitch_c
        -0x3dec3520 -> :sswitch_b
        -0x3dec30d6 -> :sswitch_a
        -0x358c9b63 -> :sswitch_9
        -0x2f233595 -> :sswitch_8
        -0x4d0ebe5 -> :sswitch_7
        0x620706c -> :sswitch_6
        0x272920ab -> :sswitch_5
        0x43e1fad6 -> :sswitch_4
        0x4bd97c51 -> :sswitch_3
        0x4bd97f5d -> :sswitch_2
        0x6ab36eb3 -> :sswitch_1
        0x6bc1bc59 -> :sswitch_0
    .end sparse-switch

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private unsetP2pNoticeOfAbsence(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiNative:Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pNative;->setP2pNoa(Ljava/lang/String;ZI)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getDumpGoPowerSave()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mDumpGoPowerSave:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public handleEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->getP2pGoPowerSaveEventMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->addDumpGoPowerSave(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->getNoaNumber(Ljava/util/regex/Matcher;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->getNoaDuration(Ljava/util/regex/Matcher;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->checkTimeNoa(II)J

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setP2pNoticeOfAbsence(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->unsetP2pNoticeOfAbsence(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    if-eqz p2, :cond_9

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "GopsReceiver : received : "

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "SemWifiP2pGoPowerSave"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const-string v0, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    const-string p1, "smartswitch_transfer"

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const-string p1, "smartswitch_transfer is not set."

    .line 43
    .line 44
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const-string p1, "smswoff"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const-string p2, "smartswitch_transfer = "

    .line 59
    .line 60
    invoke-static {p2, v1, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    const-string p1, "smswtron"

    .line 66
    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    const-string p1, "smswtroff"

    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    const-string v0, "com.samsung.intent.action.CHECK_SIOP_LEVEL"

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    const/4 p1, -0x3

    .line 86
    iput p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->siopLevel:I

    .line 87
    .line 88
    const-string v0, "siop_level_broadcast"

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    const-string v3, "siopLevCha"

    .line 95
    .line 96
    if-nez v2, :cond_4

    .line 97
    .line 98
    const-string p1, "siop_level was set to the default value."

    .line 99
    .line 100
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iput p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->siopLevel:I

    .line 112
    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string p2, "siop_level = "

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->siopLevel:I

    .line 121
    .line 122
    invoke-static {v1, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_5
    const-string v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_9

    .line 136
    .line 137
    const-string p1, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    .line 138
    .line 139
    const-class v0, Landroid/hardware/display/WifiDisplayStatus;

    .line 140
    .line 141
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Landroid/hardware/display/WifiDisplayStatus;

    .line 146
    .line 147
    const-string p2, "disconnected"

    .line 148
    .line 149
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    .line 150
    .line 151
    const-string p2, "wfdSta"

    .line 152
    .line 153
    if-nez p1, :cond_6

    .line 154
    .line 155
    const-string p1, "chkWfdStatus was set to the default value."

    .line 156
    .line 157
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :cond_6
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    const/4 v0, 0x2

    .line 169
    if-ne p1, v0, :cond_7

    .line 170
    .line 171
    const-string p1, "connected"

    .line 172
    .line 173
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_7
    const/4 v0, 0x1

    .line 177
    if-ne p1, v0, :cond_8

    .line 178
    .line 179
    const-string p1, "connecting"

    .line 180
    .line 181
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    .line 182
    .line 183
    :cond_8
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v0, "chkWfdStatus = "

    .line 186
    .line 187
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->chkWfdStatus:Ljava/lang/String;

    .line 191
    .line 192
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_9
    :goto_1
    return-void
.end method

.method public registerListener()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.samsung.intent.action.CHECK_SIOP_LEVEL"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->handleScreenState(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 37
    .line 38
    new-instance v1, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setApStaConnected()V
    .locals 1

    .line 1
    const-string v0, "apstacon"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setApStaDisconnected()V
    .locals 1

    .line 1
    const-string v0, "apstadis"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAwareDisabled()V
    .locals 1

    .line 1
    const-string v0, "awaredis"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAwareEnabled()V
    .locals 1

    .line 1
    const-string v0, "awareena"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setGroupRemoved()V
    .locals 1

    .line 1
    const-string v0, "groupexit"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setP2pDisabled()V
    .locals 1

    .line 1
    const-string v0, "p2pdis"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setP2pEnabled()V
    .locals 1

    .line 1
    const-string v0, "p2pena"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSmartSwitchOff()V
    .locals 1

    .line 1
    const-string v0, "smswoff"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSmartSwitchOn()V
    .locals 1

    .line 1
    const-string v0, "smswon"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pGoPowerSave;->setProp(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
