.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;
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
        -0x4ft
        0x54t
        -0x47t
        -0x2t
        -0x75t
        -0x6ct
        -0x31t
        0x64t
        0x39t
        0x27t
        0x66t
        -0x41t
        -0x27t
        0x32t
        -0x40t
        0x23t
        -0x13t
        -0xat
        0x58t
        -0x46t
        -0x72t
        -0x34t
        0x4bt
        -0x6bt
        0x2ft
        -0x7ct
        0x24t
        0x5t
        -0x7ft
        0x20t
        -0x1bt
        -0x43t
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

    :array_4
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
    const-string v4, "android.hardware.wifi@1.0::IWifiIface"

    .line 4
    .line 5
    const-string v5, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v0, "android.hardware.wifi@1.5::IWifiStaIface"

    .line 8
    .line 9
    const-string v1, "android.hardware.wifi@1.3::IWifiStaIface"

    .line 10
    .line 11
    const-string v2, "android.hardware.wifi@1.2::IWifiStaIface"

    .line 12
    .line 13
    const-string v3, "android.hardware.wifi@1.0::IWifiStaIface"

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
    const-string p0, "android.hardware.wifi@1.5::IWifiStaIface"

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
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p3

    .line 2
    .line 3
    const-string v2, "android.hardware.wifi@1.0::IWifiIface"

    .line 4
    .line 5
    const-string v3, "android.hardware.wifi@1.2::IWifiStaIface"

    .line 6
    .line 7
    const-string v4, "android.hardware.wifi@1.3::IWifiStaIface"

    .line 8
    .line 9
    const-string v5, "android.hardware.wifi@1.5::IWifiStaIface"

    .line 10
    .line 11
    const-wide/16 v6, 0x6

    .line 12
    .line 13
    const-wide/16 v8, 0x0

    .line 14
    .line 15
    const/4 v10, 0x6

    .line 16
    const-string v11, "android.hardware.wifi@1.0::IWifiStaIface"

    .line 17
    .line 18
    const/4 v12, 0x0

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    const-string v2, "android.hidl.base@1.0::IBase"

    .line 23
    .line 24
    sparse-switch p1, :sswitch_data_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :sswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->notifySyspropsChanged()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->ping()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :sswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->setHALInstrumentation()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :sswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Landroid/os/HwBlob;

    .line 83
    .line 84
    const/16 v0, 0x10

    .line 85
    .line 86
    invoke-direct {p1, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const-wide/16 v2, 0x8

    .line 94
    .line 95
    invoke-virtual {p1, v2, v3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 96
    .line 97
    .line 98
    const-wide/16 v2, 0xc

    .line 99
    .line 100
    invoke-virtual {p1, v2, v3, v12}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 101
    .line 102
    .line 103
    new-instance v2, Landroid/os/HwBlob;

    .line 104
    .line 105
    mul-int/lit8 v3, v0, 0x20

    .line 106
    .line 107
    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 108
    .line 109
    .line 110
    :goto_0
    if-ge v12, v0, :cond_1

    .line 111
    .line 112
    mul-int/lit8 v3, v12, 0x20

    .line 113
    .line 114
    int-to-long v3, v3

    .line 115
    invoke-virtual {p0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, [B

    .line 120
    .line 121
    if-eqz v5, :cond_0

    .line 122
    .line 123
    array-length v6, v5

    .line 124
    const/16 v7, 0x20

    .line 125
    .line 126
    if-ne v6, v7, :cond_0

    .line 127
    .line 128
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 129
    .line 130
    .line 131
    add-int/lit8 v12, v12, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    const-string p1, "Array element is not of the expected length"

    .line 137
    .line 138
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :cond_1
    invoke-virtual {p1, v8, v9, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :sswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :sswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :sswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_0
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;->setScanMode(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :pswitch_1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$14;

    .line 232
    .line 233
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;->getLinkLayerStats_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$getLinkLayerStats_1_5Callback;)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :pswitch_2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$13;

    .line 244
    .line 245
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->getFactoryMacAddress(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getFactoryMacAddressCallback;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :pswitch_3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$12;

    .line 256
    .line 257
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 258
    .line 259
    .line 260
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->getLinkLayerStats_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getLinkLayerStats_1_3Callback;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    new-array p1, v10, [B

    .line 268
    .line 269
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0, v8, v9, p1, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 274
    .line 275
    .line 276
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;->setMacAddress([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$11;

    .line 294
    .line 295
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 296
    .line 297
    .line 298
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;->readApfPacketFilterData(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;)V

    .line 299
    .line 300
    .line 301
    return-void

    .line 302
    :pswitch_6
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$10;

    .line 306
    .line 307
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 308
    .line 309
    .line 310
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugRxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :pswitch_7
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$9;

    .line 318
    .line 319
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 320
    .line 321
    .line 322
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugTxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :pswitch_8
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startDebugPacketFateMonitoring()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :pswitch_9
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    const/4 p1, 0x3

    .line 347
    new-array v2, p1, [B

    .line 348
    .line 349
    const-wide/16 v3, 0x3

    .line 350
    .line 351
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0, v8, v9, v2, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 356
    .line 357
    .line 358
    invoke-interface {p0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setScanningMacOui([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 359
    .line 360
    .line 361
    move-result-object p0

    .line 362
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :pswitch_a
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopSendingKeepAlivePackets(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 390
    .line 391
    .line 392
    return-void

    .line 393
    :pswitch_b
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    new-array p1, v10, [B

    .line 409
    .line 410
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-virtual {v2, v8, v9, p1, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 415
    .line 416
    .line 417
    new-array v2, v10, [B

    .line 418
    .line 419
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    invoke-virtual {v6, v8, v9, v2, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 427
    .line 428
    .line 429
    move-result v8

    .line 430
    move-object v6, p1

    .line 431
    move-object v7, v2

    .line 432
    move-object v2, p0

    .line 433
    invoke-interface/range {v2 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    invoke-static {v1, v12, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :pswitch_c
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableNdOffload(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 449
    .line 450
    .line 451
    move-result-object p0

    .line 452
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 459
    .line 460
    .line 461
    return-void

    .line 462
    :pswitch_d
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setRoamingState(B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 470
    .line 471
    .line 472
    move-result-object p0

    .line 473
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 480
    .line 481
    .line 482
    return-void

    .line 483
    :pswitch_e
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;

    .line 487
    .line 488
    invoke-direct {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 492
    .line 493
    .line 494
    invoke-interface {p0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 495
    .line 496
    .line 497
    move-result-object p0

    .line 498
    invoke-static {v1, v12, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 499
    .line 500
    .line 501
    return-void

    .line 502
    :pswitch_f
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$8;

    .line 506
    .line 507
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 508
    .line 509
    .line 510
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getRoamingCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    .line 511
    .line 512
    .line 513
    return-void

    .line 514
    :pswitch_10
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 522
    .line 523
    .line 524
    move-result-object p0

    .line 525
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 532
    .line 533
    .line 534
    return-void

    .line 535
    :pswitch_11
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    invoke-interface {p0, v2, v3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startRssiMonitoring(III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 551
    .line 552
    .line 553
    move-result-object p0

    .line 554
    invoke-static {v1, v12, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 555
    .line 556
    .line 557
    return-void

    .line 558
    :pswitch_12
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$7;

    .line 562
    .line 563
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 564
    .line 565
    .line 566
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V

    .line 567
    .line 568
    .line 569
    return-void

    .line 570
    :pswitch_13
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->disableLinkLayerStatsCollection()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 574
    .line 575
    .line 576
    move-result-object p0

    .line 577
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 584
    .line 585
    .line 586
    return-void

    .line 587
    :pswitch_14
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableLinkLayerStatsCollection(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 595
    .line 596
    .line 597
    move-result-object p0

    .line 598
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 605
    .line 606
    .line 607
    return-void

    .line 608
    :pswitch_15
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 616
    .line 617
    .line 618
    move-result-object p0

    .line 619
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 626
    .line 627
    .line 628
    return-void

    .line 629
    :pswitch_16
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 633
    .line 634
    .line 635
    move-result v2

    .line 636
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;

    .line 637
    .line 638
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;-><init>()V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;->readFromParcel(Landroid/os/HwParcel;)V

    .line 642
    .line 643
    .line 644
    invoke-interface {p0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 645
    .line 646
    .line 647
    move-result-object p0

    .line 648
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :pswitch_17
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$6;

    .line 666
    .line 667
    invoke-direct {v2, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 668
    .line 669
    .line 670
    invoke-interface {p0, v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getValidFrequenciesForBand(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V

    .line 671
    .line 672
    .line 673
    return-void

    .line 674
    :pswitch_18
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$5;

    .line 678
    .line 679
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 680
    .line 681
    .line 682
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getBackgroundScanCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    .line 683
    .line 684
    .line 685
    return-void

    .line 686
    :pswitch_19
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    invoke-interface {p0, v2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->installApfPacketFilter(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 698
    .line 699
    .line 700
    move-result-object p0

    .line 701
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 708
    .line 709
    .line 710
    return-void

    .line 711
    :pswitch_1a
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$4;

    .line 715
    .line 716
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 717
    .line 718
    .line 719
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getApfPacketFilterCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    .line 720
    .line 721
    .line 722
    return-void

    .line 723
    :pswitch_1b
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$3;

    .line 727
    .line 728
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 729
    .line 730
    .line 731
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V

    .line 732
    .line 733
    .line 734
    return-void

    .line 735
    :pswitch_1c
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 747
    .line 748
    .line 749
    move-result-object p0

    .line 750
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 757
    .line 758
    .line 759
    return-void

    .line 760
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$2;

    .line 764
    .line 765
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 766
    .line 767
    .line 768
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    .line 769
    .line 770
    .line 771
    return-void

    .line 772
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$1;

    .line 776
    .line 777
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 778
    .line 779
    .line 780
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    .line 781
    .line 782
    .line 783
    return-void

    .line 784
    nop

    .line 785
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
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
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
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
    const-string v0, "android.hardware.wifi@1.5::IWifiStaIface"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
