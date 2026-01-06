.class public Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFMH;
.super Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final KEY_MH_CONNECTION_STATUS:Ljava/lang/String; = "MHCT"

.field public static final KEY_MH_DAILY_COUNT:Ljava/lang/String; = "MHDC"

.field public static final KEY_MH_HASH_PRIMARY:Ljava/lang/String; = "MHHP"

.field public static final KEY_MH_HASH_SECONDARY:Ljava/lang/String; = "MHHS"

.field public static final KEY_MH_INTERNET_CONNECTION:Ljava/lang/String; = "MHIC"

.field public static final KEY_MH_OUI_PRIMARY:Ljava/lang/String; = "MHOP"

.field public static final KEY_MH_OUI_SECONDARY:Ljava/lang/String; = "MHOS"

.field public static final KEY_MH_SAME_COUNT:Ljava/lang/String; = "MHSC"

.field public static final KEY_MH_SECURITY_TYPE:Ljava/lang/String; = "MHST"

.field public static final KEY_MH_SERVER_INDEX:Ljava/lang/String; = "MHSI"

.field public static final KEY_MH_TYPE:Ljava/lang/String; = "MTYP"

.field public static final KEY_MH_VERSION:Ljava/lang/String; = "MVER"

.field public static final VERSION:Ljava/lang/String; = "2021090800"

.field private static final WFMH:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-string v0, "MVER"

    .line 2
    .line 3
    const-string v1, "2021090800"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "MTYP"

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
    const-string v0, "MHCT"

    .line 18
    .line 19
    const-string v1, "-1"

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v0, "MHST"

    .line 26
    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const-string v0, "MHOP"

    .line 32
    .line 33
    const-string v6, "ff:ff:ff"

    .line 34
    .line 35
    filled-new-array {v0, v6}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v7, "MHOS"

    .line 40
    .line 41
    filled-new-array {v7, v6}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const-string v6, "MHSC"

    .line 46
    .line 47
    filled-new-array {v6, v1}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    const-string v6, "MHSI"

    .line 52
    .line 53
    filled-new-array {v6, v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const-string v6, "MHHP"

    .line 58
    .line 59
    filled-new-array {v6, v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    const-string v6, "MHHS"

    .line 64
    .line 65
    filled-new-array {v6, v1}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    const-string v6, "MHIC"

    .line 70
    .line 71
    filled-new-array {v6, v1}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    const-string v6, "MHDC"

    .line 76
    .line 77
    filled-new-array {v6, v1}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v13

    .line 81
    move-object v6, v0

    .line 82
    filled-new-array/range {v2 .. v13}, [[Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFMH;->WFMH:[[Ljava/lang/String;

    .line 87
    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getJsonFormat - "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataWFMH;->WFMH:[[Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "Exception occured on getJsonFormat - "

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
