.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;
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
    .locals 8
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
    new-array v7, v0, [B

    .line 36
    .line 37
    fill-array-data v7, :array_6

    .line 38
    .line 39
    .line 40
    filled-new-array/range {v1 .. v7}, [[B

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    nop

    .line 53
    :array_0
    .array-data 1
        0x1bt
        -0x54t
        0x6at
        0x7ct
        -0x7ft
        0x36t
        -0x21t
        -0x50t
        0x41t
        0x4ft
        -0x1bt
        0x63t
        -0x62t
        -0x14t
        0x11t
        0x5at
        -0x5et
        -0x2ft
        0x29t
        0x27t
        -0x1at
        0x4at
        0x6t
        0x42t
        -0x5ct
        0x3ft
        -0x4bt
        0x32t
        0x25t
        -0x10t
        -0x67t
        -0x4et
    .end array-data

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
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
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
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_2
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

    :array_4
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

    :array_5
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

    :array_6
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
    .locals 7
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
    const-string v5, "android.hardware.wifi@1.0::IWifiIface"

    .line 4
    .line 5
    const-string v6, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v0, "android.hardware.wifi@1.6::IWifiStaIface"

    .line 8
    .line 9
    const-string v1, "android.hardware.wifi@1.5::IWifiStaIface"

    .line 10
    .line 11
    const-string v2, "android.hardware.wifi@1.3::IWifiStaIface"

    .line 12
    .line 13
    const-string v3, "android.hardware.wifi@1.2::IWifiStaIface"

    .line 14
    .line 15
    const-string v4, "android.hardware.wifi@1.0::IWifiStaIface"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hardware.wifi@1.6::IWifiStaIface"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;->notifySyspropsChanged()V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;->ping()V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;->setHALInstrumentation()V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    invoke-virtual {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

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
    const-string p1, "android.hardware.wifi@1.6::IWifiStaIface"

    .line 208
    .line 209
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$15;

    .line 213
    .line 214
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$15;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface;->getLinkLayerStats_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$getLinkLayerStats_1_6Callback;)V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;->setScanMode(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :pswitch_2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$14;

    .line 246
    .line 247
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface;->getLinkLayerStats_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiStaIface$getLinkLayerStats_1_5Callback;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_3
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$13;

    .line 258
    .line 259
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->getFactoryMacAddress(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getFactoryMacAddressCallback;)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :pswitch_4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$12;

    .line 270
    .line 271
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface;->getLinkLayerStats_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/V1_3/IWifiStaIface$getLinkLayerStats_1_3Callback;)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-array p1, v10, [B

    .line 282
    .line 283
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0, v8, v9, p1, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 288
    .line 289
    .line 290
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;->setMacAddress([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$11;

    .line 308
    .line 309
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 310
    .line 311
    .line 312
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface;->readApfPacketFilterData(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiStaIface$readApfPacketFilterDataCallback;)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :pswitch_7
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$10;

    .line 320
    .line 321
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 322
    .line 323
    .line 324
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugRxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugRxPacketFatesCallback;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :pswitch_8
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$9;

    .line 332
    .line 333
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 334
    .line 335
    .line 336
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getDebugTxPacketFates(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getDebugTxPacketFatesCallback;)V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :pswitch_9
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startDebugPacketFateMonitoring()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :pswitch_a
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    const/4 p1, 0x3

    .line 361
    new-array v2, p1, [B

    .line 362
    .line 363
    const-wide/16 v3, 0x3

    .line 364
    .line 365
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v0, v8, v9, v2, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 370
    .line 371
    .line 372
    invoke-interface {p0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setScanningMacOui([B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 373
    .line 374
    .line 375
    move-result-object p0

    .line 376
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :pswitch_b
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopSendingKeepAlivePackets(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 404
    .line 405
    .line 406
    return-void

    .line 407
    :pswitch_c
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    new-array p1, v10, [B

    .line 423
    .line 424
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {v2, v8, v9, p1, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 429
    .line 430
    .line 431
    new-array v2, v10, [B

    .line 432
    .line 433
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 434
    .line 435
    .line 436
    move-result-object v6

    .line 437
    invoke-virtual {v6, v8, v9, v2, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 441
    .line 442
    .line 443
    move-result v8

    .line 444
    move-object v6, p1

    .line 445
    move-object v7, v2

    .line 446
    move-object v2, p0

    .line 447
    invoke-interface/range {v2 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startSendingKeepAlivePackets(ILjava/util/ArrayList;S[B[BI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    invoke-static {v1, v12, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :pswitch_d
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableNdOffload(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 463
    .line 464
    .line 465
    move-result-object p0

    .line 466
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 473
    .line 474
    .line 475
    return-void

    .line 476
    :pswitch_e
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->setRoamingState(B)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 484
    .line 485
    .line 486
    move-result-object p0

    .line 487
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 494
    .line 495
    .line 496
    return-void

    .line 497
    :pswitch_f
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;

    .line 501
    .line 502
    invoke-direct {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v2, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 506
    .line 507
    .line 508
    invoke-interface {p0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 509
    .line 510
    .line 511
    move-result-object p0

    .line 512
    invoke-static {v1, v12, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    :pswitch_10
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$8;

    .line 520
    .line 521
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 522
    .line 523
    .line 524
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getRoamingCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getRoamingCapabilitiesCallback;)V

    .line 525
    .line 526
    .line 527
    return-void

    .line 528
    :pswitch_11
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopRssiMonitoring(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 536
    .line 537
    .line 538
    move-result-object p0

    .line 539
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 546
    .line 547
    .line 548
    return-void

    .line 549
    :pswitch_12
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    invoke-interface {p0, v2, v3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startRssiMonitoring(III)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 565
    .line 566
    .line 567
    move-result-object p0

    .line 568
    invoke-static {v1, v12, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :pswitch_13
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$7;

    .line 576
    .line 577
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 578
    .line 579
    .line 580
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getLinkLayerStats(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getLinkLayerStatsCallback;)V

    .line 581
    .line 582
    .line 583
    return-void

    .line 584
    :pswitch_14
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->disableLinkLayerStatsCollection()Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 588
    .line 589
    .line 590
    move-result-object p0

    .line 591
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 598
    .line 599
    .line 600
    return-void

    .line 601
    :pswitch_15
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->enableLinkLayerStatsCollection(Z)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 609
    .line 610
    .line 611
    move-result-object p0

    .line 612
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 619
    .line 620
    .line 621
    return-void

    .line 622
    :pswitch_16
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 626
    .line 627
    .line 628
    move-result v0

    .line 629
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->stopBackgroundScan(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 630
    .line 631
    .line 632
    move-result-object p0

    .line 633
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 640
    .line 641
    .line 642
    return-void

    .line 643
    :pswitch_17
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 647
    .line 648
    .line 649
    move-result v2

    .line 650
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;

    .line 651
    .line 652
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;-><init>()V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;->readFromParcel(Landroid/os/HwParcel;)V

    .line 656
    .line 657
    .line 658
    invoke-interface {p0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaBackgroundScanParameters;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 659
    .line 660
    .line 661
    move-result-object p0

    .line 662
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 669
    .line 670
    .line 671
    return-void

    .line 672
    :pswitch_18
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$6;

    .line 680
    .line 681
    invoke-direct {v2, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 682
    .line 683
    .line 684
    invoke-interface {p0, v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getValidFrequenciesForBand(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getValidFrequenciesForBandCallback;)V

    .line 685
    .line 686
    .line 687
    return-void

    .line 688
    :pswitch_19
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$5;

    .line 692
    .line 693
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 694
    .line 695
    .line 696
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getBackgroundScanCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getBackgroundScanCapabilitiesCallback;)V

    .line 697
    .line 698
    .line 699
    return-void

    .line 700
    :pswitch_1a
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-interface {p0, v2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->installApfPacketFilter(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 712
    .line 713
    .line 714
    move-result-object p0

    .line 715
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 722
    .line 723
    .line 724
    return-void

    .line 725
    :pswitch_1b
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$4;

    .line 729
    .line 730
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 731
    .line 732
    .line 733
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getApfPacketFilterCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getApfPacketFilterCapabilitiesCallback;)V

    .line 734
    .line 735
    .line 736
    return-void

    .line 737
    :pswitch_1c
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$3;

    .line 741
    .line 742
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 743
    .line 744
    .line 745
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface$getCapabilitiesCallback;)V

    .line 746
    .line 747
    .line 748
    return-void

    .line 749
    :pswitch_1d
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiStaIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 761
    .line 762
    .line 763
    move-result-object p0

    .line 764
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 771
    .line 772
    .line 773
    return-void

    .line 774
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$2;

    .line 778
    .line 779
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 780
    .line 781
    .line 782
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    .line 783
    .line 784
    .line 785
    return-void

    .line 786
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$1;

    .line 790
    .line 791
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;Landroid/os/HwParcel;)V

    .line 792
    .line 793
    .line 794
    invoke-interface {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    .line 795
    .line 796
    .line 797
    return-void

    .line 798
    nop

    .line 799
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
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
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
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
    const-string v0, "android.hardware.wifi@1.6::IWifiStaIface"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
