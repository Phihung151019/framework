.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;
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
        0x2t
        0x6bt
        -0x66t
        0x46t
        0x65t
        -0x72t
        -0x18t
        0x2bt
        0x15t
        0x4et
        -0x1at
        0x24t
        -0x53t
        -0x3dt
        0xat
        0x45t
        0x4ft
        0x64t
        0x1t
        0x23t
        0xdt
        -0x4bt
        -0x15t
        0x44t
        0x6et
        -0x53t
        0x42t
        -0x19t
        -0x11t
        0x51t
        -0x4t
        -0x80t
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

    :array_4
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

    :array_5
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
    const-string v5, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 4
    .line 5
    const-string v6, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicantStaIface"

    .line 8
    .line 9
    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIface"

    .line 10
    .line 11
    const-string v2, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIface"

    .line 12
    .line 13
    const-string v3, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIface"

    .line 14
    .line 15
    const-string v4, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

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
    const-string p0, "android.hardware.wifi.supplicant@1.4::ISupplicantStaIface"

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
    move-object/from16 v8, p3

    .line 6
    .line 7
    const-wide/16 v2, 0x8

    .line 8
    .line 9
    const-string v4, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIface"

    .line 10
    .line 11
    const-string v5, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIface"

    .line 12
    .line 13
    const-string v6, "android.hardware.wifi.supplicant@1.4::ISupplicantStaIface"

    .line 14
    .line 15
    const-wide/16 v9, 0x6

    .line 16
    .line 17
    const-string v7, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 18
    .line 19
    const-wide/16 v11, 0x0

    .line 20
    .line 21
    const/4 v13, 0x6

    .line 22
    const-string v14, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIface"

    .line 23
    .line 24
    const/4 v15, 0x0

    .line 25
    packed-switch p1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    const-string v4, "android.hidl.base@1.0::IBase"

    .line 29
    .line 30
    sparse-switch p1, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :sswitch_0
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;->notifySyspropsChanged()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :sswitch_1
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :sswitch_2
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;->ping()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :sswitch_3
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;->setHALInstrumentation()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :sswitch_4
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Landroid/os/HwBlob;

    .line 89
    .line 90
    const/16 v4, 0x10

    .line 91
    .line 92
    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 100
    .line 101
    .line 102
    const-wide/16 v2, 0xc

    .line 103
    .line 104
    invoke-virtual {v1, v2, v3, v15}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 105
    .line 106
    .line 107
    new-instance v2, Landroid/os/HwBlob;

    .line 108
    .line 109
    mul-int/lit8 v3, v4, 0x20

    .line 110
    .line 111
    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 112
    .line 113
    .line 114
    :goto_0
    if-ge v15, v4, :cond_1

    .line 115
    .line 116
    mul-int/lit8 v3, v15, 0x20

    .line 117
    .line 118
    int-to-long v5, v3

    .line 119
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, [B

    .line 124
    .line 125
    if-eqz v3, :cond_0

    .line 126
    .line 127
    array-length v7, v3

    .line 128
    const/16 v9, 0x20

    .line 129
    .line 130
    if-ne v7, v9, :cond_0

    .line 131
    .line 132
    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 133
    .line 134
    .line 135
    add-int/lit8 v15, v15, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string v1, "Array element is not of the expected length"

    .line 141
    .line 142
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :cond_1
    invoke-virtual {v1, v11, v12, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :sswitch_5
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :sswitch_6
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :sswitch_7
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_0
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;->stopDppResponder(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :pswitch_1
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;->startDppEnrolleeResponder(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :pswitch_2
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-array v2, v13, [B

    .line 257
    .line 258
    invoke-virtual {v1, v9, v10}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v3, v11, v12, v2, v13}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$16;

    .line 274
    .line 275
    invoke-direct {v4, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$16;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 276
    .line 277
    .line 278
    invoke-interface {v0, v2, v3, v1, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;->generateDppBootstrapInfoForResponder([BLjava/lang/String;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$generateDppBootstrapInfoForResponderCallback;)V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :pswitch_3
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$15;

    .line 286
    .line 287
    invoke-direct {v1, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$15;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 288
    .line 289
    .line 290
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;->getWpaDriverCapabilities_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$getWpaDriverCapabilities_1_4Callback;)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :pswitch_4
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    new-array v2, v13, [B

    .line 298
    .line 299
    invoke-virtual {v1, v9, v10}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v1, v11, v12, v2, v13}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;->initiateVenueUrlAnqpQuery([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :pswitch_5
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;->registerCallback_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :pswitch_6
    invoke-virtual {v1, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$14;

    .line 349
    .line 350
    invoke-direct {v1, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$14;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 351
    .line 352
    .line 353
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface;->getConnectionCapabilities_1_4(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$getConnectionCapabilities_1_4Callback;)V

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :pswitch_7
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    new-array v2, v13, [B

    .line 361
    .line 362
    invoke-virtual {v1, v9, v10}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v3, v11, v12, v2, v13}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-interface {v0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->filsHlpAddRequest([BLjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 384
    .line 385
    .line 386
    return-void

    .line 387
    :pswitch_8
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->filsHlpFlushRequest()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :pswitch_9
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$13;

    .line 408
    .line 409
    invoke-direct {v1, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 410
    .line 411
    .line 412
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->getKeyMgmtCapabilities_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$getKeyMgmtCapabilities_1_3Callback;)V

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    :pswitch_a
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->setMboCellularDataStatus(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 434
    .line 435
    .line 436
    return-void

    .line 437
    :pswitch_b
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$12;

    .line 441
    .line 442
    invoke-direct {v1, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 443
    .line 444
    .line 445
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->getWpaDriverCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$getWpaDriverCapabilitiesCallback;)V

    .line 446
    .line 447
    .line 448
    return-void

    .line 449
    :pswitch_c
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$11;

    .line 453
    .line 454
    invoke-direct {v1, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 455
    .line 456
    .line 457
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->getConnectionCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface$getConnectionCapabilitiesCallback;)V

    .line 458
    .line 459
    .line 460
    return-void

    .line 461
    :pswitch_d
    invoke-virtual {v1, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIface;->registerCallback_1_3(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 483
    .line 484
    .line 485
    return-void

    .line 486
    :pswitch_e
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->stopDppInitiator()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 500
    .line 501
    .line 502
    return-void

    .line 503
    :pswitch_f
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    invoke-interface {v0, v2, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->startDppEnrolleeInitiator(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 525
    .line 526
    .line 527
    return-void

    .line 528
    :pswitch_10
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v4

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    move-object/from16 v7, p2

    .line 552
    .line 553
    invoke-virtual {v7}, Landroid/os/HwParcel;->readInt32()I

    .line 554
    .line 555
    .line 556
    move-result v6

    .line 557
    invoke-virtual {v7}, Landroid/os/HwParcel;->readInt32()I

    .line 558
    .line 559
    .line 560
    move-result v7

    .line 561
    invoke-interface/range {v0 .. v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->startDppConfiguratorInitiator(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-static {v8, v15, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 566
    .line 567
    .line 568
    return-void

    .line 569
    :pswitch_11
    move-object v7, v1

    .line 570
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v7}, Landroid/os/HwParcel;->readInt32()I

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->removeDppUri(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 588
    .line 589
    .line 590
    return-void

    .line 591
    :pswitch_12
    move-object v7, v1

    .line 592
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v7}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$10;

    .line 600
    .line 601
    invoke-direct {v2, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 602
    .line 603
    .line 604
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->addDppPeerUri(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$addDppPeerUriCallback;)V

    .line 605
    .line 606
    .line 607
    return-void

    .line 608
    :pswitch_13
    move-object v7, v1

    .line 609
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$9;

    .line 613
    .line 614
    invoke-direct {v1, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 615
    .line 616
    .line 617
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->getKeyMgmtCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface$getKeyMgmtCapabilitiesCallback;)V

    .line 618
    .line 619
    .line 620
    return-void

    .line 621
    :pswitch_14
    move-object v7, v1

    .line 622
    invoke-virtual {v7, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v7}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIface;->registerCallback_1_2(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 644
    .line 645
    .line 646
    return-void

    .line 647
    :pswitch_15
    move-object v7, v1

    .line 648
    const-string v1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIface"

    .line 649
    .line 650
    invoke-virtual {v7, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v7}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIface;->registerCallback_1_1(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 672
    .line 673
    .line 674
    return-void

    .line 675
    :pswitch_16
    move-object v7, v1

    .line 676
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v7}, Landroid/os/HwParcel;->readBool()Z

    .line 680
    .line 681
    .line 682
    move-result v1

    .line 683
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->enableAutoReconnect(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 694
    .line 695
    .line 696
    return-void

    .line 697
    :pswitch_17
    move-object v7, v1

    .line 698
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    invoke-virtual {v7}, Landroid/os/HwParcel;->readInt32()I

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeExtRadioWork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 716
    .line 717
    .line 718
    return-void

    .line 719
    :pswitch_18
    move-object v7, v1

    .line 720
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v7}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    invoke-virtual {v7}, Landroid/os/HwParcel;->readInt32()I

    .line 728
    .line 729
    .line 730
    move-result v2

    .line 731
    invoke-virtual {v7}, Landroid/os/HwParcel;->readInt32()I

    .line 732
    .line 733
    .line 734
    move-result v3

    .line 735
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$8;

    .line 736
    .line 737
    invoke-direct {v4, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 738
    .line 739
    .line 740
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addExtRadioWork(Ljava/lang/String;IILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$addExtRadioWorkCallback;)V

    .line 741
    .line 742
    .line 743
    return-void

    .line 744
    :pswitch_19
    move-object v7, v1

    .line 745
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v7}, Landroid/os/HwParcel;->readBool()Z

    .line 749
    .line 750
    .line 751
    move-result v1

    .line 752
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setExternalSim(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 763
    .line 764
    .line 765
    return-void

    .line 766
    :pswitch_1a
    move-object v7, v1

    .line 767
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->cancelWps()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 781
    .line 782
    .line 783
    return-void

    .line 784
    :pswitch_1b
    move-object v7, v1

    .line 785
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    new-array v1, v13, [B

    .line 789
    .line 790
    invoke-virtual {v7, v9, v10}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 791
    .line 792
    .line 793
    move-result-object v2

    .line 794
    invoke-virtual {v2, v11, v12, v1, v13}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 795
    .line 796
    .line 797
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$7;

    .line 798
    .line 799
    invoke-direct {v2, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 800
    .line 801
    .line 802
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinDisplay([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$startWpsPinDisplayCallback;)V

    .line 803
    .line 804
    .line 805
    return-void

    .line 806
    :pswitch_1c
    move-object v7, v1

    .line 807
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v7}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPinKeypad(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 825
    .line 826
    .line 827
    return-void

    .line 828
    :pswitch_1d
    move-object v7, v1

    .line 829
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    new-array v1, v13, [B

    .line 833
    .line 834
    invoke-virtual {v7, v9, v10}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    invoke-virtual {v2, v11, v12, v1, v13}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 839
    .line 840
    .line 841
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsPbc([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 852
    .line 853
    .line 854
    return-void

    .line 855
    :pswitch_1e
    move-object v7, v1

    .line 856
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    new-array v1, v13, [B

    .line 860
    .line 861
    invoke-virtual {v7, v9, v10}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 862
    .line 863
    .line 864
    move-result-object v2

    .line 865
    invoke-virtual {v2, v11, v12, v1, v13}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v7}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v2

    .line 872
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startWpsRegistrar([BLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 883
    .line 884
    .line 885
    return-void

    .line 886
    :pswitch_1f
    move-object v7, v1

    .line 887
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    const/4 v1, 0x2

    .line 891
    new-array v2, v1, [B

    .line 892
    .line 893
    const-wide/16 v3, 0x2

    .line 894
    .line 895
    invoke-virtual {v7, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 896
    .line 897
    .line 898
    move-result-object v3

    .line 899
    invoke-virtual {v3, v11, v12, v2, v1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 900
    .line 901
    .line 902
    invoke-interface {v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setCountryCode([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 913
    .line 914
    .line 915
    return-void

    .line 916
    :pswitch_20
    move-object v7, v1

    .line 917
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v7}, Landroid/os/HwParcel;->readBool()Z

    .line 921
    .line 922
    .line 923
    move-result v1

    .line 924
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setSuspendModeEnabled(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 935
    .line 936
    .line 937
    return-void

    .line 938
    :pswitch_21
    move-object v7, v1

    .line 939
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    invoke-virtual {v7}, Landroid/os/HwParcel;->readBool()Z

    .line 943
    .line 944
    .line 945
    move-result v1

    .line 946
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceScanModeEnabled(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 951
    .line 952
    .line 953
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 957
    .line 958
    .line 959
    return-void

    .line 960
    :pswitch_22
    move-object v7, v1

    .line 961
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    invoke-virtual {v7}, Landroid/os/HwParcel;->readInt8()B

    .line 965
    .line 966
    .line 967
    move-result v1

    .line 968
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setBtCoexistenceMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 969
    .line 970
    .line 971
    move-result-object v0

    .line 972
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 973
    .line 974
    .line 975
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 979
    .line 980
    .line 981
    return-void

    .line 982
    :pswitch_23
    move-object v7, v1

    .line 983
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v7}, Landroid/os/HwParcel;->readInt8()B

    .line 987
    .line 988
    .line 989
    move-result v1

    .line 990
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->removeRxFilter(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1001
    .line 1002
    .line 1003
    return-void

    .line 1004
    :pswitch_24
    move-object v7, v1

    .line 1005
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v7}, Landroid/os/HwParcel;->readInt8()B

    .line 1009
    .line 1010
    .line 1011
    move-result v1

    .line 1012
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->addRxFilter(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1023
    .line 1024
    .line 1025
    return-void

    .line 1026
    :pswitch_25
    move-object v7, v1

    .line 1027
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    .line 1029
    .line 1030
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->stopRxFilter()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1041
    .line 1042
    .line 1043
    return-void

    .line 1044
    :pswitch_26
    move-object v7, v1

    .line 1045
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->startRxFilter()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1059
    .line 1060
    .line 1061
    return-void

    .line 1062
    :pswitch_27
    move-object v7, v1

    .line 1063
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    .line 1065
    .line 1066
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$6;

    .line 1067
    .line 1068
    invoke-direct {v1, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->getMacAddress(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface$getMacAddressCallback;)V

    .line 1072
    .line 1073
    .line 1074
    return-void

    .line 1075
    :pswitch_28
    move-object v7, v1

    .line 1076
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    new-array v1, v13, [B

    .line 1080
    .line 1081
    invoke-virtual {v7, v9, v10}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v2

    .line 1085
    invoke-virtual {v2, v11, v12, v1, v13}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v7}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v2

    .line 1092
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateHs20IconQuery([BLjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1093
    .line 1094
    .line 1095
    move-result-object v0

    .line 1096
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1103
    .line 1104
    .line 1105
    return-void

    .line 1106
    :pswitch_29
    move-object v7, v1

    .line 1107
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    new-array v1, v13, [B

    .line 1111
    .line 1112
    invoke-virtual {v7, v9, v10}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v2

    .line 1116
    invoke-virtual {v2, v11, v12, v1, v13}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v7}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v2

    .line 1123
    invoke-virtual {v7}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v3

    .line 1127
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateAnqpQuery([BLjava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v0

    .line 1131
    invoke-static {v8, v15, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 1132
    .line 1133
    .line 1134
    return-void

    .line 1135
    :pswitch_2a
    move-object v7, v1

    .line 1136
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    new-array v1, v13, [B

    .line 1140
    .line 1141
    invoke-virtual {v7, v9, v10}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v2

    .line 1145
    invoke-virtual {v2, v11, v12, v1, v13}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1146
    .line 1147
    .line 1148
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsTeardown([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v0

    .line 1152
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1156
    .line 1157
    .line 1158
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1159
    .line 1160
    .line 1161
    return-void

    .line 1162
    :pswitch_2b
    move-object v7, v1

    .line 1163
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    .line 1165
    .line 1166
    new-array v1, v13, [B

    .line 1167
    .line 1168
    invoke-virtual {v7, v9, v10}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v2

    .line 1172
    invoke-virtual {v2, v11, v12, v1, v13}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1173
    .line 1174
    .line 1175
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsSetup([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1186
    .line 1187
    .line 1188
    return-void

    .line 1189
    :pswitch_2c
    move-object v7, v1

    .line 1190
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    new-array v1, v13, [B

    .line 1194
    .line 1195
    invoke-virtual {v7, v9, v10}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v2

    .line 1199
    invoke-virtual {v2, v11, v12, v1, v13}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1200
    .line 1201
    .line 1202
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->initiateTdlsDiscover([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v0

    .line 1206
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1213
    .line 1214
    .line 1215
    return-void

    .line 1216
    :pswitch_2d
    move-object v7, v1

    .line 1217
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v7}, Landroid/os/HwParcel;->readBool()Z

    .line 1221
    .line 1222
    .line 1223
    move-result v1

    .line 1224
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->setPowerSave(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v0

    .line 1228
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1235
    .line 1236
    .line 1237
    return-void

    .line 1238
    :pswitch_2e
    move-object v7, v1

    .line 1239
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->disconnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v0

    .line 1246
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1253
    .line 1254
    .line 1255
    return-void

    .line 1256
    :pswitch_2f
    move-object v7, v1

    .line 1257
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    .line 1259
    .line 1260
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reconnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1271
    .line 1272
    .line 1273
    return-void

    .line 1274
    :pswitch_30
    move-object v7, v1

    .line 1275
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->reassociate()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1289
    .line 1290
    .line 1291
    return-void

    .line 1292
    :pswitch_31
    move-object v7, v1

    .line 1293
    invoke-virtual {v7, v14}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v7}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v1

    .line 1300
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v1

    .line 1304
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1315
    .line 1316
    .line 1317
    return-void

    .line 1318
    :pswitch_32
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt16()S

    .line 1322
    .line 1323
    .line 1324
    move-result v1

    .line 1325
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsConfigMethods(S)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1336
    .line 1337
    .line 1338
    return-void

    .line 1339
    :pswitch_33
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v1

    .line 1346
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsSerialNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v0

    .line 1350
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1357
    .line 1358
    .line 1359
    return-void

    .line 1360
    :pswitch_34
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v1

    .line 1367
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v0

    .line 1371
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1378
    .line 1379
    .line 1380
    return-void

    .line 1381
    :pswitch_35
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v1

    .line 1388
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v0

    .line 1392
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1396
    .line 1397
    .line 1398
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1399
    .line 1400
    .line 1401
    return-void

    .line 1402
    :pswitch_36
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v1

    .line 1409
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsManufacturer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v0

    .line 1413
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1420
    .line 1421
    .line 1422
    return-void

    .line 1423
    :pswitch_37
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    .line 1425
    .line 1426
    const/16 v4, 0x8

    .line 1427
    .line 1428
    new-array v5, v4, [B

    .line 1429
    .line 1430
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v1

    .line 1434
    invoke-virtual {v1, v11, v12, v5, v4}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1435
    .line 1436
    .line 1437
    invoke-interface {v0, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceType([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1438
    .line 1439
    .line 1440
    move-result-object v0

    .line 1441
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1442
    .line 1443
    .line 1444
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1448
    .line 1449
    .line 1450
    return-void

    .line 1451
    :pswitch_38
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1452
    .line 1453
    .line 1454
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v1

    .line 1458
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v0

    .line 1462
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1466
    .line 1467
    .line 1468
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1469
    .line 1470
    .line 1471
    return-void

    .line 1472
    :pswitch_39
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$5;

    .line 1476
    .line 1477
    invoke-direct {v1, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 1478
    .line 1479
    .line 1480
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->listNetworks(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    .line 1481
    .line 1482
    .line 1483
    return-void

    .line 1484
    :pswitch_3a
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 1488
    .line 1489
    .line 1490
    move-result v1

    .line 1491
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$4;

    .line 1492
    .line 1493
    invoke-direct {v2, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getNetwork(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    .line 1497
    .line 1498
    .line 1499
    return-void

    .line 1500
    :pswitch_3b
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 1504
    .line 1505
    .line 1506
    move-result v1

    .line 1507
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->removeNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v0

    .line 1511
    invoke-virtual {v8, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1512
    .line 1513
    .line 1514
    invoke-virtual {v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {v8}, Landroid/os/HwParcel;->send()V

    .line 1518
    .line 1519
    .line 1520
    return-void

    .line 1521
    :pswitch_3c
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$3;

    .line 1525
    .line 1526
    invoke-direct {v1, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 1527
    .line 1528
    .line 1529
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->addNetwork(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    .line 1530
    .line 1531
    .line 1532
    return-void

    .line 1533
    :pswitch_3d
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1534
    .line 1535
    .line 1536
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$2;

    .line 1537
    .line 1538
    invoke-direct {v1, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 1539
    .line 1540
    .line 1541
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    .line 1542
    .line 1543
    .line 1544
    return-void

    .line 1545
    :pswitch_3e
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1546
    .line 1547
    .line 1548
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$1;

    .line 1549
    .line 1550
    invoke-direct {v1, v0, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;Landroid/os/HwParcel;)V

    .line 1551
    .line 1552
    .line 1553
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    .line 1554
    .line 1555
    .line 1556
    return-void

    .line 1557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
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
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
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
    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicantStaIface"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantStaIface$Stub;->interfaceDescriptor()Ljava/lang/String;

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
