.class public Lcom/samsung/android/server/wifi/util/WifiUtils;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final APM_PACKAGE_NAME:Ljava/lang/String; = "android_apm"

.field public static final ASSOCIATION_REJECT_STATUS_CODE_CHALLENGE_FAIL:I = 0xf

.field public static final ASSOCIATION_REJECT_STATUS_CODE_OF_SAE_END:I = 0x40a

.field public static final ASSOCIATION_REJECT_STATUS_CODE_OF_SAE_START:I = 0x401

.field public static final ASSOCIATION_REJECT_STATUS_CODE_SAE_NO_RESPONSE:I = 0x406

.field public static final ASSOCIATION_REJECT_STATUS_CODE_UNSPECIFIED_FAILURE:I = 0x1

.field public static final DESKTOP_MODE_UI_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.dexsystemui"

.field public static final MESSAGE_HANDLING_STATUS_DEFERRED:I = -0x4

.field public static final MESSAGE_HANDLING_STATUS_DISCARD:I = -0x5

.field public static final MESSAGE_HANDLING_STATUS_FAIL:I = -0x2

.field public static final MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I = -0x7

.field public static final MESSAGE_HANDLING_STATUS_LOOPED:I = -0x6

.field public static final MESSAGE_HANDLING_STATUS_OBSOLETE:I = -0x3

.field public static final MESSAGE_HANDLING_STATUS_OK:I = 0x1

.field public static final MESSAGE_HANDLING_STATUS_PROCESSED:I = 0x2

.field public static final MESSAGE_HANDLING_STATUS_REFUSED:I = -0x1

.field public static final MESSAGE_HANDLING_STATUS_UNKNOWN:I = 0x0

.field public static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final SIDE_GESTURE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.sidegesturepad"

.field public static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "WifiUtils"

.field public static final WLAN_AUTO_TEST_APP_NAME:Ljava/lang/String; = "com.samsung.android.net.wifi.wlanautotest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static convertHexStringToMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :goto_0
    const/4 v2, 0x2

    .line 11
    if-lt v1, v2, :cond_1

    .line 12
    .line 13
    add-int/lit8 v3, v1, -0x2

    .line 14
    .line 15
    invoke-virtual {v0, p0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    if-le v1, v2, :cond_0

    .line 19
    .line 20
    const-string v2, ":"

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const-string v2, ""

    .line 24
    .line 25
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, -0x2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static getMacOuiFromVsie(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 31
    .line 32
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x0

    .line 46
    :goto_0
    const-string p1, "WifiUtils"

    .line 47
    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-lez v1, :cond_4

    .line 55
    .line 56
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/net/wifi/ScanResult$InformationElement;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const/16 v3, 0xdd

    .line 77
    .line 78
    if-ne v2, v3, :cond_2

    .line 79
    .line 80
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v3, "%02X"

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    const/4 v4, 0x6

    .line 113
    if-lt v3, v4, :cond_2

    .line 114
    .line 115
    add-int/lit8 v4, v3, -0x6

    .line 116
    .line 117
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v1}, Lcom/samsung/android/server/wifi/util/WifiUtils;->convertHexStringToMac(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catch_0
    const-string v1, "BufferUnderflowException ie:"

    .line 130
    .line 131
    invoke-static {v1, v2, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    return-object v0

    .line 136
    :cond_4
    const-string p0, "InformationElement is null"

    .line 137
    .line 138
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    return-object v0
.end method

.method public static isAndroidHotspot(Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isGamePackage(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static maybeWrongPassword(IZ)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    :cond_0
    const/16 p1, 0x406

    .line 7
    .line 8
    if-eq p0, p1, :cond_2

    .line 9
    .line 10
    const/16 p1, 0xf

    .line 11
    .line 12
    if-ne p0, p1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_2
    :goto_0
    return v0
.end method
