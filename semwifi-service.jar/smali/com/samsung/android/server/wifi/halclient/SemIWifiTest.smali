.class public Lcom/samsung/android/server/wifi/halclient/SemIWifiTest;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/IHalTest;


# static fields
.field private static final TAG:Ljava/lang/String; = "SemIWifiTest"

.field private static final TEST_SETTING_AS_BINDER:Ljava/lang/String; = "asBinder"

.field private static final TEST_SETTING_GET_CHIP:Ljava/lang/String; = "getChip"

.field private static final TEST_SETTING_GET_CHIP_IDS:Ljava/lang/String; = "getChipIds"

.field private static final TEST_SETTING_GET_INTERFACE_VERSION:Ljava/lang/String; = "getInterfaceVersion"

.field private static final TEST_SETTING_IS_STARTED:Ljava/lang/String; = "isStarted"

.field static final TEST_SETTING_MODULE_IWIFI:Ljava/lang/String; = "IWifi"

.field private static final TEST_SETTING_REGISTER_EVENT_CALLBACK:Ljava/lang/String; = "registerEventCallback"


# instance fields
.field private mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setTestSettings(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "method_name"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "parameters"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "setTestSettings "

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "SemIWifiTest"

    .line 22
    .line 23
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const-string v1, "getChip"

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getChip(I)Lcom/samsung/android/server/wifi/halclient/SemWifiChip;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_0
    const-string p1, "getChipIds"

    .line 57
    .line 58
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getChipIds()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_1
    const-string p1, "isStarted"

    .line 76
    .line 77
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isStarted()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_2
    const-string p1, "getInterfaceVersion"

    .line 95
    .line 96
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getInterfaceVersion()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_3
    const-string p1, "asBinder"

    .line 114
    .line 115
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_4

    .line 120
    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->asBinder()Landroid/os/IBinder;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :cond_4
    const-string p1, "registerEventCallback"

    .line 133
    .line 134
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->registerEventCallbackForIWifi()Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    return-object p0

    .line 151
    :cond_5
    const-string p0, "Exception"

    .line 152
    .line 153
    return-object p0
.end method
