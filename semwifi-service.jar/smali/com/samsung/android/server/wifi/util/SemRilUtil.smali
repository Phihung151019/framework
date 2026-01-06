.class public Lcom/samsung/android/server/wifi/util/SemRilUtil;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemRilUtil"

.field private static sIsWifiOnly:I = -0x1


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

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget p0, Lcom/samsung/android/server/wifi/util/SemRilUtil;->sIsWifiOnly:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne p0, v0, :cond_2

    .line 7
    .line 8
    const-string p0, "ro.carrier"

    .line 9
    .line 10
    const-string v0, "Unknown"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "wifi-only"

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    const-string p0, "ro.radio.noril"

    .line 29
    .line 30
    const-string v0, "no"

    .line 31
    .line 32
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "yes"

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    sput v1, Lcom/samsung/android/server/wifi/util/SemRilUtil;->sIsWifiOnly:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    const-string p0, "SemRilUtil"

    .line 53
    .line 54
    const-string v0, "Wi-Fi Only Model"

    .line 55
    .line 56
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    sput v2, Lcom/samsung/android/server/wifi/util/SemRilUtil;->sIsWifiOnly:I

    .line 60
    .line 61
    :cond_2
    :goto_1
    sget p0, Lcom/samsung/android/server/wifi/util/SemRilUtil;->sIsWifiOnly:I

    .line 62
    .line 63
    if-ne p0, v2, :cond_3

    .line 64
    .line 65
    return v2

    .line 66
    :cond_3
    return v1
.end method
