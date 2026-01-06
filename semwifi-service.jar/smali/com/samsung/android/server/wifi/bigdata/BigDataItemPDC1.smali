.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final KEY_ALGORITH_VERSION:Ljava/lang/String; = "aver"

.field private static final KEY_CRASH_PACAKAGE:Ljava/lang/String; = "cpkg"

.field private static final KEY_DHCP_FAIL_REASON:Ljava/lang/String; = "dhfs"

.field private static final KEY_ISSUE_DETECTOR_CATEGORY:Ljava/lang/String; = "isct"

.field private static final KEY_LAST_PROCESS_STATE:Ljava/lang/String; = "pres"

.field private static final KEY_PRE_PRE_PROCESS_MSG:Ljava/lang/String; = "pprem"

.field private static final KEY_PRE_PROCESS_MSG:Ljava/lang/String; = "prem"

.field static final KEY_PRIVATE_BSSID:Ljava/lang/String; = "bsid"

.field private static final KEY_PRIVATE_GATEWAY:Ljava/lang/String; = "apgw"

.field private static final KEY_PRIVATE_IP:Ljava/lang/String; = "apip"

.field private static final KEY_PRIVATE_SSID:Ljava/lang/String; = "ssid"

.field private static final KEY_SCREEN_STATE:Ljava/lang/String; = "scrs"

.field private static final KEY_UNWANTED_REASON:Ljava/lang/String; = "uwrs"

.field private static final PDC1:[[Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const-string v0, "ap_oui"

    .line 2
    .line 3
    const-string v1, "00:00:00"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "ap_chn"

    .line 10
    .line 11
    const-string v1, "0"

    .line 12
    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v0, "ap_rsi"

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v0, "wpst"

    .line 24
    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v0, "aplo"

    .line 30
    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v0, "cn_rsn"

    .line 36
    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v0, "cn_irs"

    .line 42
    .line 43
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const-string v0, "apdr"

    .line 48
    .line 49
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const-string v0, "isct"

    .line 54
    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    const-string v0, "dhfs"

    .line 60
    .line 61
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-string v0, "adps"

    .line 66
    .line 67
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    const-string v0, "scrs"

    .line 72
    .line 73
    const-string v13, "1"

    .line 74
    .line 75
    filled-new-array {v0, v13}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    const-string v0, "pres"

    .line 80
    .line 81
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    const-string v0, "prem"

    .line 86
    .line 87
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    const-string v0, "pprem"

    .line 92
    .line 93
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v16

    .line 97
    const-string v0, "uwrs"

    .line 98
    .line 99
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v17

    .line 103
    const-string v0, "aver"

    .line 104
    .line 105
    move-object/from16 v18, v2

    .line 106
    .line 107
    const-string v2, "unknown"

    .line 108
    .line 109
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object/from16 v19, v0

    .line 114
    .line 115
    const-string v0, "apwe"

    .line 116
    .line 117
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v1, "cpkg"

    .line 122
    .line 123
    move-object/from16 v20, v0

    .line 124
    .line 125
    const-string v0, "null"

    .line 126
    .line 127
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v1, "ssid"

    .line 132
    .line 133
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v21

    .line 137
    const-string v1, "bsid"

    .line 138
    .line 139
    const-string v2, "00:00:00:00:00:00"

    .line 140
    .line 141
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v22

    .line 145
    const-string v1, "apgw"

    .line 146
    .line 147
    const-string v2, "0.0.0.0"

    .line 148
    .line 149
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v23

    .line 153
    const-string v1, "apip"

    .line 154
    .line 155
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v24

    .line 159
    move-object/from16 v2, v18

    .line 160
    .line 161
    move-object/from16 v18, v19

    .line 162
    .line 163
    move-object/from16 v19, v20

    .line 164
    .line 165
    move-object/from16 v20, v0

    .line 166
    .line 167
    filled-new-array/range {v2 .. v24}, [[Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->PDC1:[[Ljava/lang/String;

    .line 172
    .line 173
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getHitType()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "ph"

    .line 2
    .line 3
    return-object p0
.end method

.method public getJsonFormat()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getJsonFormatFor(I)Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->PDC1:[[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v1, v0, -0x4

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, ","

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-ne p1, v2, :cond_2

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;->getWifiVersionKeyValueString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move v2, v3

    .line 31
    :goto_0
    if-ge v2, v1, :cond_1

    .line 32
    .line 33
    sget-object v6, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->PDC1:[[Ljava/lang/String;

    .line 34
    .line 35
    aget-object v6, v6, v2

    .line 36
    .line 37
    aget-object v7, v6, v3

    .line 38
    .line 39
    aget-object v6, v6, v5

    .line 40
    .line 41
    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v6, v0, -0x5

    .line 49
    .line 50
    if-eq v2, v6, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_2
    const/4 v0, 0x3

    .line 64
    if-ne p1, v0, :cond_5

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    :goto_1
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->PDC1:[[Ljava/lang/String;

    .line 72
    .line 73
    array-length v2, v0

    .line 74
    if-ge v1, v2, :cond_4

    .line 75
    .line 76
    aget-object v2, v0, v1

    .line 77
    .line 78
    aget-object v6, v2, v3

    .line 79
    .line 80
    aget-object v2, v2, v5

    .line 81
    .line 82
    invoke-virtual {p0, v6, v2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    array-length v0, v0

    .line 90
    sub-int/2addr v0, v5

    .line 91
    if-eq v1, v0, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_5
    const/4 p0, 0x0

    .line 105
    return-object p0
.end method

.method public isAvailableLogging(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    if-eq p1, p0, :cond_1

    .line 3
    .line 4
    const/4 p0, 0x3

    .line 5
    if-ne p1, p0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 11
    return p0
.end method

.method public parseData(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->PDC1:[[Ljava/lang/String;

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string p1, "can\'t parse bigdata extra"

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    return p0
.end method
