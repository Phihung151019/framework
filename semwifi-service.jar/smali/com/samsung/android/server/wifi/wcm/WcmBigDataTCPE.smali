.class public Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;
.super Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final KEY_TCPE_ACTION_RESULT:Ljava/lang/String; = "TCQC"

.field private static final KEY_TCPE_ALGORITHM_RESULT:Ljava/lang/String; = "TCAL"

.field private static final KEY_TCPE_AP_CONNECTION_COUNT:Ljava/lang/String; = "TCPF"

.field private static final KEY_TCPE_AP_CONNECTION_TIME:Ljava/lang/String; = "TCPG"

.field private static final KEY_TCPE_AP_DETECTED_COUNT:Ljava/lang/String; = "TCUT"

.field private static final KEY_TCPE_AP_FREQUENCY:Ljava/lang/String; = "TCFR"

.field private static final KEY_TCPE_AP_PACKAGE_DETECTED_COUNT:Ljava/lang/String; = "TCPC"

.field private static final KEY_TCPE_ESTABLISHED:Ljava/lang/String; = "TCPE"

.field private static final KEY_TCPE_LASTACK:Ljava/lang/String; = "TCPL"

.field private static final KEY_TCPE_LINKSPEED:Ljava/lang/String; = "TCLS"

.field private static final KEY_TCPE_LOSS:Ljava/lang/String; = "TCLO"

.field private static final KEY_TCPE_PACKAGE_AUTO_SWITCH_ENABLED:Ljava/lang/String; = "TCID"

.field private static final KEY_TCPE_PACKAGE_CATEGORY:Ljava/lang/String; = "TCST"

.field private static final KEY_TCPE_PACKAGE_DETECTED_COUNT:Ljava/lang/String; = "TCPW"

.field private static final KEY_TCPE_PACKAGE_NAME:Ljava/lang/String; = "TCPN"

.field private static final KEY_TCPE_RECEIVED_PACKETS:Ljava/lang/String; = "TCRX"

.field private static final KEY_TCPE_RETRANSMISSION:Ljava/lang/String; = "TCPR"

.field private static final KEY_TCPE_RSSI:Ljava/lang/String; = "TCRS"

.field private static final KEY_TCPE_SYN:Ljava/lang/String; = "TCPS"

.field private static final KEY_TCPE_TIME:Ljava/lang/String; = "TCTM"

.field private static final KEY_TCPE_TRANSMITTED_PACKETS:Ljava/lang/String; = "TCTX"

.field private static final KEY_TCPE_VERSION:Ljava/lang/String; = "SVER"

.field private static final TCPE:[[Ljava/lang/String;

.field public static final USER_ACTION_DETECTED:I = 0x0

.field public static final USER_ACTION_NOTIFICATION_DELETE_HUN:I = 0x2

.field public static final USER_ACTION_NOTIFICATION_DELETE_NORMAL:I = 0x3

.field public static final USER_ACTION_NOTIFICATION_DELETE_SUGGESTION:I = 0x1

.field public static final USER_ACTION_NOTIFICATION_HUN_USE_MOBILE_DATA:I = 0x5

.field public static final USER_ACTION_NOTIFICATION_NORMAL_SETTINGS:I = 0x6

.field public static final USER_ACTION_NOTIFICATION_SUGGESTION_SETTINGS:I = 0x4

.field public static final USER_ACTION_SETTING_FEATURE_OFF:I = 0x9

.field public static final USER_ACTION_SETTING_FEATURE_ON:I = 0x7

.field public static final USER_ACTION_SETTING_FEATURE_ON_SUGGESTION:I = 0x8

.field public static final USER_ACTION_SETTING_INDIVIDUAL_APP_OFF:I = 0xb

.field public static final USER_ACTION_SETTING_INDIVIDUAL_APP_ON:I = 0xa

.field public static final USER_ACTION_SETTING_INDIVIDUAL_APP_STOP:I = 0xc


# instance fields
.field public mTcpActionResult:I

.field public mTcpAlgorithmResult:Ljava/lang/String;

.field public mTcpApConnectionCount:I

.field public mTcpApConnectionTime:I

.field public mTcpApDetectedCount:I

.field public mTcpApFrequency:I

.field public mTcpApPackageDetectedCount:I

.field public mTcpEstablished:I

.field public mTcpLastAck:I

.field public mTcpLinkSpeed:I

.field public mTcpLoss:D

.field public mTcpPackageAutoSwitchEnabled:I

.field public mTcpPackageCategory:Ljava/lang/String;

.field public mTcpPackageDetectedCount:I

.field public mTcpPackageName:Ljava/lang/String;

.field public mTcpRetransmission:I

.field public mTcpRssi:I

.field public mTcpRx:J

.field public mTcpSyn:I

.field public mTcpTime:J

.field public mTcpTx:J


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    const-string v0, "SVER"

    .line 2
    .line 3
    const-string v1, "2023061211"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "TCTM"

    .line 10
    .line 11
    const-string v1, "123"

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v0, "TCQC"

    .line 18
    .line 19
    const-string v1, "0"

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v0, "TCAL"

    .line 26
    .line 27
    const-string v5, "NoBlocking"

    .line 28
    .line 29
    filled-new-array {v0, v5}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v0, "TCPN"

    .line 34
    .line 35
    const-string v6, "nonLegacy"

    .line 36
    .line 37
    filled-new-array {v0, v6}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-string v0, "TCPE"

    .line 42
    .line 43
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    const-string v0, "TCPS"

    .line 48
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    const-string v0, "TCPR"

    .line 54
    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    const-string v0, "TCPL"

    .line 60
    .line 61
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    const-string v0, "TCRS"

    .line 66
    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    const-string v0, "TCLS"

    .line 72
    .line 73
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    const-string v0, "TCTX"

    .line 78
    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    const-string v0, "TCRX"

    .line 84
    .line 85
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    const-string v0, "TCLO"

    .line 90
    .line 91
    const-string v15, "0.0"

    .line 92
    .line 93
    filled-new-array {v0, v15}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    const-string v0, "TCFR"

    .line 98
    .line 99
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v16

    .line 103
    const-string v0, "TCST"

    .line 104
    .line 105
    move-object/from16 v17, v2

    .line 106
    .line 107
    const-string v2, "NONE"

    .line 108
    .line 109
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v2, "TCPW"

    .line 114
    .line 115
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v18

    .line 119
    const-string v2, "TCPC"

    .line 120
    .line 121
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v19

    .line 125
    const-string v2, "TCUT"

    .line 126
    .line 127
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v20

    .line 131
    const-string v2, "TCPF"

    .line 132
    .line 133
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v21

    .line 137
    const-string v2, "TCPG"

    .line 138
    .line 139
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v22

    .line 143
    const-string v2, "TCID"

    .line 144
    .line 145
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v23

    .line 149
    move-object/from16 v2, v17

    .line 150
    .line 151
    move-object/from16 v17, v0

    .line 152
    .line 153
    filled-new-array/range {v2 .. v23}, [[Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->TCPE:[[Ljava/lang/String;

    .line 158
    .line 159
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->initialize()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addOrUpdateAllValue()V
    .locals 3

    .line 1
    const-string v0, "TCTM"

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTime:J

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    .line 6
    .line 7
    .line 8
    const-string v0, "TCQC"

    .line 9
    .line 10
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpActionResult:I

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string v0, "TCAL"

    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpAlgorithmResult:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "TCTX"

    .line 23
    .line 24
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTx:J

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    const-string v0, "TCRX"

    .line 30
    .line 31
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRx:J

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    .line 34
    .line 35
    .line 36
    const-string v0, "TCLO"

    .line 37
    .line 38
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLoss:D

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;D)V

    .line 41
    .line 42
    .line 43
    const-string v0, "TCRS"

    .line 44
    .line 45
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRssi:I

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    const-string v0, "TCLS"

    .line 51
    .line 52
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLinkSpeed:I

    .line 53
    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string v0, "TCFR"

    .line 58
    .line 59
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApFrequency:I

    .line 60
    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v0, "TCPN"

    .line 65
    .line 66
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "TCST"

    .line 72
    .line 73
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageCategory:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v0, "TCPW"

    .line 79
    .line 80
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageDetectedCount:I

    .line 81
    .line 82
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    const-string v0, "TCID"

    .line 86
    .line 87
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageAutoSwitchEnabled:I

    .line 88
    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    const-string v0, "TCPC"

    .line 93
    .line 94
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApPackageDetectedCount:I

    .line 95
    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    const-string v0, "TCUT"

    .line 100
    .line 101
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApDetectedCount:I

    .line 102
    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    const-string v0, "TCPF"

    .line 107
    .line 108
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApConnectionCount:I

    .line 109
    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    const-string v0, "TCPG"

    .line 114
    .line 115
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApConnectionTime:I

    .line 116
    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    const-string v0, "TCPE"

    .line 121
    .line 122
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpEstablished:I

    .line 123
    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    const-string v0, "TCPS"

    .line 128
    .line 129
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpSyn:I

    .line 130
    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    const-string v0, "TCPR"

    .line 135
    .line 136
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRetransmission:I

    .line 137
    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    const-string v0, "TCPL"

    .line 142
    .line 143
    iget v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLastAck:I

    .line 144
    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public getJsonFormat()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->TCPE:[[Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "getJsonFormat - "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public initialize()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTime:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpActionResult:I

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpAlgorithmResult:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTx:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRx:J

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLoss:D

    .line 18
    .line 19
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRssi:I

    .line 20
    .line 21
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLinkSpeed:I

    .line 22
    .line 23
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageName:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageCategory:Ljava/lang/String;

    .line 26
    .line 27
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageDetectedCount:I

    .line 28
    .line 29
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApFrequency:I

    .line 30
    .line 31
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApPackageDetectedCount:I

    .line 32
    .line 33
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApDetectedCount:I

    .line 34
    .line 35
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApConnectionCount:I

    .line 36
    .line 37
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApConnectionTime:I

    .line 38
    .line 39
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageAutoSwitchEnabled:I

    .line 40
    .line 41
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpEstablished:I

    .line 42
    .line 43
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpSyn:I

    .line 44
    .line 45
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRetransmission:I

    .line 46
    .line 47
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLastAck:I

    .line 48
    .line 49
    return-void
.end method

.method public putKeyValueString([Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    array-length v0, p1

    .line 6
    if-ge p0, v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->TCPE:[[Ljava/lang/String;

    .line 9
    .line 10
    aget-object v0, v0, p0

    .line 11
    .line 12
    aget-object v1, p1, p0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    add-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    :goto_1
    return-void
.end method
