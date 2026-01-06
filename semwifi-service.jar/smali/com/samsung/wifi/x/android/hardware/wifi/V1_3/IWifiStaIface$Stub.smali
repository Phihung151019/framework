.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;
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
    .locals 5
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
    new-array v0, v0, [B

    .line 26
    .line 27
    fill-array-data v0, :array_4

    .line 28
    .line 29
    .line 30
    filled-new-array {v1, v2, v3, v4, v0}, [[B

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :array_0
    .array-data 1
        0x57t
        0x51t
        -0xet
        0x30t
        -0x18t
        0x6at
        0x36t
        0x11t
        0x1et
        0x7ct
        0x5bt
        -0x67t
        0x55t
        0x77t
        -0x35t
        -0x8t
        -0x63t
        -0x73t
        -0x9t
        0x6ct
        -0x72t
        0x6ct
        0x76t
        0x41t
        0x19t
        -0x6ft
        -0x68t
        -0xdt
        -0x25t
        0x3at
        -0x6dt
        -0x9t
    .end array-data

    .line 44
    .line 45
    .line 46
    .line 47
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
    :array_1
    .array-data 1
        -0x1t
        0x5dt
        -0x28t
        0x21t
        -0x3et
        -0x39t
        -0x57t
        -0x39t
        -0x7at
        0x7t
        0x15t
        -0x64t
        0x4dt
        0x78t
        -0x77t
        0x60t
        -0x49t
        0x25t
        0x48t
        0x72t
        0x63t
        -0x3ct
        -0x63t
        -0x6bt
        0x6ct
        -0x5bt
        -0x6t
        0x3dt
        0x37t
        0x0t
        -0x75t
        0x45t
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
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
    :array_2
    .array-data 1
        0x3bt
        -0x80t
        -0x6dt
        -0x2dt
        -0x62t
        -0xft
        -0x1ft
        0xet
        0x43t
        -0x3bt
        0x53t
        -0x76t
        -0x5t
        -0xbt
        -0x1t
        0x6et
        0x39t
        -0x48t
        -0x28t
        0x16t
        -0x72t
        -0x45t
        -0x1ft
        -0x67t
        -0x73t
        -0x67t
        0x3et
        -0x77t
        -0x1et
        0x5ft
        0x14t
        -0x5bt
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
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
    :array_3
    .array-data 1
        0x6bt
        -0x66t
        -0x2ct
        0x3at
        0x5et
        -0x5t
        -0x1at
        -0x36t
        0x21t
        0x4ft
        0x75t
        0x1et
        0x22t
        -0x32t
        0x43t
        -0x31t
        0x5ct
        -0x2ct
        -0x2bt
        -0x2bt
        -0xet
        -0x35t
        -0x58t
        0xft
        0x24t
        -0x34t
        -0x2dt
        0x75t
        0x5at
        0x72t
        0x40t
        0x1ct
    .end array-data

    .line 104
    :array_4
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
    .locals 5
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
    const-string v0, "android.hardware.wifi@1.0::IWifiIface"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v2, "android.hardware.wifi@1.3::IWifiStaIface"

    .line 8
    .line 9
    const-string v3, "android.hardware.wifi@1.2::IWifiStaIface"

    .line 10
    .line 11
    const-string v4, "android.hardware.wifi@1.0::IWifiStaIface"

    .line 12
    .line 13
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hardware.wifi@1.3::IWifiStaIface"

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
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v1, "android.hardware.wifi@1.0::IWifiIface"

    .line 2
    .line 3
    const-string v2, "android.hardware.wifi@1.2::IWifiStaIface"

    .line 4
    .line 5
    const-string v3, "android.hardware.wifi@1.3::IWifiStaIface"

    .line 6
    .line 7
    const-wide/16 v4, 0x6

    .line 8
    .line 9
    const-wide/16 v6, 0x0

    .line 10
    .line 11
    const/4 v8, 0x6

    .line 12
    const-string v9, "android.hardware.wifi@1.0::IWifiStaIface"

    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 19
    .line 20
    sparse-switch p1, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :sswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->notifySyspropsChanged()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :sswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :sswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->ping()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :sswitch_3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->setHALInstrumentation()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :sswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Landroid/os/HwBlob;

    .line 79
    .line 80
    const/16 v0, 0x10

    .line 81
    .line 82
    invoke-direct {p1, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const-wide/16 v1, 0x8

    .line 90
    .line 91
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 92
    .line 93
    .line 94
    const-wide/16 v1, 0xc

    .line 95
    .line 96
    invoke-virtual {p1, v1, v2, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Landroid/os/HwBlob;

    .line 100
    .line 101
    mul-int/lit8 v2, v0, 0x20

    .line 102
    .line 103
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 104
    .line 105
    .line 106
    :goto_0
    if-ge v10, v0, :cond_1

    .line 107
    .line 108
    mul-int/lit8 v2, v10, 0x20

    .line 109
    .line 110
    int-to-long v2, v2

    .line 111
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, [B

    .line 116
    .line 117
    if-eqz v4, :cond_0

    .line 118
    .line 119
    array-length v5, v4

    .line 120
    const/16 v8, 0x20

    .line 121
    .line 122
    if-ne v5, v8, :cond_0

    .line 123
    .line 124
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 v10, v10, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    const-string p1, "Array element is not of the expected length"

    .line 133
    .line 134
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :cond_1
    invoke-virtual {p1, v6, v7, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$13;

    .line 207
    .line 208
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->getFactoryMacAddress(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getFactoryMacAddressCallback;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$12;

    .line 219
    .line 220
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->getLinkLayerStats_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getLinkLayerStats_1_3Callback;)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    new-array p1, v8, [B

    .line 231
    .line 232
    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0, v6, v7, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 237
    .line 238
    .line 239
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;->setMacAddress([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 240
    .line 241
    .line 242
    move-result-object p0

    .line 243
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$11;

    .line 257
    .line 258
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 259
    .line 260
    .line 261
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;->readApfPacketFilterData(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;)V

    .line 262
    .line 263
    .line 264
    return-void

    .line 265
    :pswitch_4
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$10;

    .line 269
    .line 270
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 271
    .line 272
    .line 273
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugRxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :pswitch_5
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$9;

    .line 281
    .line 282
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 283
    .line 284
    .line 285
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugTxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :pswitch_6
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startDebugPacketFateMonitoring()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :pswitch_7
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const/4 p1, 0x3

    .line 310
    new-array v1, p1, [B

    .line 311
    .line 312
    const-wide/16 v2, 0x3

    .line 313
    .line 314
    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v0, v6, v7, v1, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 319
    .line 320
    .line 321
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setScanningMacOui([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :pswitch_8
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopSendingKeepAlivePackets(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :pswitch_9
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    new-array v1, v8, [B

    .line 372
    .line 373
    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    invoke-virtual {v9, v6, v7, v1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 378
    .line 379
    .line 380
    new-array v9, v8, [B

    .line 381
    .line 382
    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 383
    .line 384
    .line 385
    move-result-object v4

    .line 386
    invoke-virtual {v4, v6, v7, v9, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 390
    .line 391
    .line 392
    move-result v7

    .line 393
    move v4, p1

    .line 394
    move-object v5, v1

    .line 395
    move-object v6, v9

    .line 396
    move-object v1, p0

    .line 397
    invoke-interface/range {v1 .. v7}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 398
    .line 399
    .line 400
    move-result-object p0

    .line 401
    invoke-static {p3, v10, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :pswitch_a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableNdOffload(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 423
    .line 424
    .line 425
    return-void

    .line 426
    :pswitch_b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setRoamingState(B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :pswitch_c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;

    .line 451
    .line 452
    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 456
    .line 457
    .line 458
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 459
    .line 460
    .line 461
    move-result-object p0

    .line 462
    invoke-static {p3, v10, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :pswitch_d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$8;

    .line 470
    .line 471
    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 472
    .line 473
    .line 474
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getRoamingCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :pswitch_e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 486
    .line 487
    .line 488
    move-result-object p0

    .line 489
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 496
    .line 497
    .line 498
    return-void

    .line 499
    :pswitch_f
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    invoke-interface {p0, v1, v2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startRssiMonitoring(III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 515
    .line 516
    .line 517
    move-result-object p0

    .line 518
    invoke-static {p3, v10, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :pswitch_10
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$7;

    .line 526
    .line 527
    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 528
    .line 529
    .line 530
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    :pswitch_11
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->disableLinkLayerStatsCollection()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 538
    .line 539
    .line 540
    move-result-object p0

    .line 541
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 542
    .line 543
    .line 544
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 548
    .line 549
    .line 550
    return-void

    .line 551
    :pswitch_12
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 555
    .line 556
    .line 557
    move-result v0

    .line 558
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableLinkLayerStatsCollection(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 559
    .line 560
    .line 561
    move-result-object p0

    .line 562
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :pswitch_13
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 580
    .line 581
    .line 582
    move-result-object p0

    .line 583
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 590
    .line 591
    .line 592
    return-void

    .line 593
    :pswitch_14
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;

    .line 601
    .line 602
    invoke-direct {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;-><init>()V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;->readFromParcel(Landroid/os/HwParcel;)V

    .line 606
    .line 607
    .line 608
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 609
    .line 610
    .line 611
    move-result-object p0

    .line 612
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 619
    .line 620
    .line 621
    return-void

    .line 622
    :pswitch_15
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$6;

    .line 630
    .line 631
    invoke-direct {v1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 632
    .line 633
    .line 634
    invoke-interface {p0, v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getValidFrequenciesForBand(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V

    .line 635
    .line 636
    .line 637
    return-void

    .line 638
    :pswitch_16
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$5;

    .line 642
    .line 643
    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 644
    .line 645
    .line 646
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getBackgroundScanCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    .line 647
    .line 648
    .line 649
    return-void

    .line 650
    :pswitch_17
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-interface {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->installApfPacketFilter(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 662
    .line 663
    .line 664
    move-result-object p0

    .line 665
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 672
    .line 673
    .line 674
    return-void

    .line 675
    :pswitch_18
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$4;

    .line 679
    .line 680
    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 681
    .line 682
    .line 683
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getApfPacketFilterCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    .line 684
    .line 685
    .line 686
    return-void

    .line 687
    :pswitch_19
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$3;

    .line 691
    .line 692
    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 693
    .line 694
    .line 695
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V

    .line 696
    .line 697
    .line 698
    return-void

    .line 699
    :pswitch_1a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 711
    .line 712
    .line 713
    move-result-object p0

    .line 714
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 721
    .line 722
    .line 723
    return-void

    .line 724
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$2;

    .line 728
    .line 729
    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 730
    .line 731
    .line 732
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    .line 733
    .line 734
    .line 735
    return-void

    .line 736
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$1;

    .line 740
    .line 741
    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 742
    .line 743
    .line 744
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    .line 745
    .line 746
    .line 747
    return-void

    .line 748
    nop

    .line 749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
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
    const-string v0, "android.hardware.wifi@1.3::IWifiStaIface"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
