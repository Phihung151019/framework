.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final KEY_MHDC_ANT_MODE:Ljava/lang/String; = "mh_antmode"

.field private static final KEY_MHDC_BW:Ljava/lang/String; = "mh_bw"

.field private static final KEY_MHDC_DATA_RATE:Ljava/lang/String; = "mh_datarate"

.field private static final KEY_MHDC_DIS:Ljava/lang/String; = "mh_dis"

.field private static final KEY_MHDC_MODE:Ljava/lang/String; = "mh_mode"

.field private static final KEY_MHDC_MU_MIMO:Ljava/lang/String; = "mh_mumimo"

.field private static final KEY_MHDC_OUI:Ljava/lang/String; = "mh_oui"

.field private static final KEY_MHDC_RSSI:Ljava/lang/String; = "mh_rssi"

.field private static final KEY_MHDC_SAM_RSN:Ljava/lang/String; = "mh_srsn"

.field private static final KEY_MHDC_WFA_RSN:Ljava/lang/String; = "mh_wrsn"

.field private static final MHDC:[[Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "mh_oui"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "mh_dis"

    .line 10
    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v0, "mh_srsn"

    .line 16
    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v0, "mh_wrsn"

    .line 22
    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v0, "mh_bw"

    .line 28
    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const-string v0, "mh_rssi"

    .line 34
    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const-string v0, "mh_datarate"

    .line 40
    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const-string v0, "mh_mode"

    .line 46
    .line 47
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    const-string v0, "mh_antmode"

    .line 52
    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    const-string v0, "mh_mumimo"

    .line 58
    .line 59
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    filled-new-array/range {v2 .. v11}, [[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;->MHDC:[[Ljava/lang/String;

    .line 68
    .line 69
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;->MHDC:[[Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
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
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;->MHDC:[[Ljava/lang/String;

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
