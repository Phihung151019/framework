.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# direct methods
.method static continuityDeviceStateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;
    .locals 2

    .line 1
    const-string v0, "KEY_SCREEN_STATE"

    .line 2
    .line 3
    const/16 v1, 0x190

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    const-string v0, "KEY_CALL_STATE"

    .line 9
    .line 10
    const/16 v1, 0x1f4

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    const-string v0, "KEY_BT_STATE"

    .line 16
    .line 17
    const/16 v1, 0x258

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    const-string v0, "KEY_WIFI_STATE"

    .line 23
    .line 24
    const/16 v1, 0x2bc

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    const-string v0, "KEY_CMC_STATE"

    .line 30
    .line 31
    const/16 v1, 0x320

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    new-instance p0, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    .line 37
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    return-object p0
.end method

.method public static continuityDeviceWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;
    .locals 4

    .line 1
    const-string v0, "KEY_BT_MAC"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v1, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "KEY_DISPLAY_NAME"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v1, v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->setDisplayName(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "KEY_DEVICE_TYPE"

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    const-string v0, "KEY_MODEL_NAME"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->setModelName(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "KEY_IP"

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v1, v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->setIp(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "KEY_PORT"

    .line 50
    .line 51
    const/4 v3, -0x1

    .line 52
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    const-string v0, "KEY_PREV_CONTINUITY_DEVICE_STATE"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    instance-of v3, v0, Landroid/os/Bundle;

    .line 62
    .line 63
    if-eqz v3, :cond_1

    .line 64
    .line 65
    check-cast v0, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityDeviceStateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->setPrevContinuityDeviceState(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    const-string v0, "KEY_CUR_CONTINUITY_DEVICE_STATE"

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    instance-of v3, v0, Landroid/os/Bundle;

    .line 81
    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    check-cast v0, Landroid/os/Bundle;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityDeviceStateFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->setCurContinuityDeviceState(Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceState;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    const-string v0, "KEY_APP_DATA"

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->setAppData([B)V

    .line 100
    .line 101
    .line 102
    const-string v0, "KEY_SESSION_KEY"

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v1, v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->setSessionKey([B)V

    .line 109
    .line 110
    .line 111
    const-string v0, "KEY_FRAME_VERSION"

    .line 112
    .line 113
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 118
    .line 119
    .line 120
    const-string v0, "KEY_OOBE_SETUP_STATE"

    .line 121
    .line 122
    const/16 v2, 0x515

    .line 123
    .line 124
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 125
    .line 126
    .line 127
    const-string v0, "KEY_RESPONSE_DATA"

    .line 128
    .line 129
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->setResponseData([B)V

    .line 134
    .line 135
    .line 136
    const-string v0, "KEY_PROXIMITY_CONFIG_DATA"

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v1, v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->setProximityConfigData([B)V

    .line 143
    .line 144
    .line 145
    const-string v0, "KEY_AUTH_TYPE"

    .line 146
    .line 147
    const/16 v2, 0x5dc

    .line 148
    .line 149
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    const-string v0, "KEY_MODEL_CODE"

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {v1, p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->setModelCode(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper$Builder;->build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0
.end method
