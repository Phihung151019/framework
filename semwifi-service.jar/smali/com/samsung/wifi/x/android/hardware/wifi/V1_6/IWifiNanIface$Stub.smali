.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;
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
        -0x20t
        0x5ct
        0x4t
        0x7dt
        -0x20t
        -0x59t
        -0xet
        -0x34t
        -0x71t
        0x16t
        0x6at
        0x1ct
        -0x80t
        -0x75t
        0x78t
        -0x18t
        0x56t
        0x5ft
        -0x8t
        0x66t
        -0x5t
        0x69t
        -0x67t
        0x1ft
        -0x3dt
        -0x45t
        -0x6t
        -0x6ft
        0x41t
        -0x79t
        0x1dt
        0x5bt
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

    :array_4
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
    const-string v0, "android.hardware.wifi@1.6::IWifiNanIface"

    .line 8
    .line 9
    const-string v1, "android.hardware.wifi@1.5::IWifiNanIface"

    .line 10
    .line 11
    const-string v2, "android.hardware.wifi@1.4::IWifiNanIface"

    .line 12
    .line 13
    const-string v3, "android.hardware.wifi@1.2::IWifiNanIface"

    .line 14
    .line 15
    const-string v4, "android.hardware.wifi@1.0::IWifiNanIface"

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
    const-string p0, "android.hardware.wifi@1.6::IWifiNanIface"

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
    const-string v3, "android.hardware.wifi@1.6::IWifiNanIface"

    .line 10
    .line 11
    const-string v4, "android.hardware.wifi@1.0::IWifiNanIface"

    .line 12
    .line 13
    const/4 v5, 0x0

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->notifySyspropsChanged()V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->ping()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->setHALInstrumentation()V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

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
    invoke-virtual {p1, v0, v1, v5}, Landroid/os/HwBlob;->putBool(JZ)V

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
    if-ge v5, p2, :cond_1

    .line 106
    .line 107
    mul-int/lit8 v0, v5, 0x20

    .line 108
    .line 109
    int-to-long v0, v0

    .line 110
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, [B

    .line 115
    .line 116
    if-eqz v2, :cond_0

    .line 117
    .line 118
    array-length v3, v2

    .line 119
    const/16 v4, 0x20

    .line 120
    .line 121
    if-ne v3, v4, :cond_0

    .line 122
    .line 123
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v5, v5, 0x1

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
    const-wide/16 v0, 0x0

    .line 138
    .line 139
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :sswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :sswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :sswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;

    .line 212
    .line 213
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 217
    .line 218
    .line 219
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->startPublishRequest_1_6(SLcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 241
    .line 242
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 246
    .line 247
    .line 248
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;

    .line 249
    .line 250
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->configRequest_1_6(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-static {p3, v5, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    .line 272
    .line 273
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 277
    .line 278
    .line 279
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;

    .line 280
    .line 281
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 285
    .line 286
    .line 287
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->enableRequest_1_6(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-static {p3, v5, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;

    .line 303
    .line 304
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 308
    .line 309
    .line 310
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->respondToDataPathIndicationRequest_1_6(SLcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;

    .line 332
    .line 333
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 337
    .line 338
    .line 339
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->initiateDataPathRequest_1_6(SLcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanInitiateDataPathRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 350
    .line 351
    .line 352
    return-void

    .line 353
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface;->registerEventCallback_1_6(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 365
    .line 366
    .line 367
    move-result-object p0

    .line 368
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 375
    .line 376
    .line 377
    return-void

    .line 378
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->getCapabilitiesRequest_1_5(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 396
    .line 397
    .line 398
    return-void

    .line 399
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->registerEventCallback_1_5(Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 432
    .line 433
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 437
    .line 438
    .line 439
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;

    .line 440
    .line 441
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 445
    .line 446
    .line 447
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->configRequest_1_5(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    invoke-static {p3, v5, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 459
    .line 460
    .line 461
    move-result p1

    .line 462
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    .line 463
    .line 464
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 468
    .line 469
    .line 470
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;

    .line 471
    .line 472
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;-><init>()V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 476
    .line 477
    .line 478
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/IWifiNanIface;->enableRequest_1_5(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 479
    .line 480
    .line 481
    move-result-object p0

    .line 482
    invoke-static {p3, v5, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 483
    .line 484
    .line 485
    return-void

    .line 486
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 490
    .line 491
    .line 492
    move-result p1

    .line 493
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;

    .line 494
    .line 495
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;-><init>()V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 499
    .line 500
    .line 501
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    .line 502
    .line 503
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 507
    .line 508
    .line 509
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;->configRequest_1_4(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 510
    .line 511
    .line 512
    move-result-object p0

    .line 513
    invoke-static {p3, v5, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 521
    .line 522
    .line 523
    move-result p1

    .line 524
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;

    .line 525
    .line 526
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;-><init>()V

    .line 527
    .line 528
    .line 529
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 530
    .line 531
    .line 532
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    .line 533
    .line 534
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 538
    .line 539
    .line 540
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_4/IWifiNanIface;->enableRequest_1_4(SLcom/samsung/wifi/x/android/hardware/wifi/V1_4/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 541
    .line 542
    .line 543
    move-result-object p0

    .line 544
    invoke-static {p3, v5, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 545
    .line 546
    .line 547
    return-void

    .line 548
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 552
    .line 553
    .line 554
    move-result p1

    .line 555
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    .line 556
    .line 557
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 561
    .line 562
    .line 563
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    .line 564
    .line 565
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 569
    .line 570
    .line 571
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->configRequest_1_2(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 572
    .line 573
    .line 574
    move-result-object p0

    .line 575
    invoke-static {p3, v5, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 576
    .line 577
    .line 578
    return-void

    .line 579
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 583
    .line 584
    .line 585
    move-result p1

    .line 586
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;

    .line 587
    .line 588
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 592
    .line 593
    .line 594
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;

    .line 595
    .line 596
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;-><init>()V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;->readFromParcel(Landroid/os/HwParcel;)V

    .line 600
    .line 601
    .line 602
    invoke-interface {p0, p1, p4, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->enableRequest_1_2(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanConfigRequestSupplemental;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 603
    .line 604
    .line 605
    move-result-object p0

    .line 606
    invoke-static {p3, v5, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 607
    .line 608
    .line 609
    return-void

    .line 610
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIface;->registerEventCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 622
    .line 623
    .line 624
    move-result-object p0

    .line 625
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 626
    .line 627
    .line 628
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 632
    .line 633
    .line 634
    return-void

    .line 635
    :pswitch_f
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 639
    .line 640
    .line 641
    move-result p1

    .line 642
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 643
    .line 644
    .line 645
    move-result p2

    .line 646
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->terminateDataPathRequest(SI)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 647
    .line 648
    .line 649
    move-result-object p0

    .line 650
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 657
    .line 658
    .line 659
    return-void

    .line 660
    :pswitch_10
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 664
    .line 665
    .line 666
    move-result p1

    .line 667
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;

    .line 668
    .line 669
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;-><init>()V

    .line 670
    .line 671
    .line 672
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 673
    .line 674
    .line 675
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->respondToDataPathIndicationRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanRespondToDataPathIndicationRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 676
    .line 677
    .line 678
    move-result-object p0

    .line 679
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 683
    .line 684
    .line 685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 686
    .line 687
    .line 688
    return-void

    .line 689
    :pswitch_11
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 693
    .line 694
    .line 695
    move-result p1

    .line 696
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    .line 697
    .line 698
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;-><init>()V

    .line 699
    .line 700
    .line 701
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 702
    .line 703
    .line 704
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->initiateDataPathRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 705
    .line 706
    .line 707
    move-result-object p0

    .line 708
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 715
    .line 716
    .line 717
    return-void

    .line 718
    :pswitch_12
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 722
    .line 723
    .line 724
    move-result p1

    .line 725
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object p2

    .line 729
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->deleteDataInterfaceRequest(SLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 730
    .line 731
    .line 732
    move-result-object p0

    .line 733
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 740
    .line 741
    .line 742
    return-void

    .line 743
    :pswitch_13
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 747
    .line 748
    .line 749
    move-result p1

    .line 750
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object p2

    .line 754
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->createDataInterfaceRequest(SLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 755
    .line 756
    .line 757
    move-result-object p0

    .line 758
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 765
    .line 766
    .line 767
    return-void

    .line 768
    :pswitch_14
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 772
    .line 773
    .line 774
    move-result p1

    .line 775
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;

    .line 776
    .line 777
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;-><init>()V

    .line 778
    .line 779
    .line 780
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 781
    .line 782
    .line 783
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->transmitFollowupRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTransmitFollowupRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 784
    .line 785
    .line 786
    move-result-object p0

    .line 787
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 794
    .line 795
    .line 796
    return-void

    .line 797
    :pswitch_15
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 801
    .line 802
    .line 803
    move-result p1

    .line 804
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 805
    .line 806
    .line 807
    move-result p2

    .line 808
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->stopSubscribeRequest(SB)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 809
    .line 810
    .line 811
    move-result-object p0

    .line 812
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 816
    .line 817
    .line 818
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 819
    .line 820
    .line 821
    return-void

    .line 822
    :pswitch_16
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 826
    .line 827
    .line 828
    move-result p1

    .line 829
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;

    .line 830
    .line 831
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;-><init>()V

    .line 832
    .line 833
    .line 834
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 835
    .line 836
    .line 837
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->startSubscribeRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanSubscribeRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 838
    .line 839
    .line 840
    move-result-object p0

    .line 841
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 848
    .line 849
    .line 850
    return-void

    .line 851
    :pswitch_17
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 855
    .line 856
    .line 857
    move-result p1

    .line 858
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 859
    .line 860
    .line 861
    move-result p2

    .line 862
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->stopPublishRequest(SB)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 863
    .line 864
    .line 865
    move-result-object p0

    .line 866
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 873
    .line 874
    .line 875
    return-void

    .line 876
    :pswitch_18
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 880
    .line 881
    .line 882
    move-result p1

    .line 883
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;

    .line 884
    .line 885
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;-><init>()V

    .line 886
    .line 887
    .line 888
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 889
    .line 890
    .line 891
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->startPublishRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 892
    .line 893
    .line 894
    move-result-object p0

    .line 895
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 902
    .line 903
    .line 904
    return-void

    .line 905
    :pswitch_19
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 909
    .line 910
    .line 911
    move-result p1

    .line 912
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->disableRequest(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 913
    .line 914
    .line 915
    move-result-object p0

    .line 916
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 917
    .line 918
    .line 919
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 923
    .line 924
    .line 925
    return-void

    .line 926
    :pswitch_1a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 930
    .line 931
    .line 932
    move-result p1

    .line 933
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    .line 934
    .line 935
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    .line 936
    .line 937
    .line 938
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 939
    .line 940
    .line 941
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->configRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 942
    .line 943
    .line 944
    move-result-object p0

    .line 945
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 952
    .line 953
    .line 954
    return-void

    .line 955
    :pswitch_1b
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 959
    .line 960
    .line 961
    move-result p1

    .line 962
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;

    .line 963
    .line 964
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;-><init>()V

    .line 965
    .line 966
    .line 967
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 968
    .line 969
    .line 970
    invoke-interface {p0, p1, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->enableRequest(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanEnableRequest;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 971
    .line 972
    .line 973
    move-result-object p0

    .line 974
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 978
    .line 979
    .line 980
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 981
    .line 982
    .line 983
    return-void

    .line 984
    :pswitch_1c
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    .line 986
    .line 987
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 988
    .line 989
    .line 990
    move-result p1

    .line 991
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->getCapabilitiesRequest(S)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 992
    .line 993
    .line 994
    move-result-object p0

    .line 995
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 996
    .line 997
    .line 998
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1002
    .line 1003
    .line 1004
    return-void

    .line 1005
    :pswitch_1d
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 1009
    .line 1010
    .line 1011
    move-result-object p1

    .line 1012
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;

    .line 1013
    .line 1014
    .line 1015
    move-result-object p1

    .line 1016
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 1017
    .line 1018
    .line 1019
    move-result-object p0

    .line 1020
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1027
    .line 1028
    .line 1029
    return-void

    .line 1030
    :pswitch_1e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    .line 1032
    .line 1033
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub$2;

    .line 1034
    .line 1035
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    .line 1036
    .line 1037
    .line 1038
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getNameCallback;)V

    .line 1039
    .line 1040
    .line 1041
    return-void

    .line 1042
    :pswitch_1f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub$1;

    .line 1046
    .line 1047
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;Landroid/os/HwParcel;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiIface$getTypeCallback;)V

    .line 1051
    .line 1052
    .line 1053
    return-void

    .line 1054
    nop

    .line 1055
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

    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
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
    const-string v0, "android.hardware.wifi@1.6::IWifiNanIface"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/IWifiNanIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
