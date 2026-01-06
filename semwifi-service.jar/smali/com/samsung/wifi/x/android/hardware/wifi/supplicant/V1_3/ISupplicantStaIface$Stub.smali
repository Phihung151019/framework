.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;
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
        0x15t
        -0x63t
        0x48t
        -0x37t
        -0x11t
        -0x48t
        -0x7ft
        -0xct
        0x4dt
        0x5dt
        -0x13t
        -0x58t
        -0x6ft
        0x7bt
        -0x77t
        -0x5t
        0x4dt
        -0x5et
        0x68t
        0x37t
        -0x10t
        0x19t
        0x44t
        0x6dt
        0x6dt
        0x73t
        -0x49t
        0x3et
        -0x5bt
        0x1t
        0xet
        -0x36t
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
        0x7et
        -0x2t
        0x2bt
        0x5t
        0x7et
        -0x61t
        -0x6dt
        -0x79t
        -0x4dt
        0x50t
        0xet
        0x67t
        -0x51t
        -0x69t
        -0x6ct
        0x2at
        -0x59t
        -0x38t
        0x0t
        -0x72t
        0x6et
        -0x19t
        -0x28t
        -0x24t
        -0x56t
        -0x1ct
        0x10t
        0x7ft
        -0x26t
        -0x7ct
        0x1t
        0x6bt
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
        0x21t
        0x75t
        0x7dt
        0xet
        0x5dt
        -0x2ct
        -0x49t
        -0x1ct
        -0x43t
        -0x68t
        0x1at
        0x4at
        0x20t
        0x53t
        0x1bt
        -0x36t
        0x3ct
        0x32t
        0x27t
        0x1at
        -0x27t
        0x77t
        0x7bt
        0x17t
        -0x49t
        0x4et
        -0x4bt
        -0x5ft
        -0x16t
        0x50t
        -0x7dt
        -0x7ct
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
        0x77t
        0x52t
        -0x1ft
        -0x22t
        -0x6dt
        -0x56t
        -0xbt
        -0x2t
        -0x2dt
        0x70t
        0x11t
        -0x3et
        0x19t
        -0x54t
        0x24t
        0x70t
        0x69t
        -0xat
        -0x51t
        0x32t
        0xbt
        0x8t
        0x10t
        -0x26t
        -0x57t
        -0x7bt
        0x10t
        0x58t
        0x4at
        0x10t
        -0x19t
        -0x4ct
    .end array-data

    :array_4
    .array-data 1
        0x35t
        -0x46t
        0x7bt
        -0x33t
        -0xft
        -0x71t
        0x24t
        -0x58t
        0x66t
        -0x59t
        -0x1bt
        0x42t
        -0x6bt
        0x48t
        -0x10t
        0x67t
        0x68t
        -0x45t
        0x20t
        -0x5et
        0x57t
        -0x9t
        0x5bt
        0x10t
        -0x5dt
        -0x69t
        -0x3ct
        -0x28t
        0x25t
        -0x11t
        -0x7ct
        0x38t
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
    const-string v4, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 4
    .line 5
    const-string v5, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v0, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIface"

    .line 8
    .line 9
    const-string v1, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIface"

    .line 10
    .line 11
    const-string v2, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIface"

    .line 12
    .line 13
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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
    const-string p0, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIface"

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
    const-wide/16 v0, 0x8

    .line 2
    .line 3
    const-string p4, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIface"

    .line 4
    .line 5
    const-string v2, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIface"

    .line 6
    .line 7
    const-wide/16 v3, 0x6

    .line 8
    .line 9
    const-wide/16 v5, 0x0

    .line 10
    .line 11
    const-string v7, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 12
    .line 13
    const/4 v8, 0x6

    .line 14
    const-string v9, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    .line 15
    .line 16
    const/4 v10, 0x0

    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const-string p4, "android.hidl.base@1.0::IBase"

    .line 21
    .line 22
    sparse-switch p1, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->notifySyspropsChanged()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->ping()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->setHALInstrumentation()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Landroid/os/HwBlob;

    .line 81
    .line 82
    const/16 p2, 0x10

    .line 83
    .line 84
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 92
    .line 93
    .line 94
    const-wide/16 v0, 0xc

    .line 95
    .line 96
    invoke-virtual {p1, v0, v1, v10}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 97
    .line 98
    .line 99
    new-instance p4, Landroid/os/HwBlob;

    .line 100
    .line 101
    mul-int/lit8 v0, p2, 0x20

    .line 102
    .line 103
    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 104
    .line 105
    .line 106
    :goto_0
    if-ge v10, p2, :cond_1

    .line 107
    .line 108
    mul-int/lit8 v0, v10, 0x20

    .line 109
    .line 110
    int-to-long v0, v0

    .line 111
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, [B

    .line 116
    .line 117
    if-eqz v2, :cond_0

    .line 118
    .line 119
    array-length v3, v2

    .line 120
    const/16 v4, 0x20

    .line 121
    .line 122
    if-ne v3, v4, :cond_0

    .line 123
    .line 124
    invoke-virtual {p4, v0, v1, v2}, Landroid/os/HwBlob;->putInt8Array(J[B)V

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
    invoke-virtual {p1, v5, v6, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

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
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

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
    move-result-object p2

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

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
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

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
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-array p1, v8, [B

    .line 207
    .line 208
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 209
    .line 210
    .line 211
    move-result-object p4

    .line 212
    invoke-virtual {p4, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->filsHlpAddRequest([BLjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

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
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->filsHlpFlushRequest()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$13;

    .line 254
    .line 255
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->getKeyMgmtCapabilities_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$getKeyMgmtCapabilities_1_3Callback;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->setMboCellularDataStatus(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$12;

    .line 287
    .line 288
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 289
    .line 290
    .line 291
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->getWpaDriverCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$getWpaDriverCapabilitiesCallback;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$11;

    .line 299
    .line 300
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 301
    .line 302
    .line 303
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->getConnectionCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$getConnectionCapabilitiesCallback;)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->registerCallback_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :pswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->stopDppInitiator()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :pswitch_8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 357
    .line 358
    .line 359
    move-result p2

    .line 360
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->startDppEnrolleeInitiator(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :pswitch_9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 382
    .line 383
    .line 384
    move-result v2

    .line 385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 398
    .line 399
    .line 400
    move-result v6

    .line 401
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 402
    .line 403
    .line 404
    move-result v7

    .line 405
    move-object v0, p0

    .line 406
    invoke-interface/range {v0 .. v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->startDppConfiguratorInitiator(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    invoke-static {p3, v10, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    :pswitch_a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->removeDppUri(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :pswitch_b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$10;

    .line 443
    .line 444
    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 445
    .line 446
    .line 447
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->addDppPeerUri(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$addDppPeerUriCallback;)V

    .line 448
    .line 449
    .line 450
    return-void

    .line 451
    :pswitch_c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$9;

    .line 455
    .line 456
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 457
    .line 458
    .line 459
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->getKeyMgmtCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$getKeyMgmtCapabilitiesCallback;)V

    .line 460
    .line 461
    .line 462
    return-void

    .line 463
    :pswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->registerCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 475
    .line 476
    .line 477
    move-result-object p0

    .line 478
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 485
    .line 486
    .line 487
    return-void

    .line 488
    :pswitch_e
    const-string p1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIface"

    .line 489
    .line 490
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;->registerCallback_1_1(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 502
    .line 503
    .line 504
    move-result-object p0

    .line 505
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 512
    .line 513
    .line 514
    return-void

    .line 515
    :pswitch_f
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->enableAutoReconnect(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 523
    .line 524
    .line 525
    move-result-object p0

    .line 526
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 533
    .line 534
    .line 535
    return-void

    .line 536
    :pswitch_10
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeExtRadioWork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 544
    .line 545
    .line 546
    move-result-object p0

    .line 547
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 554
    .line 555
    .line 556
    return-void

    .line 557
    :pswitch_11
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 565
    .line 566
    .line 567
    move-result p4

    .line 568
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 569
    .line 570
    .line 571
    move-result p2

    .line 572
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$8;

    .line 573
    .line 574
    invoke-direct {v0, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 575
    .line 576
    .line 577
    invoke-interface {p0, p1, p4, p2, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addExtRadioWork(Ljava/lang/String;IILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$addExtRadioWorkCallback;)V

    .line 578
    .line 579
    .line 580
    return-void

    .line 581
    :pswitch_12
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 585
    .line 586
    .line 587
    move-result p1

    .line 588
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setExternalSim(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 589
    .line 590
    .line 591
    move-result-object p0

    .line 592
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 599
    .line 600
    .line 601
    return-void

    .line 602
    :pswitch_13
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->cancelWps()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 606
    .line 607
    .line 608
    move-result-object p0

    .line 609
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 616
    .line 617
    .line 618
    return-void

    .line 619
    :pswitch_14
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    new-array p1, v8, [B

    .line 623
    .line 624
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 625
    .line 626
    .line 627
    move-result-object p2

    .line 628
    invoke-virtual {p2, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 629
    .line 630
    .line 631
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$7;

    .line 632
    .line 633
    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 634
    .line 635
    .line 636
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinDisplay([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;)V

    .line 637
    .line 638
    .line 639
    return-void

    .line 640
    :pswitch_15
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinKeypad(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 648
    .line 649
    .line 650
    move-result-object p0

    .line 651
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 658
    .line 659
    .line 660
    return-void

    .line 661
    :pswitch_16
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    new-array p1, v8, [B

    .line 665
    .line 666
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 667
    .line 668
    .line 669
    move-result-object p2

    .line 670
    invoke-virtual {p2, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 671
    .line 672
    .line 673
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPbc([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 674
    .line 675
    .line 676
    move-result-object p0

    .line 677
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 684
    .line 685
    .line 686
    return-void

    .line 687
    :pswitch_17
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    new-array p1, v8, [B

    .line 691
    .line 692
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 693
    .line 694
    .line 695
    move-result-object p4

    .line 696
    invoke-virtual {p4, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object p2

    .line 703
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsRegistrar([BLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 704
    .line 705
    .line 706
    move-result-object p0

    .line 707
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 714
    .line 715
    .line 716
    return-void

    .line 717
    :pswitch_18
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    const/4 p1, 0x2

    .line 721
    new-array p4, p1, [B

    .line 722
    .line 723
    const-wide/16 v0, 0x2

    .line 724
    .line 725
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 726
    .line 727
    .line 728
    move-result-object p2

    .line 729
    invoke-virtual {p2, v5, v6, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 730
    .line 731
    .line 732
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setCountryCode([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 733
    .line 734
    .line 735
    move-result-object p0

    .line 736
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 743
    .line 744
    .line 745
    return-void

    .line 746
    :pswitch_19
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 750
    .line 751
    .line 752
    move-result p1

    .line 753
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setSuspendModeEnabled(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 754
    .line 755
    .line 756
    move-result-object p0

    .line 757
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 764
    .line 765
    .line 766
    return-void

    .line 767
    :pswitch_1a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 771
    .line 772
    .line 773
    move-result p1

    .line 774
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceScanModeEnabled(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 775
    .line 776
    .line 777
    move-result-object p0

    .line 778
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 785
    .line 786
    .line 787
    return-void

    .line 788
    :pswitch_1b
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 792
    .line 793
    .line 794
    move-result p1

    .line 795
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 796
    .line 797
    .line 798
    move-result-object p0

    .line 799
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 806
    .line 807
    .line 808
    return-void

    .line 809
    :pswitch_1c
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 813
    .line 814
    .line 815
    move-result p1

    .line 816
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeRxFilter(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 817
    .line 818
    .line 819
    move-result-object p0

    .line 820
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 821
    .line 822
    .line 823
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 827
    .line 828
    .line 829
    return-void

    .line 830
    :pswitch_1d
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 834
    .line 835
    .line 836
    move-result p1

    .line 837
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addRxFilter(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 838
    .line 839
    .line 840
    move-result-object p0

    .line 841
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 842
    .line 843
    .line 844
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 848
    .line 849
    .line 850
    return-void

    .line 851
    :pswitch_1e
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->stopRxFilter()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 855
    .line 856
    .line 857
    move-result-object p0

    .line 858
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 865
    .line 866
    .line 867
    return-void

    .line 868
    :pswitch_1f
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startRxFilter()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 872
    .line 873
    .line 874
    move-result-object p0

    .line 875
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 882
    .line 883
    .line 884
    return-void

    .line 885
    :pswitch_20
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$6;

    .line 889
    .line 890
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 891
    .line 892
    .line 893
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->getMacAddress(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;)V

    .line 894
    .line 895
    .line 896
    return-void

    .line 897
    :pswitch_21
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    new-array p1, v8, [B

    .line 901
    .line 902
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 903
    .line 904
    .line 905
    move-result-object p4

    .line 906
    invoke-virtual {p4, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object p2

    .line 913
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateHs20IconQuery([BLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 914
    .line 915
    .line 916
    move-result-object p0

    .line 917
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 924
    .line 925
    .line 926
    return-void

    .line 927
    :pswitch_22
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    new-array p1, v8, [B

    .line 931
    .line 932
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 933
    .line 934
    .line 935
    move-result-object p4

    .line 936
    invoke-virtual {p4, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    .line 940
    .line 941
    .line 942
    move-result-object p4

    .line 943
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    .line 944
    .line 945
    .line 946
    move-result-object p2

    .line 947
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 948
    .line 949
    .line 950
    move-result-object p0

    .line 951
    invoke-static {p3, v10, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 952
    .line 953
    .line 954
    return-void

    .line 955
    :pswitch_23
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    new-array p1, v8, [B

    .line 959
    .line 960
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 961
    .line 962
    .line 963
    move-result-object p2

    .line 964
    invoke-virtual {p2, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 965
    .line 966
    .line 967
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsTeardown([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 968
    .line 969
    .line 970
    move-result-object p0

    .line 971
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 972
    .line 973
    .line 974
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 975
    .line 976
    .line 977
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 978
    .line 979
    .line 980
    return-void

    .line 981
    :pswitch_24
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    new-array p1, v8, [B

    .line 985
    .line 986
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 987
    .line 988
    .line 989
    move-result-object p2

    .line 990
    invoke-virtual {p2, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 991
    .line 992
    .line 993
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsSetup([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 994
    .line 995
    .line 996
    move-result-object p0

    .line 997
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1004
    .line 1005
    .line 1006
    return-void

    .line 1007
    :pswitch_25
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    new-array p1, v8, [B

    .line 1011
    .line 1012
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 1013
    .line 1014
    .line 1015
    move-result-object p2

    .line 1016
    invoke-virtual {p2, v5, v6, p1, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1017
    .line 1018
    .line 1019
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsDiscover([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1020
    .line 1021
    .line 1022
    move-result-object p0

    .line 1023
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1030
    .line 1031
    .line 1032
    return-void

    .line 1033
    :pswitch_26
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 1037
    .line 1038
    .line 1039
    move-result p1

    .line 1040
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setPowerSave(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1041
    .line 1042
    .line 1043
    move-result-object p0

    .line 1044
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1051
    .line 1052
    .line 1053
    return-void

    .line 1054
    :pswitch_27
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    .line 1056
    .line 1057
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->disconnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1058
    .line 1059
    .line 1060
    move-result-object p0

    .line 1061
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1068
    .line 1069
    .line 1070
    return-void

    .line 1071
    :pswitch_28
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reconnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1075
    .line 1076
    .line 1077
    move-result-object p0

    .line 1078
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1085
    .line 1086
    .line 1087
    return-void

    .line 1088
    :pswitch_29
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    .line 1090
    .line 1091
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reassociate()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1092
    .line 1093
    .line 1094
    move-result-object p0

    .line 1095
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1102
    .line 1103
    .line 1104
    return-void

    .line 1105
    :pswitch_2a
    invoke-virtual {p2, v9}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 1109
    .line 1110
    .line 1111
    move-result-object p1

    .line 1112
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

    .line 1113
    .line 1114
    .line 1115
    move-result-object p1

    .line 1116
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1117
    .line 1118
    .line 1119
    move-result-object p0

    .line 1120
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1127
    .line 1128
    .line 1129
    return-void

    .line 1130
    :pswitch_2b
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 1134
    .line 1135
    .line 1136
    move-result p1

    .line 1137
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsConfigMethods(S)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1138
    .line 1139
    .line 1140
    move-result-object p0

    .line 1141
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1148
    .line 1149
    .line 1150
    return-void

    .line 1151
    :pswitch_2c
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object p1

    .line 1158
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsSerialNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1159
    .line 1160
    .line 1161
    move-result-object p0

    .line 1162
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1169
    .line 1170
    .line 1171
    return-void

    .line 1172
    :pswitch_2d
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object p1

    .line 1179
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1180
    .line 1181
    .line 1182
    move-result-object p0

    .line 1183
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1190
    .line 1191
    .line 1192
    return-void

    .line 1193
    :pswitch_2e
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1197
    .line 1198
    .line 1199
    move-result-object p1

    .line 1200
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1201
    .line 1202
    .line 1203
    move-result-object p0

    .line 1204
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1211
    .line 1212
    .line 1213
    return-void

    .line 1214
    :pswitch_2f
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    move-result-object p1

    .line 1221
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsManufacturer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1222
    .line 1223
    .line 1224
    move-result-object p0

    .line 1225
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1232
    .line 1233
    .line 1234
    return-void

    .line 1235
    :pswitch_30
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1236
    .line 1237
    .line 1238
    const/16 p1, 0x8

    .line 1239
    .line 1240
    new-array p4, p1, [B

    .line 1241
    .line 1242
    invoke-virtual {p2, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 1243
    .line 1244
    .line 1245
    move-result-object p2

    .line 1246
    invoke-virtual {p2, v5, v6, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1247
    .line 1248
    .line 1249
    invoke-interface {p0, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceType([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1250
    .line 1251
    .line 1252
    move-result-object p0

    .line 1253
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1260
    .line 1261
    .line 1262
    return-void

    .line 1263
    :pswitch_31
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1267
    .line 1268
    .line 1269
    move-result-object p1

    .line 1270
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1271
    .line 1272
    .line 1273
    move-result-object p0

    .line 1274
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1281
    .line 1282
    .line 1283
    return-void

    .line 1284
    :pswitch_32
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    .line 1286
    .line 1287
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$5;

    .line 1288
    .line 1289
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 1290
    .line 1291
    .line 1292
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->listNetworks(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    .line 1293
    .line 1294
    .line 1295
    return-void

    .line 1296
    :pswitch_33
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 1300
    .line 1301
    .line 1302
    move-result p1

    .line 1303
    new-instance p2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$4;

    .line 1304
    .line 1305
    invoke-direct {p2, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 1306
    .line 1307
    .line 1308
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getNetwork(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    .line 1309
    .line 1310
    .line 1311
    return-void

    .line 1312
    :pswitch_34
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 1316
    .line 1317
    .line 1318
    move-result p1

    .line 1319
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->removeNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1320
    .line 1321
    .line 1322
    move-result-object p0

    .line 1323
    invoke-virtual {p3, v10}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1327
    .line 1328
    .line 1329
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1330
    .line 1331
    .line 1332
    return-void

    .line 1333
    :pswitch_35
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    .line 1335
    .line 1336
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$3;

    .line 1337
    .line 1338
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 1339
    .line 1340
    .line 1341
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->addNetwork(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    .line 1342
    .line 1343
    .line 1344
    return-void

    .line 1345
    :pswitch_36
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    .line 1347
    .line 1348
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$2;

    .line 1349
    .line 1350
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 1351
    .line 1352
    .line 1353
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    .line 1354
    .line 1355
    .line 1356
    return-void

    .line 1357
    :pswitch_37
    invoke-virtual {p2, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    .line 1359
    .line 1360
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$1;

    .line 1361
    .line 1362
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 1363
    .line 1364
    .line 1365
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    .line 1366
    .line 1367
    .line 1368
    return-void

    .line 1369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
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

    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
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
    const-string v0, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIface"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
