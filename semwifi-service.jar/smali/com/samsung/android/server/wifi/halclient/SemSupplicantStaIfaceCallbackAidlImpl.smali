.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;
.super Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final ERROR_CODE_802_1X_AUTH_FAILED:I = 0x13953

.field private static final TAG:Ljava/lang/String; = "SemSupplicantStaIfaceCallbackAidlImpl"


# instance fields
.field private final mIfaceName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

.field private mStateBeforeDisconnect:I

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;Ljava/lang/String;Ljava/lang/Object;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStateBeforeDisconnect:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 14
    .line 15
    return-void
.end method

.method private convertMloLinkInfoChangedReason(I)Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor$MloLinkInfoChangeReason;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_0

    .line 5
    .line 6
    sget-object p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor$MloLinkInfoChangeReason;->UNKNOWN:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor$MloLinkInfoChangeReason;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor$MloLinkInfoChangeReason;->MULTI_LINK_RECONFIG_AP_REMOVAL:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor$MloLinkInfoChangeReason;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor$MloLinkInfoChangeReason;->TID_TO_LINK_MAP:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor$MloLinkInfoChangeReason;

    .line 13
    .line 14
    return-object p0
.end method

.method private getMloLinksInfoChangedReasonStr(I)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_0

    .line 5
    .line 6
    const-string p0, "UNKNOWN"

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string p0, "MULTI_LINK_RECONFIG_AP_REMOVAL"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const-string p0, "TID_TO_LINK_MAP"

    .line 13
    .line 14
    return-object p0
.end method

.method private static halAuxiliaryEventToFrameworkSupplicantEventCode(I)I
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    .line 10
    .line 11
    const-string v0, "Invalid auxiliary event code received"

    .line 12
    .line 13
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 p0, -0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x7

    .line 19
    return p0

    .line 20
    :cond_1
    const/4 p0, 0x6

    .line 21
    return p0

    .line 22
    :cond_2
    const/4 p0, 0x4

    .line 23
    return p0
.end method

.method private halToFrameworkBssTmDataFlagsMask(I)I
    .locals 1

    .line 1
    and-int/lit8 p0, p1, 0x1

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    and-int/lit8 v0, p1, 0x2

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    or-int/lit8 p0, p0, 0x2

    .line 13
    .line 14
    :cond_1
    and-int/lit8 v0, p1, 0x4

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    or-int/lit8 p0, p0, 0x4

    .line 19
    .line 20
    :cond_2
    and-int/lit8 v0, p1, 0x8

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    or-int/lit8 p0, p0, 0x8

    .line 25
    .line 26
    :cond_3
    and-int/lit8 v0, p1, 0x10

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    or-int/lit8 p0, p0, 0x10

    .line 31
    .line 32
    :cond_4
    and-int/lit8 v0, p1, 0x20

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    or-int/lit8 p0, p0, 0x20

    .line 37
    .line 38
    :cond_5
    and-int/lit8 v0, p1, 0x40

    .line 39
    .line 40
    if-eqz v0, :cond_6

    .line 41
    .line 42
    or-int/lit8 p0, p0, 0x40

    .line 43
    .line 44
    :cond_6
    and-int/lit16 p1, p1, 0x80

    .line 45
    .line 46
    if-eqz p1, :cond_7

    .line 47
    .line 48
    or-int/lit16 p0, p0, 0x80

    .line 49
    .line 50
    :cond_7
    return p0
.end method

.method private halToFrameworkBtmResponseStatus(I)I
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/16 p0, 0xfe

    .line 5
    .line 6
    return p0

    .line 7
    :pswitch_0
    const/16 p0, 0x8

    .line 8
    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x7

    .line 11
    return p0

    .line 12
    :pswitch_2
    const/4 p0, 0x6

    .line 13
    return p0

    .line 14
    :pswitch_3
    const/4 p0, 0x5

    .line 15
    return p0

    .line 16
    :pswitch_4
    const/4 p0, 0x4

    .line 17
    return p0

    .line 18
    :pswitch_5
    const/4 p0, 0x3

    .line 19
    return p0

    .line 20
    :pswitch_6
    const/4 p0, 0x2

    .line 21
    return p0

    .line 22
    :pswitch_7
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :pswitch_8
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
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

.method private halToFrameworkDppEventType(I)I
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_0

    .line 5
    .line 6
    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    .line 7
    .line 8
    const-string p1, "Invalid DppEventType received"

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    :cond_0
    return p0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method private halToFrameworkDppFailureCode(I)I
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    .line 5
    .line 6
    const-string p1, "Invalid DppFailureCode received"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :pswitch_0
    const/16 p0, 0xb

    .line 14
    .line 15
    return p0

    .line 16
    :pswitch_1
    const/16 p0, 0xa

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_2
    const/16 p0, 0x9

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_3
    const/16 p0, 0x8

    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_4
    const/4 p0, 0x7

    .line 26
    return p0

    .line 27
    :pswitch_5
    const/4 p0, 0x6

    .line 28
    return p0

    .line 29
    :pswitch_6
    const/4 p0, 0x5

    .line 30
    return p0

    .line 31
    :pswitch_7
    const/4 p0, 0x4

    .line 32
    return p0

    .line 33
    :pswitch_8
    const/4 p0, 0x3

    .line 34
    return p0

    .line 35
    :pswitch_9
    const/4 p0, 0x2

    .line 36
    return p0

    .line 37
    :pswitch_a
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :pswitch_b
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
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

.method private halToFrameworkDppProgressCode(I)I
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-eq p1, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    if-eq p1, p0, :cond_0

    .line 11
    .line 12
    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    .line 13
    .line 14
    const-string p1, "Invalid DppProgressCode received"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 p0, -0x1

    .line 20
    :cond_0
    return p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method private halToFrameworkMboAssocDisallowedReasonCode(B)B
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    if-eq p1, p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x3

    .line 10
    if-eq p1, p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x4

    .line 13
    if-eq p1, p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x5

    .line 16
    if-eq p1, p0, :cond_0

    .line 17
    .line 18
    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    .line 19
    .line 20
    const-string p1, "Invalid MboAssocDisallowedReasonCode received"

    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    const/4 p0, -0x1

    .line 26
    :cond_0
    return p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method private halToFrameworkMboCellularDataConnectionPreference(I)I
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    if-eq p1, p0, :cond_0

    .line 5
    .line 6
    const/16 p0, 0xff

    .line 7
    .line 8
    if-eq p1, p0, :cond_0

    .line 9
    .line 10
    const/16 p0, 0xfe

    .line 11
    .line 12
    :cond_0
    return p0

    .line 13
    :cond_1
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private halToFrameworkMboTransitionReason(I)I
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/16 p0, 0xfe

    .line 5
    .line 6
    return p0

    .line 7
    :pswitch_0
    const/16 p0, 0x8

    .line 8
    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x7

    .line 11
    return p0

    .line 12
    :pswitch_2
    const/4 p0, 0x6

    .line 13
    return p0

    .line 14
    :pswitch_3
    const/4 p0, 0x5

    .line 15
    return p0

    .line 16
    :pswitch_4
    const/4 p0, 0x4

    .line 17
    return p0

    .line 18
    :pswitch_5
    const/4 p0, 0x3

    .line 19
    return p0

    .line 20
    :pswitch_6
    const/4 p0, 0x2

    .line 21
    return p0

    .line 22
    :pswitch_7
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :pswitch_8
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
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

.method private halToFrameworkReasonCode(I)I
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    packed-switch p1, :pswitch_data_1

    .line 5
    .line 6
    .line 7
    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    .line 8
    .line 9
    const-string p1, "Invalid reason code received"

    .line 10
    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 p0, -0x1

    .line 15
    return p0

    .line 16
    :pswitch_0
    const/16 p0, 0x42

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_1
    const/16 p0, 0x41

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_2
    const/16 p0, 0x40

    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_3
    const/16 p0, 0x3f

    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_4
    const/16 p0, 0x3e

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_5
    const/16 p0, 0x3d

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_6
    const/16 p0, 0x3c

    .line 35
    .line 36
    return p0

    .line 37
    :pswitch_7
    const/16 p0, 0x3b

    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_8
    const/16 p0, 0x3a

    .line 41
    .line 42
    return p0

    .line 43
    :pswitch_9
    const/16 p0, 0x39

    .line 44
    .line 45
    return p0

    .line 46
    :pswitch_a
    const/16 p0, 0x38

    .line 47
    .line 48
    return p0

    .line 49
    :pswitch_b
    const/16 p0, 0x37

    .line 50
    .line 51
    return p0

    .line 52
    :pswitch_c
    const/16 p0, 0x36

    .line 53
    .line 54
    return p0

    .line 55
    :pswitch_d
    const/16 p0, 0x35

    .line 56
    .line 57
    return p0

    .line 58
    :pswitch_e
    const/16 p0, 0x34

    .line 59
    .line 60
    return p0

    .line 61
    :pswitch_f
    const/16 p0, 0x33

    .line 62
    .line 63
    return p0

    .line 64
    :pswitch_10
    const/16 p0, 0x32

    .line 65
    .line 66
    return p0

    .line 67
    :pswitch_11
    const/16 p0, 0x31

    .line 68
    .line 69
    return p0

    .line 70
    :pswitch_12
    const/16 p0, 0x30

    .line 71
    .line 72
    return p0

    .line 73
    :pswitch_13
    const/16 p0, 0x2f

    .line 74
    .line 75
    return p0

    .line 76
    :pswitch_14
    const/16 p0, 0x2e

    .line 77
    .line 78
    return p0

    .line 79
    :pswitch_15
    const/16 p0, 0x2d

    .line 80
    .line 81
    return p0

    .line 82
    :pswitch_16
    const/16 p0, 0x27

    .line 83
    .line 84
    return p0

    .line 85
    :pswitch_17
    const/16 p0, 0x26

    .line 86
    .line 87
    return p0

    .line 88
    :pswitch_18
    const/16 p0, 0x25

    .line 89
    .line 90
    return p0

    .line 91
    :pswitch_19
    const/16 p0, 0x24

    .line 92
    .line 93
    return p0

    .line 94
    :pswitch_1a
    const/16 p0, 0x23

    .line 95
    .line 96
    return p0

    .line 97
    :pswitch_1b
    const/16 p0, 0x22

    .line 98
    .line 99
    return p0

    .line 100
    :pswitch_1c
    const/16 p0, 0x21

    .line 101
    .line 102
    return p0

    .line 103
    :pswitch_1d
    const/16 p0, 0x20

    .line 104
    .line 105
    return p0

    .line 106
    :pswitch_1e
    const/16 p0, 0x1f

    .line 107
    .line 108
    return p0

    .line 109
    :pswitch_1f
    const/16 p0, 0x1e

    .line 110
    .line 111
    return p0

    .line 112
    :pswitch_20
    const/16 p0, 0x1d

    .line 113
    .line 114
    return p0

    .line 115
    :pswitch_21
    const/16 p0, 0x1c

    .line 116
    .line 117
    return p0

    .line 118
    :pswitch_22
    const/16 p0, 0x1b

    .line 119
    .line 120
    return p0

    .line 121
    :pswitch_23
    const/16 p0, 0x1a

    .line 122
    .line 123
    return p0

    .line 124
    :pswitch_24
    const/16 p0, 0x19

    .line 125
    .line 126
    return p0

    .line 127
    :pswitch_25
    const/16 p0, 0x18

    .line 128
    .line 129
    return p0

    .line 130
    :pswitch_26
    const/16 p0, 0x17

    .line 131
    .line 132
    return p0

    .line 133
    :pswitch_27
    const/16 p0, 0x16

    .line 134
    .line 135
    return p0

    .line 136
    :pswitch_28
    const/16 p0, 0x15

    .line 137
    .line 138
    return p0

    .line 139
    :pswitch_29
    const/16 p0, 0x14

    .line 140
    .line 141
    return p0

    .line 142
    :pswitch_2a
    const/16 p0, 0x13

    .line 143
    .line 144
    return p0

    .line 145
    :pswitch_2b
    const/16 p0, 0x12

    .line 146
    .line 147
    return p0

    .line 148
    :pswitch_2c
    const/16 p0, 0x11

    .line 149
    .line 150
    return p0

    .line 151
    :pswitch_2d
    const/16 p0, 0x10

    .line 152
    .line 153
    return p0

    .line 154
    :pswitch_2e
    const/16 p0, 0xf

    .line 155
    .line 156
    return p0

    .line 157
    :pswitch_2f
    const/16 p0, 0xe

    .line 158
    .line 159
    return p0

    .line 160
    :pswitch_30
    const/16 p0, 0xd

    .line 161
    .line 162
    return p0

    .line 163
    :pswitch_31
    const/16 p0, 0xc

    .line 164
    .line 165
    return p0

    .line 166
    :pswitch_32
    const/16 p0, 0xb

    .line 167
    .line 168
    return p0

    .line 169
    :pswitch_33
    const/16 p0, 0xa

    .line 170
    .line 171
    return p0

    .line 172
    :pswitch_34
    const/16 p0, 0x9

    .line 173
    .line 174
    return p0

    .line 175
    :pswitch_35
    const/16 p0, 0x8

    .line 176
    .line 177
    return p0

    .line 178
    :pswitch_36
    const/4 p0, 0x7

    .line 179
    return p0

    .line 180
    :pswitch_37
    const/4 p0, 0x6

    .line 181
    return p0

    .line 182
    :pswitch_38
    const/4 p0, 0x5

    .line 183
    return p0

    .line 184
    :pswitch_39
    const/4 p0, 0x4

    .line 185
    return p0

    .line 186
    :pswitch_3a
    const/4 p0, 0x3

    .line 187
    return p0

    .line 188
    :pswitch_3b
    const/4 p0, 0x2

    .line 189
    return p0

    .line 190
    :pswitch_3c
    const/4 p0, 0x1

    .line 191
    return p0

    .line 192
    nop

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

.method protected static halToFrameworkStatusCode(I)I
    .locals 1

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    :pswitch_0
    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    .line 5
    .line 6
    const-string v0, "Invalid status code received"

    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :pswitch_1
    const/16 p0, 0x71

    .line 14
    .line 15
    return p0

    .line 16
    :pswitch_2
    const/16 p0, 0x70

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_3
    const/16 p0, 0x6b

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_4
    const/16 p0, 0x6a

    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_5
    const/16 p0, 0x69

    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_6
    const/16 p0, 0x68

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_7
    const/16 p0, 0x67

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_8
    const/16 p0, 0x66

    .line 35
    .line 36
    return p0

    .line 37
    :pswitch_9
    const/16 p0, 0x65

    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_a
    const/16 p0, 0x64

    .line 41
    .line 42
    return p0

    .line 43
    :pswitch_b
    const/16 p0, 0x63

    .line 44
    .line 45
    return p0

    .line 46
    :pswitch_c
    const/16 p0, 0x62

    .line 47
    .line 48
    return p0

    .line 49
    :pswitch_d
    const/16 p0, 0x61

    .line 50
    .line 51
    return p0

    .line 52
    :pswitch_e
    const/16 p0, 0x60

    .line 53
    .line 54
    return p0

    .line 55
    :pswitch_f
    const/16 p0, 0x5f

    .line 56
    .line 57
    return p0

    .line 58
    :pswitch_10
    const/16 p0, 0x5e

    .line 59
    .line 60
    return p0

    .line 61
    :pswitch_11
    const/16 p0, 0x5d

    .line 62
    .line 63
    return p0

    .line 64
    :pswitch_12
    const/16 p0, 0x5c

    .line 65
    .line 66
    return p0

    .line 67
    :pswitch_13
    const/16 p0, 0x59

    .line 68
    .line 69
    return p0

    .line 70
    :pswitch_14
    const/16 p0, 0x58

    .line 71
    .line 72
    return p0

    .line 73
    :pswitch_15
    const/16 p0, 0x57

    .line 74
    .line 75
    return p0

    .line 76
    :pswitch_16
    const/16 p0, 0x56

    .line 77
    .line 78
    return p0

    .line 79
    :pswitch_17
    const/16 p0, 0x55

    .line 80
    .line 81
    return p0

    .line 82
    :pswitch_18
    const/16 p0, 0x54

    .line 83
    .line 84
    return p0

    .line 85
    :pswitch_19
    const/16 p0, 0x53

    .line 86
    .line 87
    return p0

    .line 88
    :pswitch_1a
    const/16 p0, 0x52

    .line 89
    .line 90
    return p0

    .line 91
    :pswitch_1b
    const/16 p0, 0x51

    .line 92
    .line 93
    return p0

    .line 94
    :pswitch_1c
    const/16 p0, 0x50

    .line 95
    .line 96
    return p0

    .line 97
    :pswitch_1d
    const/16 p0, 0x4f

    .line 98
    .line 99
    return p0

    .line 100
    :pswitch_1e
    const/16 p0, 0x4e

    .line 101
    .line 102
    return p0

    .line 103
    :pswitch_1f
    const/16 p0, 0x4d

    .line 104
    .line 105
    return p0

    .line 106
    :pswitch_20
    const/16 p0, 0x4c

    .line 107
    .line 108
    return p0

    .line 109
    :pswitch_21
    const/16 p0, 0x4b

    .line 110
    .line 111
    return p0

    .line 112
    :pswitch_22
    const/16 p0, 0x4a

    .line 113
    .line 114
    return p0

    .line 115
    :pswitch_23
    const/16 p0, 0x49

    .line 116
    .line 117
    return p0

    .line 118
    :pswitch_24
    const/16 p0, 0x48

    .line 119
    .line 120
    return p0

    .line 121
    :pswitch_25
    const/16 p0, 0x44

    .line 122
    .line 123
    return p0

    .line 124
    :pswitch_26
    const/16 p0, 0x43

    .line 125
    .line 126
    return p0

    .line 127
    :pswitch_27
    const/16 p0, 0x41

    .line 128
    .line 129
    return p0

    .line 130
    :pswitch_28
    const/16 p0, 0x40

    .line 131
    .line 132
    return p0

    .line 133
    :pswitch_29
    const/16 p0, 0x3f

    .line 134
    .line 135
    return p0

    .line 136
    :pswitch_2a
    const/16 p0, 0x3e

    .line 137
    .line 138
    return p0

    .line 139
    :pswitch_2b
    const/16 p0, 0x3d

    .line 140
    .line 141
    return p0

    .line 142
    :pswitch_2c
    const/16 p0, 0x3c

    .line 143
    .line 144
    return p0

    .line 145
    :pswitch_2d
    const/16 p0, 0x3b

    .line 146
    .line 147
    return p0

    .line 148
    :pswitch_2e
    const/16 p0, 0x3a

    .line 149
    .line 150
    return p0

    .line 151
    :pswitch_2f
    const/16 p0, 0x39

    .line 152
    .line 153
    return p0

    .line 154
    :pswitch_30
    const/16 p0, 0x38

    .line 155
    .line 156
    return p0

    .line 157
    :pswitch_31
    const/16 p0, 0x37

    .line 158
    .line 159
    return p0

    .line 160
    :pswitch_32
    const/16 p0, 0x36

    .line 161
    .line 162
    return p0

    .line 163
    :pswitch_33
    const/16 p0, 0x35

    .line 164
    .line 165
    return p0

    .line 166
    :pswitch_34
    const/16 p0, 0x34

    .line 167
    .line 168
    return p0

    .line 169
    :pswitch_35
    const/16 p0, 0x33

    .line 170
    .line 171
    return p0

    .line 172
    :pswitch_36
    const/16 p0, 0x32

    .line 173
    .line 174
    return p0

    .line 175
    :pswitch_37
    const/16 p0, 0x31

    .line 176
    .line 177
    return p0

    .line 178
    :pswitch_38
    const/16 p0, 0x30

    .line 179
    .line 180
    return p0

    .line 181
    :pswitch_39
    const/16 p0, 0x2f

    .line 182
    .line 183
    return p0

    .line 184
    :pswitch_3a
    const/16 p0, 0x2e

    .line 185
    .line 186
    return p0

    .line 187
    :pswitch_3b
    const/16 p0, 0x2d

    .line 188
    .line 189
    return p0

    .line 190
    :pswitch_3c
    const/16 p0, 0x2c

    .line 191
    .line 192
    return p0

    .line 193
    :pswitch_3d
    const/16 p0, 0x2b

    .line 194
    .line 195
    return p0

    .line 196
    :pswitch_3e
    const/16 p0, 0x2a

    .line 197
    .line 198
    return p0

    .line 199
    :pswitch_3f
    const/16 p0, 0x29

    .line 200
    .line 201
    return p0

    .line 202
    :pswitch_40
    const/16 p0, 0x28

    .line 203
    .line 204
    return p0

    .line 205
    :pswitch_41
    const/16 p0, 0x27

    .line 206
    .line 207
    return p0

    .line 208
    :pswitch_42
    const/16 p0, 0x26

    .line 209
    .line 210
    return p0

    .line 211
    :pswitch_43
    const/16 p0, 0x25

    .line 212
    .line 213
    return p0

    .line 214
    :pswitch_44
    const/16 p0, 0x23

    .line 215
    .line 216
    return p0

    .line 217
    :pswitch_45
    const/16 p0, 0x22

    .line 218
    .line 219
    return p0

    .line 220
    :pswitch_46
    const/16 p0, 0x21

    .line 221
    .line 222
    return p0

    .line 223
    :pswitch_47
    const/16 p0, 0x20

    .line 224
    .line 225
    return p0

    .line 226
    :pswitch_48
    const/16 p0, 0x1f

    .line 227
    .line 228
    return p0

    .line 229
    :pswitch_49
    const/16 p0, 0x1e

    .line 230
    .line 231
    return p0

    .line 232
    :pswitch_4a
    const/16 p0, 0x1d

    .line 233
    .line 234
    return p0

    .line 235
    :pswitch_4b
    const/16 p0, 0x1c

    .line 236
    .line 237
    return p0

    .line 238
    :pswitch_4c
    const/16 p0, 0x1b

    .line 239
    .line 240
    return p0

    .line 241
    :pswitch_4d
    const/16 p0, 0x19

    .line 242
    .line 243
    return p0

    .line 244
    :pswitch_4e
    const/16 p0, 0x18

    .line 245
    .line 246
    return p0

    .line 247
    :pswitch_4f
    const/16 p0, 0x17

    .line 248
    .line 249
    return p0

    .line 250
    :pswitch_50
    const/16 p0, 0x16

    .line 251
    .line 252
    return p0

    .line 253
    :pswitch_51
    const/16 p0, 0x13

    .line 254
    .line 255
    return p0

    .line 256
    :pswitch_52
    const/16 p0, 0x12

    .line 257
    .line 258
    return p0

    .line 259
    :pswitch_53
    const/16 p0, 0x11

    .line 260
    .line 261
    return p0

    .line 262
    :pswitch_54
    const/16 p0, 0x10

    .line 263
    .line 264
    return p0

    .line 265
    :pswitch_55
    const/16 p0, 0xf

    .line 266
    .line 267
    return p0

    .line 268
    :pswitch_56
    const/16 p0, 0xe

    .line 269
    .line 270
    return p0

    .line 271
    :pswitch_57
    const/16 p0, 0xd

    .line 272
    .line 273
    return p0

    .line 274
    :pswitch_58
    const/16 p0, 0xc

    .line 275
    .line 276
    return p0

    .line 277
    :pswitch_59
    const/16 p0, 0xb

    .line 278
    .line 279
    return p0

    .line 280
    :pswitch_5a
    const/16 p0, 0xa

    .line 281
    .line 282
    return p0

    .line 283
    :pswitch_5b
    const/4 p0, 0x7

    .line 284
    return p0

    .line 285
    :pswitch_5c
    const/4 p0, 0x6

    .line 286
    return p0

    .line 287
    :pswitch_5d
    const/4 p0, 0x5

    .line 288
    return p0

    .line 289
    :pswitch_5e
    const/4 p0, 0x3

    .line 290
    return p0

    .line 291
    :pswitch_5f
    const/4 p0, 0x2

    .line 292
    return p0

    .line 293
    :pswitch_60
    const/4 p0, 0x1

    .line 294
    return p0

    .line 295
    :pswitch_61
    const/4 p0, 0x0

    .line 296
    return p0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_0
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_0
        :pswitch_0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_0
        :pswitch_0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_0
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_0
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleSupplicantStateChangedEvent(I[BI[BZII)V
    .locals 5

    .line 1
    move p3, p5

    .line 2
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->supplicantAidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;

    .line 3
    .line 4
    .line 5
    move-result-object p5

    .line 6
    invoke-static {p4}, Lcom/samsung/android/wifi/SemWifiSsid;->createFromByteArray([B)Lcom/samsung/android/wifi/SemWifiSsid;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p6, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-static {p6}, Lcom/samsung/android/server/wifi/util/SemHalAidlUtil;->supplicantToWifiConfigurationKeyMgmtMask(I)Ljava/util/BitSet;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v3, "Failed convert supplicant key management mask to the framework value: "

    .line 26
    .line 27
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "SemSupplicantStaIfaceCallbackAidlImpl"

    .line 42
    .line 43
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "onStateChanged: newState="

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, ", bssid="

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, ", ssid="

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p4}, Lcom/samsung/android/wifi/SemWifiSsid;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, ", filsHlpSent="

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p3, ", supplicantKeyMgmtMask="

    .line 87
    .line 88
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    const-string p6, "0x%08X"

    .line 100
    .line 101
    invoke-static {p6, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p3, ", frameworkKeyMgmtMask="

    .line 109
    .line 110
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p3, ", frequencyMhz="

    .line 117
    .line 118
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-virtual {v0, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    if-eqz p1, :cond_1

    .line 132
    .line 133
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStateBeforeDisconnect:I

    .line 134
    .line 135
    :cond_1
    const/16 p3, 0x9

    .line 136
    .line 137
    if-ne p1, p3, :cond_2

    .line 138
    .line 139
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 140
    .line 141
    iget-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 142
    .line 143
    iget-object p6, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 144
    .line 145
    invoke-virtual {p6, p3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getCurrentSupplicantNetworkId(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result p6

    .line 149
    invoke-virtual {p1, p3, p6, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkConnectionEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_2
    move-object p1, p0

    .line 153
    iget-object p0, p1, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 154
    .line 155
    move-object p3, p1

    .line 156
    iget-object p1, p3, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 157
    .line 158
    iget-object p3, p3, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 159
    .line 160
    invoke-virtual {p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getCurrentSupplicantNetworkId(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    move-object v4, p4

    .line 165
    move-object p4, p2

    .line 166
    move p2, p3

    .line 167
    move-object p3, v4

    .line 168
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastSupplicantStateChangeEvent(Ljava/lang/String;ILcom/samsung/android/wifi/SemWifiSsid;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method protected static supplicantAidlStateToFrameworkState(I)Landroid/net/wifi/SupplicantState;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v1, "Invalid state: "

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :pswitch_0
    sget-object p0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_1
    sget-object p0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_2
    sget-object p0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_3
    sget-object p0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_4
    sget-object p0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_5
    sget-object p0, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_6
    sget-object p0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_7
    sget-object p0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_8
    sget-object p0, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_9
    sget-object p0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    .line 44
    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "55b58c9bd6d40c1459073b5d03f4ede5cfc9a212"

    .line 2
    .line 3
    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/Hs20AnqpData;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string p2, "onAnqpQueryDone"

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onAssociationRejected(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onAssociationRejected"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    iget v2, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->statusCode:I

    .line 16
    .line 17
    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->timedOut:Z

    .line 18
    .line 19
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->bssid:[B

    .line 20
    .line 21
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1, p0, v2, v3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAssociationRejectionEvent(Ljava/lang/String;IZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public onAuthenticationTimeout([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onAuthenticationTimeout"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, -0x1

    .line 21
    invoke-virtual {v1, p0, v2, v3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public onAuxiliarySupplicantEvent(I[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string p2, "onAuxiliarySupplicantEvent event="

    .line 2
    .line 3
    iget-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p3

    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->halAuxiliaryEventToFrameworkSupplicantEventCode(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    monitor-exit p3

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method

.method public onBssFrequencyChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 2
    .line 3
    const-string p1, "onBssFrequencyChanged"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onBssTmHandlingDone(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/BssTmData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v0, "onBssTmHandlingDone: Handle BTM handling event"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onBssidChanged(B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onBssidChanged"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastTargetBssidEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v1, 0x1

    .line 28
    if-ne p1, v1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAssociatedBssidEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public onDisconnected([BZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "onDisconnected state="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 7
    .line 8
    const-string v3, "onDisconnected"

    .line 9
    .line 10
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->isVerboseLoggingEnabled()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const-string v2, "SemSupplicantStaIfaceCallbackAidlImpl"

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStateBeforeDisconnect:I

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, " locallyGenerated="

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, " reasonCode="

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStateBeforeDisconnect:I

    .line 60
    .line 61
    const/4 v2, 0x7

    .line 62
    if-ne v0, v2, :cond_2

    .line 63
    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    const/16 v2, 0x11

    .line 67
    .line 68
    if-eq p3, v2, :cond_2

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const/4 v4, 0x2

    .line 79
    const/4 v5, -0x1

    .line 80
    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    const/4 v2, 0x6

    .line 85
    if-ne v0, v2, :cond_3

    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    const/4 v4, 0x3

    .line 96
    const v5, 0x13953

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v0, p0, p2, p3, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkDisconnectionEvent(Ljava/lang/String;IILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 115
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0
.end method

.method public onDppConfigReceived(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConfigurationData;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 2
    .line 3
    const-string p1, "onDppConfigReceived"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDppConnectionStatusResultSent(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 2
    .line 3
    const-string p1, "onDppConnectionStatusResultSent"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onDppFailure(ILjava/lang/String;Ljava/lang/String;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string p2, "onDppFailure, not implement yet..."

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onDppProgress(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v0, "onDppProgress, not implement yet..."

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onDppSuccess(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v0, "onDppSuccess, not implement yet..."

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onDppSuccessConfigReceived([BLjava/lang/String;[BILcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string p2, "onDppSuccessConfigReceived, not implement yet..."

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onDppSuccessConfigSent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v1, "onDppSuccessConfigSent, not implement yet..."

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onEapFailure([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onEapFailure"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressFromByteArray([B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v2, 0x3

    .line 20
    invoke-virtual {v1, p0, v2, p2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastAuthenticationFailureEvent(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    :try_start_2
    const-string p0, "SemSupplicantStaIfaceCallbackAidlImpl"

    .line 27
    .line 28
    const-string p1, "Invalid bssid received"

    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    throw p0
.end method

.method public onExtRadioWorkStart(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v0, "onExtRadioWorkStart"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onExtRadioWorkTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v0, "onExtRadioWorkTimeout"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string p2, "onHs20DeauthImminentNotice, not implement yet..."

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onHs20IconQueryDone([BLjava/lang/String;[B)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string p2, "onHs20IconQueryDone"

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string p2, "onHs20SubscriptionRemediation, not implement yet..."

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onHs20TermsAndConditionsAcceptanceRequestedNotification([BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string p2, "onHs20TermsAndConditionsAcceptanceRequestedNotification, not implement yet..."

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onMloLinksInfoChanged(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "onMloLinksInfoChanged: reason "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, " ("

    .line 11
    .line 12
    invoke-static {v2, p1, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApPowerSaveImpl$SoftApPowerSaveStateMachine$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->getMloLinksInfoChangedReasonStr(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, ")"

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->convertMloLinkInfoChangedReason(I)Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor$MloLinkInfoChangeReason;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastMloLinksInfoChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor$MloLinkInfoChangeReason;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onNetworkAdded(I)V
    .locals 3

    .line 1
    const-string v0, "onNetworkAdded id="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v1

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public onNetworkNotFound([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 2
    .line 3
    const-string v1, "onNetworkNotFoundNotification"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->byteArrayToArrayList([B)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->encodeSsid(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastNetworkNotFoundEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onNetworkRemoved(I)V
    .locals 4

    .line 1
    const-string v0, "onNetworkRemoved id="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStateBeforeDisconnect:I

    .line 25
    .line 26
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public onPmkCacheAdded(J[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 2
    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string p3, "onPmkCacheAdded: update pmk cache for id "

    .line 6
    .line 7
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p3, v0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->getCurrentSupplicantNetworkId(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p3, " on "

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onPmkSaCacheAdded(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PmkSaCacheData;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 2
    .line 3
    const-string p1, "onPmkSaCacheAdded"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onQosPolicyRequest(I[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string p2, "onQosPolicyRequest"

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onQosPolicyReset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v1, "onQosPolicyReset"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public onQosPolicyResponseForScs([Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsResponseStatus;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 2
    .line 3
    const-string p1, "onQosPolicyResponseForScs"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onStateChanged(I[BI[BZ)V
    .locals 9

    .line 1
    iget-object v8, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v8

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onStateChanged"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    move-object v0, p0

    .line 14
    move v1, p1

    .line 15
    move-object v2, p2

    .line 16
    move v3, p3

    .line 17
    move-object v4, p4

    .line 18
    move v5, p5

    .line 19
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->handleSupplicantStateChangedEvent(I[BI[BZII)V

    .line 20
    .line 21
    .line 22
    monitor-exit v8

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v0
.end method

.method public onSupplicantStateChanged(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SupplicantStateChangeData;)V
    .locals 11

    .line 1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onSupplicantStateChanged"

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SupplicantStateChangeData;->newState:I

    .line 12
    .line 13
    iget-object v5, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SupplicantStateChangeData;->bssid:[B

    .line 14
    .line 15
    iget v6, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SupplicantStateChangeData;->id:I

    .line 16
    .line 17
    iget-object v7, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SupplicantStateChangeData;->ssid:[B

    .line 18
    .line 19
    iget-boolean v8, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SupplicantStateChangeData;->filsHlpSent:Z

    .line 20
    .line 21
    iget v9, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SupplicantStateChangeData;->keyMgmtMask:I

    .line 22
    .line 23
    iget v10, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SupplicantStateChangeData;->frequencyMhz:I

    .line 24
    .line 25
    move-object v3, p0

    .line 26
    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->handleSupplicantStateChangedEvent(I[BI[BZII)V

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    move-object p0, v0

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public onWpsEventFail([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v1, "onWpsEventFail"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    if-ne p2, v0, :cond_0

    .line 14
    .line 15
    if-nez p3, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p2, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastWpsTimeoutEvent(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, p0, p2, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastWpsFailEvent(Ljava/lang/String;II)V

    .line 32
    .line 33
    .line 34
    :goto_0
    monitor-exit p1

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method

.method public onWpsEventPbcOverlap()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onWpsEventPbcOverlap"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastWpsOverlapEvent(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method

.method public onWpsEventSuccess()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mStaIfaceHal:Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;

    .line 5
    .line 6
    const-string v2, "onWpsEventSuccess"

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHalAidlImpl;->logCallback(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceCallbackAidlImpl;->mIfaceName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->broadcastWpsSuccessEvent(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method
