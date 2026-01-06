.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;
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
        0x2ct
        -0x1ft
        -0x9t
        -0x5t
        0x52t
        -0x1ct
        -0x61t
        -0x80t
        -0x4ft
        0x3at
        -0x65t
        0x15t
        0x3dt
        0x49t
        0x1bt
        -0x32t
        0x53t
        0x5t
        0x52t
        -0x10t
        0x23t
        0x57t
        -0x16t
        0x72t
        -0x66t
        -0x36t
        -0x17t
        0x22t
        -0x58t
        0x65t
        -0x61t
        -0x6dt
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
        0x9t
        -0x20t
        -0x75t
        0x5dt
        0x12t
        -0x4ft
        0x9t
        0x56t
        0x2et
        -0x33t
        -0x28t
        -0x78t
        0x25t
        0x32t
        -0x3t
        0x1ft
        0x2ct
        0x46t
        0x39t
        0x58t
        -0x72t
        0x7t
        0x76t
        -0x63t
        0x5ct
        0x73t
        -0x6at
        -0x49t
        -0x3bt
        -0x47t
        -0xdt
        0x4ft
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
        -0x33t
        0x43t
        0x30t
        -0x3dt
        0x19t
        0x6bt
        -0x26t
        0x1dt
        0x64t
        0x2at
        0x32t
        -0x55t
        -0x2t
        0x23t
        -0x59t
        -0x2at
        0x4et
        -0x41t
        -0x43t
        -0x59t
        0x21t
        -0x6ct
        0x6t
        0x43t
        -0x51t
        0x68t
        0x67t
        -0x51t
        0x3bt
        0x3ft
        0xat
        -0x57t
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
        -0x29t
        -0x7ft
        -0x38t
        -0x29t
        -0x19t
        -0x4dt
        -0x2t
        0x5ct
        -0x36t
        -0x74t
        -0xat
        -0x1ft
        -0x28t
        -0x80t
        0x6et
        0x77t
        0x9t
        -0x7et
        -0x52t
        0x53t
        0x58t
        -0x39t
        -0x7ft
        0x6et
        -0x2bt
        0x1bt
        0xft
        0xet
        -0x3et
        0x72t
        -0x19t
        0xdt
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
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v2, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    .line 8
    .line 9
    const-string v3, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    .line 10
    .line 11
    const-string v4, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

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
    const-string p0, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

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
    const-string p4, "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback"

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    const-string v1, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

    .line 6
    .line 7
    const-wide/16 v2, 0x6

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    const-string v6, "android.hardware.wifi.supplicant@1.0::ISupplicantStaIfaceCallback"

    .line 12
    .line 13
    const/4 v7, 0x6

    .line 14
    packed-switch p1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    const/4 p4, 0x0

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->notifySyspropsChanged()V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->ping()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->setHALInstrumentation()V

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Landroid/os/HwBlob;

    .line 79
    .line 80
    const/16 p2, 0x10

    .line 81
    .line 82
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    const-wide/16 v1, 0x8

    .line 90
    .line 91
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 92
    .line 93
    .line 94
    const-wide/16 v1, 0xc

    .line 95
    .line 96
    invoke-virtual {p1, v1, v2, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Landroid/os/HwBlob;

    .line 100
    .line 101
    mul-int/lit8 v2, p2, 0x20

    .line 102
    .line 103
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 104
    .line 105
    .line 106
    :goto_0
    if-ge p4, p2, :cond_1

    .line 107
    .line 108
    mul-int/lit8 v2, p4, 0x20

    .line 109
    .line 110
    int-to-long v2, v2

    .line 111
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, [B

    .line 116
    .line 117
    if-eqz v6, :cond_0

    .line 118
    .line 119
    array-length v7, v6

    .line 120
    if-ne v7, v0, :cond_0

    .line 121
    .line 122
    invoke-virtual {v1, v2, v3, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 123
    .line 124
    .line 125
    add-int/lit8 p4, p4, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    const-string p1, "Array element is not of the expected length"

    .line 131
    .line 132
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_1
    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :sswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :sswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :sswitch_7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    move-wide p3, v2

    .line 209
    new-array v2, v7, [B

    .line 210
    .line 211
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1, v4, v5, v2, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    move-object v0, p0

    .line 231
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onStateChanged_1_3(I[BILjava/util/ArrayList;Z)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onEapFailure_1_3(I)V

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;

    .line 250
    .line 251
    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;-><init>()V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 255
    .line 256
    .line 257
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onBssTmHandlingDone(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$BssTmData;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p3

    .line 272
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p4

    .line 276
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16Vector()Ljava/util/ArrayList;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onDppFailure_1_3(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onDppProgress_1_3(I)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 299
    .line 300
    .line 301
    move-result p1

    .line 302
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onDppSuccess(I)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 310
    .line 311
    .line 312
    move-result-wide p3

    .line 313
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-interface {p0, p3, p4, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback;->onPmkCacheAdded(JLjava/util/ArrayList;)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :pswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppFailure(I)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :pswitch_8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppProgress(I)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :pswitch_9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppSuccessConfigSent()V

    .line 347
    .line 348
    .line 349
    return-void

    .line 350
    :pswitch_a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p3

    .line 361
    new-array p4, v0, [B

    .line 362
    .line 363
    const-wide/16 v1, 0x20

    .line 364
    .line 365
    invoke-virtual {p2, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v1, v4, v5, p4, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 373
    .line 374
    .line 375
    move-result p2

    .line 376
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantStaIfaceCallback;->onDppSuccessConfigReceived(Ljava/util/ArrayList;Ljava/lang/String;[BI)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :pswitch_b
    const-string p1, "android.hardware.wifi.supplicant@1.1::ISupplicantStaIfaceCallback"

    .line 381
    .line 382
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_1/ISupplicantStaIfaceCallback;->onEapFailure_1_1(I)V

    .line 390
    .line 391
    .line 392
    return-void

    .line 393
    :pswitch_c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onExtRadioWorkTimeout(I)V

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :pswitch_d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onExtRadioWorkStart(I)V

    .line 412
    .line 413
    .line 414
    return-void

    .line 415
    :pswitch_e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventPbcOverlap()V

    .line 419
    .line 420
    .line 421
    return-void

    .line 422
    :pswitch_f
    move-wide p3, v2

    .line 423
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    new-array p1, v7, [B

    .line 427
    .line 428
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 429
    .line 430
    .line 431
    move-result-object p3

    .line 432
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 436
    .line 437
    .line 438
    move-result p3

    .line 439
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 440
    .line 441
    .line 442
    move-result p2

    .line 443
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventFail([BSS)V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :pswitch_10
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onWpsEventSuccess()V

    .line 451
    .line 452
    .line 453
    return-void

    .line 454
    :pswitch_11
    move-wide p3, v2

    .line 455
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 459
    .line 460
    .line 461
    move-result p1

    .line 462
    new-array v0, v7, [B

    .line 463
    .line 464
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 465
    .line 466
    .line 467
    move-result-object p2

    .line 468
    invoke-virtual {p2, v4, v5, v0, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 469
    .line 470
    .line 471
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onBssidChanged(B[B)V

    .line 472
    .line 473
    .line 474
    return-void

    .line 475
    :pswitch_12
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onEapFailure()V

    .line 479
    .line 480
    .line 481
    return-void

    .line 482
    :pswitch_13
    move-wide p3, v2

    .line 483
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    new-array p1, v7, [B

    .line 487
    .line 488
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 489
    .line 490
    .line 491
    move-result-object p2

    .line 492
    invoke-virtual {p2, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 493
    .line 494
    .line 495
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAuthenticationTimeout([B)V

    .line 496
    .line 497
    .line 498
    return-void

    .line 499
    :pswitch_14
    move-wide p3, v2

    .line 500
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    new-array p1, v7, [B

    .line 504
    .line 505
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 506
    .line 507
    .line 508
    move-result-object p3

    .line 509
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 513
    .line 514
    .line 515
    move-result p3

    .line 516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 517
    .line 518
    .line 519
    move-result p2

    .line 520
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAssociationRejected([BIZ)V

    .line 521
    .line 522
    .line 523
    return-void

    .line 524
    :pswitch_15
    move-wide p3, v2

    .line 525
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    new-array p1, v7, [B

    .line 529
    .line 530
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 531
    .line 532
    .line 533
    move-result-object p3

    .line 534
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 538
    .line 539
    .line 540
    move-result p3

    .line 541
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 542
    .line 543
    .line 544
    move-result p2

    .line 545
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onDisconnected([BZI)V

    .line 546
    .line 547
    .line 548
    return-void

    .line 549
    :pswitch_16
    move-wide p3, v2

    .line 550
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    new-array p1, v7, [B

    .line 554
    .line 555
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 556
    .line 557
    .line 558
    move-result-object p3

    .line 559
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 563
    .line 564
    .line 565
    move-result p3

    .line 566
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 567
    .line 568
    .line 569
    move-result p4

    .line 570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object p2

    .line 574
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

    .line 575
    .line 576
    .line 577
    return-void

    .line 578
    :pswitch_17
    move-wide p3, v2

    .line 579
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    new-array p1, v7, [B

    .line 583
    .line 584
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 585
    .line 586
    .line 587
    move-result-object p3

    .line 588
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 592
    .line 593
    .line 594
    move-result p3

    .line 595
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object p2

    .line 599
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    .line 600
    .line 601
    .line 602
    return-void

    .line 603
    :pswitch_18
    move-wide p3, v2

    .line 604
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    new-array p1, v7, [B

    .line 608
    .line 609
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 610
    .line 611
    .line 612
    move-result-object p3

    .line 613
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object p3

    .line 620
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 621
    .line 622
    .line 623
    move-result-object p2

    .line 624
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onHs20IconQueryDone([BLjava/lang/String;Ljava/util/ArrayList;)V

    .line 625
    .line 626
    .line 627
    return-void

    .line 628
    :pswitch_19
    move-wide p3, v2

    .line 629
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    new-array p1, v7, [B

    .line 633
    .line 634
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 635
    .line 636
    .line 637
    move-result-object p3

    .line 638
    invoke-virtual {p3, v4, v5, p1, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 639
    .line 640
    .line 641
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;

    .line 642
    .line 643
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;-><init>()V

    .line 644
    .line 645
    .line 646
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 647
    .line 648
    .line 649
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;

    .line 650
    .line 651
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;-><init>()V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 655
    .line 656
    .line 657
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$Hs20AnqpData;)V

    .line 658
    .line 659
    .line 660
    return-void

    .line 661
    :pswitch_1a
    move-wide p3, v2

    .line 662
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 666
    .line 667
    .line 668
    move-result p1

    .line 669
    new-array v0, v7, [B

    .line 670
    .line 671
    invoke-virtual {p2, p3, p4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 672
    .line 673
    .line 674
    move-result-object p3

    .line 675
    invoke-virtual {p3, v4, v5, v0, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 679
    .line 680
    .line 681
    move-result p3

    .line 682
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 683
    .line 684
    .line 685
    move-result-object p2

    .line 686
    invoke-interface {p0, p1, v0, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onStateChanged(I[BILjava/util/ArrayList;)V

    .line 687
    .line 688
    .line 689
    return-void

    .line 690
    :pswitch_1b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 694
    .line 695
    .line 696
    move-result p1

    .line 697
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onNetworkRemoved(I)V

    .line 698
    .line 699
    .line 700
    return-void

    .line 701
    :pswitch_1c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 705
    .line 706
    .line 707
    move-result p1

    .line 708
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;->onNetworkAdded(I)V

    .line 709
    .line 710
    .line 711
    return-void

    .line 712
    nop

    .line 713
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

    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
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
    const-string v0, "android.hardware.wifi.supplicant@1.3::ISupplicantStaIfaceCallback"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_3/ISupplicantStaIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
