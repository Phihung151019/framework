.class public abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 1
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->arch:I

    .line 18
    .line 19
    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    new-array v2, v0, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    new-array v3, v0, [B

    .line 16
    .line 17
    fill-array-data v3, :array_2

    .line 18
    .line 19
    .line 20
    new-array v4, v0, [B

    .line 21
    .line 22
    fill-array-data v4, :array_3

    .line 23
    .line 24
    .line 25
    new-array v5, v0, [B

    .line 26
    .line 27
    fill-array-data v5, :array_4

    .line 28
    .line 29
    .line 30
    new-array v6, v0, [B

    .line 31
    .line 32
    fill-array-data v6, :array_5

    .line 33
    .line 34
    .line 35
    filled-new-array/range {v1 .. v6}, [[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :array_0
    .array-data 1
        -0x3bt
        0x56t
        -0x5ct
        0x2t
        0x75t
        0x56t
        -0x32t
        -0x57t
        -0x30t
        -0x6et
        -0x70t
        -0x59t
        0x9t
        0x57t
        -0x72t
        -0x4et
        0x6t
        -0x36t
        0x75t
        0x5ft
        -0x6dt
        0x41t
        0x72t
        -0x5ft
        0x23t
        0x71t
        -0x59t
        -0x21t
        0x3ft
        -0x6at
        -0x73t
        0x11t
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_1
    .array-data 1
        -0x37t
        0x72t
        -0x4dt
        0x42t
        -0x23t
        0x52t
        0x7at
        0x39t
        0x52t
        -0x4bt
        -0x2et
        0x37t
        0x7bt
        -0x2at
        0x48t
        0x3dt
        -0x14t
        0x48t
        -0xat
        -0x48t
        0x52t
        -0x6et
        -0x36t
        0x53t
        0x7at
        -0x69t
        0x70t
        0x53t
        -0x7ft
        -0x39t
        -0x16t
        0x3ct
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_2
    .array-data 1
        -0x3at
        0x7at
        -0x51t
        0x26t
        -0x59t
        -0x5ct
        0xdt
        0x14t
        -0x16t
        0x61t
        -0x19t
        0xet
        0x20t
        -0x51t
        -0x54t
        -0x43t
        0xbt
        -0x47t
        0x6t
        -0x21t
        0x17t
        0x4t
        -0x2bt
        -0x7bt
        -0x54t
        -0x7bt
        -0x67t
        -0x5t
        -0x4at
        -0x63t
        -0x2ct
        0x4bt
    .end array-data

    .line 88
    .line 89
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
    :array_3
    .array-data 1
        0x2ft
        -0x52t
        0x61t
        -0x17t
        0x62t
        -0xat
        -0x80t
        -0x6ft
        0x33t
        0x5ft
        0x7ft
        -0xct
        0x58t
        0x1ft
        -0x31t
        -0x1et
        -0x1et
        -0x74t
        -0x19t
        -0xat
        0x13t
        0x2dt
        0x7at
        0x71t
        0x2ft
        -0x5ft
        0x3dt
        0x79t
        0x65t
        0x54t
        0x3et
        0x4dt
    .end array-data

    :array_4
    .array-data 1
        -0x12t
        0x8t
        0x28t
        0xdt
        -0x1et
        0x1ct
        -0x4ct
        0x1et
        0x3et
        -0x3et
        0x6dt
        0x6et
        -0x2at
        0x36t
        -0x39t
        0x1t
        -0x49t
        -0x9t
        0x5t
        0x16t
        -0x19t
        0x1ft
        -0x4et
        0x2ft
        0x4ft
        -0x1at
        0xat
        0x13t
        -0x1at
        0x3t
        -0xct
        0x6t
    .end array-data

    :array_5
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v4, "android.hardware.wifi.hostapd@1.0::IHostapd"

    .line 4
    .line 5
    const-string v5, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v0, "vendor.samsung.hardware.wifi.hostapd@4.0::ISehHostapd"

    .line 8
    .line 9
    const-string v1, "android.hardware.wifi.hostapd@1.3::IHostapd"

    .line 10
    .line 11
    const-string v2, "android.hardware.wifi.hostapd@1.2::IHostapd"

    .line 12
    .line 13
    const-string v3, "android.hardware.wifi.hostapd@1.1::IHostapd"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "vendor.samsung.hardware.wifi.hostapd@4.0::ISehHostapd"

    .line 2
    .line 3
    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string p4, "android.hardware.wifi.hostapd@1.1::IHostapd"

    .line 2
    .line 3
    const-string v0, "android.hardware.wifi.hostapd@1.3::IHostapd"

    .line 4
    .line 5
    const-string v1, "vendor.samsung.hardware.wifi.hostapd@4.0::ISehHostapd"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    const-string v4, "android.hardware.wifi.hostapd@1.0::IHostapd"

    .line 10
    .line 11
    const-string v5, "android.hardware.wifi.hostapd@1.2::IHostapd"

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    const-string p4, "android.hidl.base@1.0::IBase"

    .line 18
    .line 19
    sparse-switch p1, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd$Stub;->notifySyspropsChanged()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd$Stub;->ping()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd$Stub;->setHALInstrumentation()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Landroid/os/HwBlob;

    .line 78
    .line 79
    const/16 p2, 0x10

    .line 80
    .line 81
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    const-wide/16 v0, 0x8

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 91
    .line 92
    .line 93
    const-wide/16 v0, 0xc

    .line 94
    .line 95
    invoke-virtual {p1, v0, v1, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 96
    .line 97
    .line 98
    new-instance p4, Landroid/os/HwBlob;

    .line 99
    .line 100
    mul-int/lit8 v0, p2, 0x20

    .line 101
    .line 102
    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 103
    .line 104
    .line 105
    :goto_0
    if-ge v6, p2, :cond_1

    .line 106
    .line 107
    mul-int/lit8 v0, v6, 0x20

    .line 108
    .line 109
    int-to-long v0, v0

    .line 110
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, [B

    .line 115
    .line 116
    if-eqz v4, :cond_0

    .line 117
    .line 118
    array-length v5, v4

    .line 119
    const/16 v7, 0x20

    .line 120
    .line 121
    if-ne v5, v7, :cond_0

    .line 122
    .line 123
    invoke-virtual {p4, v0, v1, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v6, v6, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    const-string p1, "Array element is not of the expected length"

    .line 132
    .line 133
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0

    .line 137
    :cond_1
    invoke-virtual {p1, v2, v3, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :sswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 161
    .line 162
    .line 163
    return-void

    .line 164
    :sswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :sswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;->sehSendCommand(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapdCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapdCallback;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd;->sehRegisterCallback(Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapdCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapdCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapdCallback;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd;->registerCallback_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapdCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$IfaceParams;

    .line 277
    .line 278
    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$IfaceParams;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$IfaceParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 282
    .line 283
    .line 284
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;

    .line 285
    .line 286
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 290
    .line 291
    .line 292
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd;->addAccessPoint_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$IfaceParams;Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_3/IHostapd$NetworkParams;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :pswitch_4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd;->setDebugParams(I)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :pswitch_5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    const/4 p4, 0x6

    .line 335
    new-array v0, p4, [B

    .line 336
    .line 337
    const-wide/16 v4, 0x6

    .line 338
    .line 339
    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {v1, v2, v3, v0, p4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 347
    .line 348
    .line 349
    move-result p2

    .line 350
    invoke-interface {p0, p1, v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd;->forceClientDisconnect(Ljava/lang/String;[BS)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :pswitch_6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$IfaceParams;

    .line 368
    .line 369
    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$IfaceParams;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$IfaceParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 373
    .line 374
    .line 375
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;

    .line 376
    .line 377
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;-><init>()V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 381
    .line 382
    .line 383
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd;->addAccessPoint_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$IfaceParams;Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/IHostapd$NetworkParams;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_2/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 394
    .line 395
    .line 396
    return-void

    .line 397
    :pswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapdCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapdCallback;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapdCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    .line 409
    .line 410
    .line 411
    move-result-object p0

    .line 412
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 419
    .line 420
    .line 421
    return-void

    .line 422
    :pswitch_8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;

    .line 426
    .line 427
    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;-><init>()V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 431
    .line 432
    .line 433
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;

    .line 434
    .line 435
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 439
    .line 440
    .line 441
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd;->addAccessPoint_1_1(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_1/IHostapd$IfaceParams;Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    .line 442
    .line 443
    .line 444
    move-result-object p0

    .line 445
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :pswitch_9
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;->terminate()V

    .line 459
    .line 460
    .line 461
    return-void

    .line 462
    :pswitch_a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;->removeAccessPoint(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    .line 470
    .line 471
    .line 472
    move-result-object p0

    .line 473
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 480
    .line 481
    .line 482
    return-void

    .line 483
    :pswitch_b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;

    .line 487
    .line 488
    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 492
    .line 493
    .line 494
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;

    .line 495
    .line 496
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;-><init>()V

    .line 497
    .line 498
    .line 499
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;->readFromParcel(Landroid/os/HwParcel;)V

    .line 500
    .line 501
    .line 502
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd;->addAccessPoint(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$IfaceParams;Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/IHostapd$NetworkParams;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;

    .line 503
    .line 504
    .line 505
    move-result-object p0

    .line 506
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/V1_0/HostapdStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    nop

    .line 517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1
    const-string v0, "vendor.samsung.hardware.wifi.hostapd@4.0::ISehHostapd"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/hostapd/V4_0/ISehHostapd$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "@Stub"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
