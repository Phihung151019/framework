.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;
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
        0x45t
        -0x55t
        -0x6dt
        0x37t
        -0x71t
        0x2t
        -0x58t
        -0x44t
        0x3at
        0x65t
        -0x78t
        0x53t
        -0x32t
        0x4dt
        0x3ft
        -0x24t
        0x1et
        -0x61t
        -0x5et
        -0x3ft
        -0x2ft
        -0x3bt
        0x45t
        -0x7et
        0x1dt
        0x49t
        0xbt
        -0x10t
        -0xct
        -0x27t
        0x6ct
        -0x14t
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
        -0x1t
        0x66t
        0x37t
        0x1at
        0x46t
        0x7dt
        0x1ft
        0x3ct
        -0x56t
        -0x32t
        -0x5ft
        0x5dt
        -0x6dt
        -0xdt
        -0x65t
        0x7bt
        0x76t
        0x7bt
        0xdt
        0x6bt
        -0x74t
        -0x2ct
        0x1dt
        0x4t
        0x3t
        0x37t
        -0x33t
        -0x55t
        -0xet
        0x51t
        0x4bt
        -0x79t
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
        -0x74t
        0x7et
        -0xdt
        0x2ft
        -0x39t
        -0x73t
        0x5et
        -0x3at
        -0x1at
        -0x6bt
        0x6dt
        -0x1dt
        0x78t
        0x4ct
        -0x3et
        -0x3at
        -0xct
        0x26t
        0x14t
        -0x4bt
        0x27t
        0x2dt
        0x2et
        0x46t
        0x1ft
        0x6dt
        0x60t
        0x53t
        0x4bt
        -0x5dt
        -0x72t
        -0x3et
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
        -0x46t
        0x5at
        -0x59t
        0x4ft
        0x1bt
        -0x59t
        0x14t
        -0x10t
        0x9t
        0x38t
        0x64t
        0x22t
        0x79t
        0x23t
        0x49t
        0x28t
        0x8t
        0x79t
        0x5bt
        -0x26t
        0x61t
        -0x67t
        -0x3ct
        -0x16t
        0x8t
        -0x6ft
        0x32t
        0x2dt
        0x27t
        -0x8t
        -0x37t
        0x31t
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
    const-string v0, "android.hardware.wifi@1.5::IWifiNanIface"

    .line 8
    .line 9
    const-string v1, "android.hardware.wifi@1.4::IWifiNanIface"

    .line 10
    .line 11
    const-string v2, "android.hardware.wifi@1.2::IWifiNanIface"

    .line 12
    .line 13
    const-string v3, "android.hardware.wifi@1.0::IWifiNanIface"

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
    const-string p0, "android.hardware.wifi@1.5::IWifiNanIface"

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string p4, "android.hardware.wifi@1.0::IWifiIface"

    .line 2
    .line 3
    const-string v0, "android.hardware.wifi@1.4::IWifiNanIface"

    .line 4
    .line 5
    const-string v1, "android.hardware.wifi@1.2::IWifiNanIface"

    .line 6
    .line 7
    const-string v2, "android.hardware.wifi@1.5::IWifiNanIface"

    .line 8
    .line 9
    const-string v3, "android.hardware.wifi@1.0::IWifiNanIface"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    const-string p4, "android.hidl.base@1.0::IBase"

    .line 16
    .line 17
    sparse-switch p1, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->notifySyspropsChanged()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->ping()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->setHALInstrumentation()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Landroid/os/HwBlob;

    .line 76
    .line 77
    const/16 p2, 0x10

    .line 78
    .line 79
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    const-wide/16 v0, 0x8

    .line 87
    .line 88
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 89
    .line 90
    .line 91
    const-wide/16 v0, 0xc

    .line 92
    .line 93
    invoke-virtual {p1, v0, v1, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 94
    .line 95
    .line 96
    new-instance p4, Landroid/os/HwBlob;

    .line 97
    .line 98
    mul-int/lit8 v0, p2, 0x20

    .line 99
    .line 100
    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 101
    .line 102
    .line 103
    :goto_0
    if-ge v4, p2, :cond_1

    .line 104
    .line 105
    mul-int/lit8 v0, v4, 0x20

    .line 106
    .line 107
    int-to-long v0, v0

    .line 108
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, [B

    .line 113
    .line 114
    if-eqz v2, :cond_0

    .line 115
    .line 116
    array-length v3, v2

    .line 117
    const/16 v5, 0x20

    .line 118
    .line 119
    if-ne v3, v5, :cond_0

    .line 120
    .line 121
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    const-string p1, "Array element is not of the expected length"

    .line 130
    .line 131
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p0

    .line 135
    :cond_1
    const-wide/16 v0, 0x0

    .line 136
    .line 137
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

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
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->getCapabilitiesRequest_1_5(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

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
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->registerEventCallback_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

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
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 256
    .line 257
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 261
    .line 262
    .line 263
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;

    .line 264
    .line 265
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 269
    .line 270
    .line 271
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->configRequest_1_5(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-static {p3, v4, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    .line 287
    .line 288
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 292
    .line 293
    .line 294
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;

    .line 295
    .line 296
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 300
    .line 301
    .line 302
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->enableRequest_1_5(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-static {p3, v4, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 318
    .line 319
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 323
    .line 324
    .line 325
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    .line 326
    .line 327
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 331
    .line 332
    .line 333
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;->configRequest_1_4(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    invoke-static {p3, v4, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    .line 349
    .line 350
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 354
    .line 355
    .line 356
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    .line 357
    .line 358
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 362
    .line 363
    .line 364
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;->enableRequest_1_4(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 365
    .line 366
    .line 367
    move-result-object p0

    .line 368
    invoke-static {p3, v4, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    .line 380
    .line 381
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 385
    .line 386
    .line 387
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    .line 388
    .line 389
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 393
    .line 394
    .line 395
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->configRequest_1_2(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    invoke-static {p3, v4, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;

    .line 411
    .line 412
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 416
    .line 417
    .line 418
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    .line 419
    .line 420
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 424
    .line 425
    .line 426
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->enableRequest_1_2(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    invoke-static {p3, v4, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 463
    .line 464
    .line 465
    move-result p1

    .line 466
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 467
    .line 468
    .line 469
    move-result p2

    .line 470
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->terminateDataPathRequest(SI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 471
    .line 472
    .line 473
    move-result-object p0

    .line 474
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 481
    .line 482
    .line 483
    return-void

    .line 484
    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    .line 492
    .line 493
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;-><init>()V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 497
    .line 498
    .line 499
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->respondToDataPathIndicationRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 500
    .line 501
    .line 502
    move-result-object p0

    .line 503
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 517
    .line 518
    .line 519
    move-result p1

    .line 520
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    .line 521
    .line 522
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;-><init>()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 526
    .line 527
    .line 528
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->initiateDataPathRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 529
    .line 530
    .line 531
    move-result-object p0

    .line 532
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 539
    .line 540
    .line 541
    return-void

    .line 542
    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 546
    .line 547
    .line 548
    move-result p1

    .line 549
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object p2

    .line 553
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->deleteDataInterfaceRequest(SLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 554
    .line 555
    .line 556
    move-result-object p0

    .line 557
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 564
    .line 565
    .line 566
    return-void

    .line 567
    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 571
    .line 572
    .line 573
    move-result p1

    .line 574
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object p2

    .line 578
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->createDataInterfaceRequest(SLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 579
    .line 580
    .line 581
    move-result-object p0

    .line 582
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 589
    .line 590
    .line 591
    return-void

    .line 592
    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 596
    .line 597
    .line 598
    move-result p1

    .line 599
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    .line 600
    .line 601
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;-><init>()V

    .line 602
    .line 603
    .line 604
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 605
    .line 606
    .line 607
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->transmitFollowupRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 608
    .line 609
    .line 610
    move-result-object p0

    .line 611
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 618
    .line 619
    .line 620
    return-void

    .line 621
    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 625
    .line 626
    .line 627
    move-result p1

    .line 628
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 629
    .line 630
    .line 631
    move-result p2

    .line 632
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->stopSubscribeRequest(SB)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 633
    .line 634
    .line 635
    move-result-object p0

    .line 636
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 643
    .line 644
    .line 645
    return-void

    .line 646
    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 650
    .line 651
    .line 652
    move-result p1

    .line 653
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;

    .line 654
    .line 655
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;-><init>()V

    .line 656
    .line 657
    .line 658
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 659
    .line 660
    .line 661
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->startSubscribeRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 662
    .line 663
    .line 664
    move-result-object p0

    .line 665
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

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
    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 679
    .line 680
    .line 681
    move-result p1

    .line 682
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 683
    .line 684
    .line 685
    move-result p2

    .line 686
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->stopPublishRequest(SB)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 687
    .line 688
    .line 689
    move-result-object p0

    .line 690
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 697
    .line 698
    .line 699
    return-void

    .line 700
    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 704
    .line 705
    .line 706
    move-result p1

    .line 707
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;

    .line 708
    .line 709
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;-><init>()V

    .line 710
    .line 711
    .line 712
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 713
    .line 714
    .line 715
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->startPublishRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 716
    .line 717
    .line 718
    move-result-object p0

    .line 719
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 726
    .line 727
    .line 728
    return-void

    .line 729
    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 733
    .line 734
    .line 735
    move-result p1

    .line 736
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->disableRequest(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 737
    .line 738
    .line 739
    move-result-object p0

    .line 740
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 747
    .line 748
    .line 749
    return-void

    .line 750
    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 754
    .line 755
    .line 756
    move-result p1

    .line 757
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    .line 758
    .line 759
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 760
    .line 761
    .line 762
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 763
    .line 764
    .line 765
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->configRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 766
    .line 767
    .line 768
    move-result-object p0

    .line 769
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 776
    .line 777
    .line 778
    return-void

    .line 779
    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 783
    .line 784
    .line 785
    move-result p1

    .line 786
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;

    .line 787
    .line 788
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 789
    .line 790
    .line 791
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 792
    .line 793
    .line 794
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->enableRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 795
    .line 796
    .line 797
    move-result-object p0

    .line 798
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 805
    .line 806
    .line 807
    return-void

    .line 808
    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 812
    .line 813
    .line 814
    move-result p1

    .line 815
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->getCapabilitiesRequest(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 816
    .line 817
    .line 818
    move-result-object p0

    .line 819
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 826
    .line 827
    .line 828
    return-void

    .line 829
    :pswitch_17
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 833
    .line 834
    .line 835
    move-result-object p1

    .line 836
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;

    .line 837
    .line 838
    .line 839
    move-result-object p1

    .line 840
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 841
    .line 842
    .line 843
    move-result-object p0

    .line 844
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 851
    .line 852
    .line 853
    return-void

    .line 854
    :pswitch_18
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub$2;

    .line 858
    .line 859
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    .line 860
    .line 861
    .line 862
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    .line 863
    .line 864
    .line 865
    return-void

    .line 866
    :pswitch_19
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub$1;

    .line 870
    .line 871
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    .line 872
    .line 873
    .line 874
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    .line 875
    .line 876
    .line 877
    return-void

    .line 878
    nop

    .line 879
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
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
    const-string v0, "android.hardware.wifi@1.5::IWifiNanIface"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
