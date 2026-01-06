.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final KEY_APE_ELAPSED_REALTIME:Ljava/lang/String; = "aert"

.field private static final KEY_APE_NON_VOIP_BACKGROUND_LIMITED_TIME:Ljava/lang/String; = "atob"

.field private static final KEY_APE_NON_VOIP_TOTAL_TIME:Ljava/lang/String; = "atot"

.field private static final KEY_APE_PACKAGES:Ljava/lang/String; = "apkg"

.field private static final KEY_APE_SESSIONS:Ljava/lang/String; = "ases"

.field private static final KEY_APE_VOIP_BACKGROUND_LIMITED_TIME:Ljava/lang/String; = "atvb"

.field private static final KEY_APE_VOIP_TOTAL_TIME:Ljava/lang/String; = "atvt"

.field private static final KEY_BECOME_FAVORITE_AP_TIME:Ljava/lang/String; = "bfat"

.field private static final KEY_LAA_ACTIVE_STATE:Ljava/lang/String; = "laaA"

.field private static final KEY_LAA_ENTER_STATE:Ljava/lang/String; = "laaE"

.field private static final KEY_SILENT_ROAMING_SWITCH_COUNT:Ljava/lang/String; = "SRsc"

.field private static final KEY_SILENT_ROAMING_SWITCH_FAILURE_COUNT:Ljava/lang/String; = "SRsf"

.field private static final KEY_SILENT_ROAMING_SWITCH_NO_INTERNET_COUNT:Ljava/lang/String; = "SRni"

.field private static final KEY_SILENT_ROAMING_TOGGLE_COUNT:Ljava/lang/String; = "SRtc"

.field private static final W24H:[[Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const-string v0, "laaE"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "laaA"

    .line 10
    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v0, "atvt"

    .line 16
    .line 17
    const-string v4, "-1"

    .line 18
    .line 19
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v5, "atvb"

    .line 24
    .line 25
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v6, "atot"

    .line 30
    .line 31
    filled-new-array {v6, v4}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v7, "atob"

    .line 36
    .line 37
    filled-new-array {v7, v4}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v8, "bfat"

    .line 42
    .line 43
    filled-new-array {v8, v4}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const-string v9, "SRtc"

    .line 48
    .line 49
    filled-new-array {v9, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const-string v10, "SRsc"

    .line 54
    .line 55
    filled-new-array {v10, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    const-string v11, "SRsf"

    .line 60
    .line 61
    filled-new-array {v11, v1}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-string v12, "SRni"

    .line 66
    .line 67
    filled-new-array {v12, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    const-string v13, "aert"

    .line 72
    .line 73
    filled-new-array {v13, v4}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    const-string v4, "apkg"

    .line 78
    .line 79
    filled-new-array {v4, v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    const-string v1, "ases"

    .line 84
    .line 85
    const-string v4, "1,0,0,0"

    .line 86
    .line 87
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    move-object v4, v0

    .line 92
    filled-new-array/range {v2 .. v15}, [[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;->W24H:[[Ljava/lang/String;

    .line 97
    .line 98
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;->getWifiVersionKeyValueString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ","

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;->W24H:[[Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
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
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;->W24H:[[Ljava/lang/String;

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
