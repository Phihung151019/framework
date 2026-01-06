.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;
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
    .locals 2
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
    new-array v0, v0, [B

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    filled-new-array {v1, v0}, [[B

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

    .line 27
    :array_0
    .array-data 1
        -0x75t
        0x63t
        -0xbt
        -0x11t
        -0x5et
        -0x1dt
        -0x42t
        0x3at
        0x7ct
        -0x48t
        -0x5ct
        0x28t
        0x76t
        0xdt
        -0x7et
        0x28t
        0x5at
        0x4at
        -0x49t
        -0x65t
        -0x35t
        -0x22t
        -0x5at
        -0x11t
        -0x70t
        -0x56t
        0x54t
        0x75t
        0x55t
        -0x1bt
        -0x7et
        -0x2ct
    .end array-data

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    :array_1
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
    .locals 2
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
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

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
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p2

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    const-wide/16 v3, 0x8

    .line 6
    .line 7
    const/16 v5, 0x20

    .line 8
    .line 9
    const-wide/16 v6, 0x6

    .line 10
    .line 11
    const-string v8, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

    .line 12
    .line 13
    const-wide/16 v9, 0x0

    .line 14
    .line 15
    const/4 v11, 0x6

    .line 16
    packed-switch p1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    const-string v7, "android.hidl.base@1.0::IBase"

    .line 21
    .line 22
    sparse-switch p1, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :sswitch_0
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->notifySyspropsChanged()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :sswitch_1
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :sswitch_2
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->ping()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :sswitch_3
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->setHALInstrumentation()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :sswitch_4
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Landroid/os/HwBlob;

    .line 81
    .line 82
    const/16 v7, 0x10

    .line 83
    .line 84
    invoke-direct {v1, v7}, Landroid/os/HwBlob;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 92
    .line 93
    .line 94
    const-wide/16 v3, 0xc

    .line 95
    .line 96
    invoke-virtual {v1, v3, v4, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Landroid/os/HwBlob;

    .line 100
    .line 101
    mul-int/lit8 v4, v7, 0x20

    .line 102
    .line 103
    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 104
    .line 105
    .line 106
    :goto_0
    if-ge v6, v7, :cond_1

    .line 107
    .line 108
    mul-int/lit8 v4, v6, 0x20

    .line 109
    .line 110
    int-to-long v11, v4

    .line 111
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    array-length v8, v4

    .line 120
    if-ne v8, v5, :cond_0

    .line 121
    .line 122
    invoke-virtual {v3, v11, v12, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 123
    .line 124
    .line 125
    add-int/lit8 v6, v6, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    const-string v1, "Array element is not of the expected length"

    .line 131
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_1
    invoke-virtual {v1, v9, v10, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :sswitch_5
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :sswitch_6
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {p0, v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :sswitch_7
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v2, v6}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_0
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-array v2, v11, [B

    .line 205
    .line 206
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 211
    .line 212
    .line 213
    new-array v3, v11, [B

    .line 214
    .line 215
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-virtual {v1, v9, v10, v3, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 220
    .line 221
    .line 222
    invoke-interface {p0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onStaDeauthorized([B[B)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :pswitch_1
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    new-array v2, v11, [B

    .line 230
    .line 231
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 236
    .line 237
    .line 238
    new-array v3, v11, [B

    .line 239
    .line 240
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v1, v9, v10, v3, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 245
    .line 246
    .line 247
    invoke-interface {p0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onStaAuthorized([B[B)V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_2
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    new-array v2, v11, [B

    .line 255
    .line 256
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt16()S

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-interface {p0, v2, v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onServiceDiscoveryResponse([BSLjava/util/ArrayList;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :pswitch_3
    invoke-virtual {v1, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    new-array v2, v11, [B

    .line 279
    .line 280
    invoke-virtual {v1, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 285
    .line 286
    .line 287
    move-object v12, v1

    .line 288
    move-object v1, v2

    .line 289
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt8()B

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt16()S

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    move-object v0, p0

    .line 306
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onProvisionDiscoveryCompleted([BZBSLjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    :pswitch_4
    move-object v12, v1

    .line 311
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    new-array v1, v11, [B

    .line 315
    .line 316
    invoke-virtual {v12, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-virtual {v2, v9, v10, v1, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onInvitationResult([BI)V

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :pswitch_5
    move-object v12, v1

    .line 332
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    new-array v1, v11, [B

    .line 336
    .line 337
    invoke-virtual {v12, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v2, v9, v10, v1, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 342
    .line 343
    .line 344
    new-array v2, v11, [B

    .line 345
    .line 346
    invoke-virtual {v12, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v3, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 351
    .line 352
    .line 353
    new-array v3, v11, [B

    .line 354
    .line 355
    invoke-virtual {v12, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    invoke-virtual {v4, v9, v10, v3, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    move-object v0, p0

    .line 371
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onInvitationReceived([B[B[BII)V

    .line 372
    .line 373
    .line 374
    return-void

    .line 375
    :pswitch_6
    move-object v12, v1

    .line 376
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupRemoved(Ljava/lang/String;Z)V

    .line 388
    .line 389
    .line 390
    return-void

    .line 391
    :pswitch_7
    move-object v12, v1

    .line 392
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    new-array v8, v5, [B

    .line 412
    .line 413
    const-wide/16 v13, 0x20

    .line 414
    .line 415
    invoke-virtual {v12, v13, v14}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 416
    .line 417
    .line 418
    move-result-object v13

    .line 419
    invoke-virtual {v13, v9, v10, v8, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    new-array v13, v11, [B

    .line 427
    .line 428
    invoke-virtual {v12, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    invoke-virtual {v6, v9, v10, v13, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 433
    .line 434
    .line 435
    move-object v6, v5

    .line 436
    move-object v5, v8

    .line 437
    invoke-virtual {v12}, Landroid/os/HwParcel;->readBool()Z

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    move-object v0, p0

    .line 442
    move-object v7, v13

    .line 443
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZ)V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :pswitch_8
    move-object v12, v1

    .line 448
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupFormationFailure(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
    :pswitch_9
    move-object v12, v1

    .line 460
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupFormationSuccess()V

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :pswitch_a
    move-object v12, v1

    .line 468
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGoNegotiationCompleted(I)V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :pswitch_b
    move-object v12, v1

    .line 480
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    new-array v1, v11, [B

    .line 484
    .line 485
    invoke-virtual {v12, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    invoke-virtual {v2, v9, v10, v1, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt16()S

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGoNegotiationRequest([BS)V

    .line 497
    .line 498
    .line 499
    return-void

    .line 500
    :pswitch_c
    move-object v12, v1

    .line 501
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onFindStopped()V

    .line 505
    .line 506
    .line 507
    return-void

    .line 508
    :pswitch_d
    move-object v12, v1

    .line 509
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    new-array v1, v11, [B

    .line 513
    .line 514
    invoke-virtual {v12, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    invoke-virtual {v2, v9, v10, v1, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 519
    .line 520
    .line 521
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onDeviceLost([B)V

    .line 522
    .line 523
    .line 524
    return-void

    .line 525
    :pswitch_e
    move-object v12, v1

    .line 526
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    new-array v1, v11, [B

    .line 530
    .line 531
    invoke-virtual {v12, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    invoke-virtual {v2, v9, v10, v1, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 536
    .line 537
    .line 538
    new-array v2, v11, [B

    .line 539
    .line 540
    invoke-virtual {v12, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    invoke-virtual {v5, v9, v10, v2, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 545
    .line 546
    .line 547
    const/16 v5, 0x8

    .line 548
    .line 549
    new-array v8, v5, [B

    .line 550
    .line 551
    invoke-virtual {v12, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    invoke-virtual {v3, v9, v10, v8, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v12}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v4

    .line 562
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt16()S

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt8()B

    .line 567
    .line 568
    .line 569
    move-result v3

    .line 570
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    .line 571
    .line 572
    .line 573
    move-result v13

    .line 574
    move v14, v3

    .line 575
    move-object v3, v8

    .line 576
    new-array v8, v11, [B

    .line 577
    .line 578
    invoke-virtual {v12, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 579
    .line 580
    .line 581
    move-result-object v6

    .line 582
    invoke-virtual {v6, v9, v10, v8, v11}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 583
    .line 584
    .line 585
    move-object v0, p0

    .line 586
    move v7, v13

    .line 587
    move v6, v14

    .line 588
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onDeviceFound([B[B[BLjava/lang/String;SBI[B)V

    .line 589
    .line 590
    .line 591
    return-void

    .line 592
    :pswitch_f
    move-object v12, v1

    .line 593
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    .line 595
    .line 596
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onNetworkRemoved(I)V

    .line 601
    .line 602
    .line 603
    return-void

    .line 604
    :pswitch_10
    move-object v12, v1

    .line 605
    invoke-virtual {v12, v8}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {v12}, Landroid/os/HwParcel;->readInt32()I

    .line 609
    .line 610
    .line 611
    move-result v1

    .line 612
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onNetworkAdded(I)V

    .line 613
    .line 614
    .line 615
    return-void

    .line 616
    nop

    .line 617
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
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
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
