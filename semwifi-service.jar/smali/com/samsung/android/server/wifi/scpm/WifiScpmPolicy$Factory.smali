.class Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy$Factory;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sparse-switch v1, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :sswitch_0
    const-string v1, "EASY_SETUP"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x3

    .line 23
    goto :goto_0

    .line 24
    :sswitch_1
    const-string v1, "AUTO_WIFI"

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x2

    .line 34
    goto :goto_0

    .line 35
    :sswitch_2
    const-string v1, "ROAM"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :sswitch_3
    const-string v1, "PROFILE_SHARE"

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v0, 0x0

    .line 56
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyUnsupported;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyUnsupported;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :pswitch_0
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :pswitch_1
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;

    .line 72
    .line 73
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v0

    .line 77
    :pswitch_2
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;

    .line 78
    .line 79
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :pswitch_3
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyProfileShare;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyProfileShare;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object v0

    .line 89
    :sswitch_data_0
    .sparse-switch
        -0x3a443a77 -> :sswitch_3
        0x267729 -> :sswitch_2
        0xae1bfa5 -> :sswitch_1
        0x360677e0 -> :sswitch_0
    .end sparse-switch

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
