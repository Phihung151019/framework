.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;
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
        -0x2et
        -0x61t
        -0x1at
        0x29t
        0x73t
        -0x3ct
        -0x65t
        0x6ft
        -0x5ct
        0xet
        -0x4bt
        0x6ct
        0x28t
        0x56t
        0x7et
        0x37t
        -0x3ct
        -0x45t
        -0x14t
        0x1t
        0x5ft
        -0xbt
        -0x6ft
        0x11t
        -0x13t
        -0x6t
        -0x1ct
        0x46t
        0x30t
        0x1dt
        -0x40t
        0x6dt
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
        0x12t
        0x2t
        0x11t
        0x37t
        0x1ft
        -0x23t
        0x29t
        -0x5t
        0x13t
        0x48t
        0x37t
        0x7t
        0x1dt
        0x43t
        0x2at
        0x30t
        0x2dt
        0x7bt
        0x60t
        -0x17t
        -0x47t
        0x5at
        -0xat
        0x11t
        -0x23t
        -0x73t
        -0x22t
        -0x7at
        -0x43t
        0x1ft
        0x77t
        -0x12t
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
        0x49t
        0x7t
        0x41t
        0x3t
        0x38t
        -0x3bt
        -0x18t
        -0x25t
        -0x12t
        -0x3ct
        -0x4bt
        -0x13t
        -0x3et
        0x60t
        -0x72t
        -0x5dt
        0x23t
        -0xbt
        0x56t
        0x19t
        0x45t
        -0x8t
        -0x7ft
        0xat
        -0x8t
        0x18t
        0x10t
        -0x3ct
        0x7bt
        0x1t
        -0x6ft
        -0x7ct
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
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v2, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface"

    .line 8
    .line 9
    const-string v3, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    .line 10
    .line 11
    const-string v4, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

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
    const-string p0, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface"

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
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v7, p3

    .line 6
    .line 7
    const-string v2, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    .line 8
    .line 9
    const-wide/16 v3, 0x8

    .line 10
    .line 11
    const-string v5, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface"

    .line 12
    .line 13
    const-string v6, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 14
    .line 15
    const-wide/16 v8, 0x6

    .line 16
    .line 17
    const-wide/16 v10, 0x0

    .line 18
    .line 19
    const/4 v12, 0x6

    .line 20
    const-string v13, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 21
    .line 22
    const/4 v14, 0x0

    .line 23
    packed-switch p1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    const-string v2, "android.hidl.base@1.0::IBase"

    .line 27
    .line 28
    sparse-switch p1, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :sswitch_0
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->notifySyspropsChanged()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :sswitch_1
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :sswitch_2
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->ping()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :sswitch_3
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->setHALInstrumentation()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :sswitch_4
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 84
    .line 85
    .line 86
    new-instance v1, Landroid/os/HwBlob;

    .line 87
    .line 88
    const/16 v2, 0x10

    .line 89
    .line 90
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 98
    .line 99
    .line 100
    const-wide/16 v3, 0xc

    .line 101
    .line 102
    invoke-virtual {v1, v3, v4, v14}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 103
    .line 104
    .line 105
    new-instance v3, Landroid/os/HwBlob;

    .line 106
    .line 107
    mul-int/lit8 v4, v2, 0x20

    .line 108
    .line 109
    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 110
    .line 111
    .line 112
    :goto_0
    if-ge v14, v2, :cond_1

    .line 113
    .line 114
    mul-int/lit8 v4, v14, 0x20

    .line 115
    .line 116
    int-to-long v4, v4

    .line 117
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, [B

    .line 122
    .line 123
    if-eqz v6, :cond_0

    .line 124
    .line 125
    array-length v8, v6

    .line 126
    const/16 v9, 0x20

    .line 127
    .line 128
    if-ne v8, v9, :cond_0

    .line 129
    .line 130
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 131
    .line 132
    .line 133
    add-int/lit8 v14, v14, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    const-string v1, "Array element is not of the expected length"

    .line 139
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_1
    invoke-virtual {v1, v10, v11, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :sswitch_5
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :sswitch_6
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :sswitch_7
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_0
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const/4 v2, 0x4

    .line 213
    new-array v3, v2, [B

    .line 214
    .line 215
    const-wide/16 v4, 0x4

    .line 216
    .line 217
    invoke-virtual {v1, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1, v10, v11, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v0, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;->setWfdR2DeviceInfo([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :pswitch_1
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;->registerCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :pswitch_2
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$14;

    .line 267
    .line 268
    invoke-direct {v1, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 269
    .line 270
    .line 271
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;->getEdmg(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$getEdmgCallback;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :pswitch_3
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface;->setEdmg(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :pswitch_4
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;->setMacRandomization(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :pswitch_5
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    move-object v3, v2

    .line 325
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    move-object v4, v3

    .line 330
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    move-object v5, v4

    .line 335
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    move-object v6, v5

    .line 340
    new-array v5, v12, [B

    .line 341
    .line 342
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 343
    .line 344
    .line 345
    move-result-object v8

    .line 346
    invoke-virtual {v8, v10, v11, v5, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 347
    .line 348
    .line 349
    move-object v15, v1

    .line 350
    move-object v1, v6

    .line 351
    invoke-virtual {v15}, Landroid/os/HwParcel;->readBool()Z

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    invoke-interface/range {v0 .. v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;->addGroup_1_2(Ljava/util/ArrayList;Ljava/lang/String;ZI[BZ)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-static {v7, v14, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :pswitch_6
    move-object v15, v1

    .line 364
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->saveConfig()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :pswitch_7
    move-object v15, v1

    .line 382
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverInitiation(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :pswitch_8
    move-object v15, v1

    .line 404
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 422
    .line 423
    .line 424
    return-void

    .line 425
    :pswitch_9
    move-object v15, v1

    .line 426
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$13;

    .line 430
    .line 431
    invoke-direct {v1, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 432
    .line 433
    .line 434
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverSelectMessage(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :pswitch_a
    move-object v15, v1

    .line 439
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$12;

    .line 443
    .line 444
    invoke-direct {v1, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 445
    .line 446
    .line 447
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverRequestMessage(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V

    .line 448
    .line 449
    .line 450
    return-void

    .line 451
    :pswitch_b
    move-object v15, v1

    .line 452
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    new-array v1, v12, [B

    .line 456
    .line 457
    invoke-virtual {v15, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v2, v10, v11, v1, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 462
    .line 463
    .line 464
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWfdDeviceInfo([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :pswitch_c
    move-object v15, v1

    .line 479
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v15}, Landroid/os/HwParcel;->readBool()Z

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->enableWfd(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 497
    .line 498
    .line 499
    return-void

    .line 500
    :pswitch_d
    move-object v15, v1

    .line 501
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelWps(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 519
    .line 520
    .line 521
    return-void

    .line 522
    :pswitch_e
    move-object v15, v1

    .line 523
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    new-array v2, v12, [B

    .line 531
    .line 532
    invoke-virtual {v15, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 537
    .line 538
    .line 539
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$11;

    .line 540
    .line 541
    invoke-direct {v3, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 542
    .line 543
    .line 544
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinDisplay(Ljava/lang/String;[BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V

    .line 545
    .line 546
    .line 547
    return-void

    .line 548
    :pswitch_f
    move-object v15, v1

    .line 549
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 571
    .line 572
    .line 573
    return-void

    .line 574
    :pswitch_10
    move-object v15, v1

    .line 575
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    new-array v2, v12, [B

    .line 583
    .line 584
    invoke-virtual {v15, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 589
    .line 590
    .line 591
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPbc(Ljava/lang/String;[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-static {v7, v14, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 596
    .line 597
    .line 598
    return-void

    .line 599
    :pswitch_11
    move-object v15, v1

    .line 600
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt8()B

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setMiracastMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 618
    .line 619
    .line 620
    return-void

    .line 621
    :pswitch_12
    move-object v15, v1

    .line 622
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt64()J

    .line 626
    .line 627
    .line 628
    move-result-wide v1

    .line 629
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelServiceDiscovery(J)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 640
    .line 641
    .line 642
    return-void

    .line 643
    :pswitch_13
    move-object v15, v1

    .line 644
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    new-array v1, v12, [B

    .line 648
    .line 649
    invoke-virtual {v15, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    invoke-virtual {v2, v10, v11, v1, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 657
    .line 658
    .line 659
    move-result-object v2

    .line 660
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$10;

    .line 661
    .line 662
    invoke-direct {v3, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 663
    .line 664
    .line 665
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->requestServiceDiscovery([BLjava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V

    .line 666
    .line 667
    .line 668
    return-void

    .line 669
    :pswitch_14
    move-object v15, v1

    .line 670
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flushServices()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 684
    .line 685
    .line 686
    return-void

    .line 687
    :pswitch_15
    move-object v15, v1

    .line 688
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 692
    .line 693
    .line 694
    move-result v1

    .line 695
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v2

    .line 699
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeUpnpService(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 710
    .line 711
    .line 712
    return-void

    .line 713
    :pswitch_16
    move-object v15, v1

    .line 714
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addUpnpService(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 733
    .line 734
    .line 735
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 736
    .line 737
    .line 738
    return-void

    .line 739
    :pswitch_17
    move-object v15, v1

    .line 740
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeBonjourService(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 752
    .line 753
    .line 754
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 758
    .line 759
    .line 760
    return-void

    .line 761
    :pswitch_18
    move-object v15, v1

    .line 762
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 784
    .line 785
    .line 786
    return-void

    .line 787
    :pswitch_19
    move-object v15, v1

    .line 788
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    new-array v1, v12, [B

    .line 792
    .line 793
    invoke-virtual {v15, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    invoke-virtual {v2, v10, v11, v1, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 798
    .line 799
    .line 800
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$9;

    .line 801
    .line 802
    invoke-direct {v2, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 803
    .line 804
    .line 805
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getGroupCapability([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V

    .line 806
    .line 807
    .line 808
    return-void

    .line 809
    :pswitch_1a
    move-object v15, v1

    .line 810
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    new-array v1, v12, [B

    .line 814
    .line 815
    invoke-virtual {v15, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 816
    .line 817
    .line 818
    move-result-object v2

    .line 819
    invoke-virtual {v2, v10, v11, v1, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 820
    .line 821
    .line 822
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$8;

    .line 823
    .line 824
    invoke-direct {v2, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 825
    .line 826
    .line 827
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getSsid([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V

    .line 828
    .line 829
    .line 830
    return-void

    .line 831
    :pswitch_1b
    move-object v15, v1

    .line 832
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    invoke-static {v15}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    .line 836
    .line 837
    .line 838
    move-result-object v1

    .line 839
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setDisallowedFrequencies(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-static {v7, v14, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 844
    .line 845
    .line 846
    return-void

    .line 847
    :pswitch_1c
    move-object v15, v1

    .line 848
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 852
    .line 853
    .line 854
    move-result v1

    .line 855
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 856
    .line 857
    .line 858
    move-result v2

    .line 859
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setListenChannel(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 870
    .line 871
    .line 872
    return-void

    .line 873
    :pswitch_1d
    move-object v15, v1

    .line 874
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 878
    .line 879
    .line 880
    move-result v1

    .line 881
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 882
    .line 883
    .line 884
    move-result v2

    .line 885
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->configureExtListen(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 890
    .line 891
    .line 892
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 896
    .line 897
    .line 898
    return-void

    .line 899
    :pswitch_1e
    move-object v15, v1

    .line 900
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 904
    .line 905
    .line 906
    move-result v1

    .line 907
    new-array v2, v12, [B

    .line 908
    .line 909
    invoke-virtual {v15, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 910
    .line 911
    .line 912
    move-result-object v3

    .line 913
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 914
    .line 915
    .line 916
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reinvoke(I[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-static {v7, v14, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 921
    .line 922
    .line 923
    return-void

    .line 924
    :pswitch_1f
    move-object v15, v1

    .line 925
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v1

    .line 932
    new-array v2, v12, [B

    .line 933
    .line 934
    invoke-virtual {v15, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 935
    .line 936
    .line 937
    move-result-object v3

    .line 938
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 939
    .line 940
    .line 941
    new-array v3, v12, [B

    .line 942
    .line 943
    invoke-virtual {v15, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 944
    .line 945
    .line 946
    move-result-object v4

    .line 947
    invoke-virtual {v4, v10, v11, v3, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 948
    .line 949
    .line 950
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->invite(Ljava/lang/String;[B[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    invoke-static {v7, v14, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 955
    .line 956
    .line 957
    return-void

    .line 958
    :pswitch_20
    move-object v15, v1

    .line 959
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    new-array v1, v12, [B

    .line 963
    .line 964
    invoke-virtual {v15, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 965
    .line 966
    .line 967
    move-result-object v2

    .line 968
    invoke-virtual {v2, v10, v11, v1, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 969
    .line 970
    .line 971
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reject([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 979
    .line 980
    .line 981
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 982
    .line 983
    .line 984
    return-void

    .line 985
    :pswitch_21
    move-object v15, v1

    .line 986
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v1

    .line 993
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeGroup(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1004
    .line 1005
    .line 1006
    return-void

    .line 1007
    :pswitch_22
    move-object v15, v1

    .line 1008
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v15}, Landroid/os/HwParcel;->readBool()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v1

    .line 1015
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 1016
    .line 1017
    .line 1018
    move-result v2

    .line 1019
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addGroup(ZI)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1030
    .line 1031
    .line 1032
    return-void

    .line 1033
    :pswitch_23
    move-object v15, v1

    .line 1034
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    new-array v1, v12, [B

    .line 1038
    .line 1039
    invoke-virtual {v15, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v2

    .line 1043
    invoke-virtual {v2, v10, v11, v1, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 1047
    .line 1048
    .line 1049
    move-result v2

    .line 1050
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->provisionDiscovery([BI)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1061
    .line 1062
    .line 1063
    return-void

    .line 1064
    :pswitch_24
    move-object v15, v1

    .line 1065
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelConnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1079
    .line 1080
    .line 1081
    return-void

    .line 1082
    :pswitch_25
    move-object v15, v1

    .line 1083
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    new-array v1, v12, [B

    .line 1087
    .line 1088
    invoke-virtual {v15, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v2

    .line 1092
    invoke-virtual {v2, v10, v11, v1, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 1096
    .line 1097
    .line 1098
    move-result v2

    .line 1099
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v3

    .line 1103
    invoke-virtual {v15}, Landroid/os/HwParcel;->readBool()Z

    .line 1104
    .line 1105
    .line 1106
    move-result v4

    .line 1107
    invoke-virtual {v15}, Landroid/os/HwParcel;->readBool()Z

    .line 1108
    .line 1109
    .line 1110
    move-result v5

    .line 1111
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 1112
    .line 1113
    .line 1114
    move-result v6

    .line 1115
    new-instance v8, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$7;

    .line 1116
    .line 1117
    invoke-direct {v8, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1118
    .line 1119
    .line 1120
    move-object v7, v8

    .line 1121
    invoke-interface/range {v0 .. v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->connect([BILjava/lang/String;ZZILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V

    .line 1122
    .line 1123
    .line 1124
    return-void

    .line 1125
    :pswitch_26
    move-object v15, v1

    .line 1126
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    .line 1128
    .line 1129
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flush()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v0

    .line 1133
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1140
    .line 1141
    .line 1142
    return-void

    .line 1143
    :pswitch_27
    move-object v15, v1

    .line 1144
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    .line 1146
    .line 1147
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->stopFind()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1158
    .line 1159
    .line 1160
    return-void

    .line 1161
    :pswitch_28
    move-object v15, v1

    .line 1162
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 1166
    .line 1167
    .line 1168
    move-result v1

    .line 1169
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->find(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v0

    .line 1173
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1180
    .line 1181
    .line 1182
    return-void

    .line 1183
    :pswitch_29
    move-object v15, v1

    .line 1184
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v1

    .line 1191
    invoke-virtual {v15}, Landroid/os/HwParcel;->readBool()Z

    .line 1192
    .line 1193
    .line 1194
    move-result v2

    .line 1195
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setPowerSave(Ljava/lang/String;Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v0

    .line 1199
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1206
    .line 1207
    .line 1208
    return-void

    .line 1209
    :pswitch_2a
    move-object v15, v1

    .line 1210
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v1

    .line 1217
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 1218
    .line 1219
    .line 1220
    move-result v2

    .line 1221
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setGroupIdle(Ljava/lang/String;I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v0

    .line 1225
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1232
    .line 1233
    .line 1234
    return-void

    .line 1235
    :pswitch_2b
    move-object v15, v1

    .line 1236
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v1

    .line 1243
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setSsidPostfix(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0

    .line 1247
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1248
    .line 1249
    .line 1250
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1254
    .line 1255
    .line 1256
    return-void

    .line 1257
    :pswitch_2c
    move-object v15, v1

    .line 1258
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$6;

    .line 1262
    .line 1263
    invoke-direct {v1, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1264
    .line 1265
    .line 1266
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getDeviceAddress(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V

    .line 1267
    .line 1268
    .line 1269
    return-void

    .line 1270
    :pswitch_2d
    move-object v15, v1

    .line 1271
    invoke-virtual {v15, v13}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v15}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v1

    .line 1278
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v1

    .line 1282
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v0

    .line 1286
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1293
    .line 1294
    .line 1295
    return-void

    .line 1296
    :pswitch_2e
    move-object v15, v1

    .line 1297
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt16()S

    .line 1301
    .line 1302
    .line 1303
    move-result v1

    .line 1304
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsConfigMethods(S)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1315
    .line 1316
    .line 1317
    return-void

    .line 1318
    :pswitch_2f
    move-object v15, v1

    .line 1319
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsSerialNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1337
    .line 1338
    .line 1339
    return-void

    .line 1340
    :pswitch_30
    move-object v15, v1

    .line 1341
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v1

    .line 1348
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v0

    .line 1352
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1359
    .line 1360
    .line 1361
    return-void

    .line 1362
    :pswitch_31
    move-object v15, v1

    .line 1363
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v1

    .line 1370
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v0

    .line 1374
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1378
    .line 1379
    .line 1380
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1381
    .line 1382
    .line 1383
    return-void

    .line 1384
    :pswitch_32
    move-object v15, v1

    .line 1385
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v1

    .line 1392
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsManufacturer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v0

    .line 1396
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1397
    .line 1398
    .line 1399
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1400
    .line 1401
    .line 1402
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1403
    .line 1404
    .line 1405
    return-void

    .line 1406
    :pswitch_33
    move-object v15, v1

    .line 1407
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    .line 1409
    .line 1410
    const/16 v1, 0x8

    .line 1411
    .line 1412
    new-array v2, v1, [B

    .line 1413
    .line 1414
    invoke-virtual {v15, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v3

    .line 1418
    invoke-virtual {v3, v10, v11, v2, v1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1419
    .line 1420
    .line 1421
    invoke-interface {v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceType([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v0

    .line 1425
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1426
    .line 1427
    .line 1428
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1432
    .line 1433
    .line 1434
    return-void

    .line 1435
    :pswitch_34
    move-object v15, v1

    .line 1436
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    .line 1438
    .line 1439
    invoke-virtual {v15}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v1

    .line 1443
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v0

    .line 1447
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1454
    .line 1455
    .line 1456
    return-void

    .line 1457
    :pswitch_35
    move-object v15, v1

    .line 1458
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1459
    .line 1460
    .line 1461
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$5;

    .line 1462
    .line 1463
    invoke-direct {v1, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1464
    .line 1465
    .line 1466
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->listNetworks(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    .line 1467
    .line 1468
    .line 1469
    return-void

    .line 1470
    :pswitch_36
    move-object v15, v1

    .line 1471
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 1475
    .line 1476
    .line 1477
    move-result v1

    .line 1478
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$4;

    .line 1479
    .line 1480
    invoke-direct {v2, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1481
    .line 1482
    .line 1483
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getNetwork(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    .line 1484
    .line 1485
    .line 1486
    return-void

    .line 1487
    :pswitch_37
    move-object v15, v1

    .line 1488
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1489
    .line 1490
    .line 1491
    invoke-virtual {v15}, Landroid/os/HwParcel;->readInt32()I

    .line 1492
    .line 1493
    .line 1494
    move-result v1

    .line 1495
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->removeNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v0

    .line 1499
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1500
    .line 1501
    .line 1502
    invoke-virtual {v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1503
    .line 1504
    .line 1505
    invoke-virtual {v7}, Landroid/os/HwParcel;->send()V

    .line 1506
    .line 1507
    .line 1508
    return-void

    .line 1509
    :pswitch_38
    move-object v15, v1

    .line 1510
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1511
    .line 1512
    .line 1513
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$3;

    .line 1514
    .line 1515
    invoke-direct {v1, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1516
    .line 1517
    .line 1518
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->addNetwork(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    .line 1519
    .line 1520
    .line 1521
    return-void

    .line 1522
    :pswitch_39
    move-object v15, v1

    .line 1523
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1524
    .line 1525
    .line 1526
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$2;

    .line 1527
    .line 1528
    invoke-direct {v1, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1529
    .line 1530
    .line 1531
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    .line 1532
    .line 1533
    .line 1534
    return-void

    .line 1535
    :pswitch_3a
    move-object v15, v1

    .line 1536
    invoke-virtual {v15, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    .line 1538
    .line 1539
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$1;

    .line 1540
    .line 1541
    invoke-direct {v1, v0, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1542
    .line 1543
    .line 1544
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    .line 1545
    .line 1546
    .line 1547
    return-void

    .line 1548
    nop

    .line 1549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
        :pswitch_38
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

    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
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
    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIface"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
