.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;
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
    .locals 3
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
    new-array v0, v0, [B

    .line 16
    .line 17
    fill-array-data v0, :array_2

    .line 18
    .line 19
    .line 20
    filled-new-array {v1, v2, v0}, [[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 1
        -0x16t
        0x46t
        0x59t
        0x70t
        -0x17t
        0x6dt
        -0x6at
        0x5t
        -0x12t
        0x6ft
        0x67t
        0x6t
        -0x4dt
        -0x4bt
        0x12t
        0x72t
        0x6ct
        0x66t
        -0x2et
        0x64t
        0x47t
        0x38t
        -0x53t
        -0x22t
        -0x27t
        0x12t
        -0x74t
        0x73t
        -0x61t
        -0x71t
        -0x75t
        0xct
    .end array-data

    :array_1
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

    :array_2
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
    .locals 3
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
    const-string v2, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIfaceCallback"

    .line 8
    .line 9
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIfaceCallback"

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
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-wide/16 v3, 0x8

    .line 8
    .line 9
    const/16 v5, 0x8

    .line 10
    .line 11
    const/16 v6, 0x20

    .line 12
    .line 13
    const-string v7, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIfaceCallback"

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
    packed-switch p1, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const-string v7, "android.hidl.base@1.0::IBase"

    .line 25
    .line 26
    sparse-switch p1, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :sswitch_0
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->notifySyspropsChanged()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :sswitch_1
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :sswitch_2
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->ping()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :sswitch_3
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->setHALInstrumentation()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :sswitch_4
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Landroid/os/HwBlob;

    .line 85
    .line 86
    const/16 v7, 0x10

    .line 87
    .line 88
    invoke-direct {v1, v7}, Landroid/os/HwBlob;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 96
    .line 97
    .line 98
    const-wide/16 v3, 0xc

    .line 99
    .line 100
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Landroid/os/HwBlob;

    .line 104
    .line 105
    mul-int/lit8 v4, v7, 0x20

    .line 106
    .line 107
    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 108
    .line 109
    .line 110
    :goto_0
    if-ge v5, v7, :cond_1

    .line 111
    .line 112
    mul-int/lit8 v4, v5, 0x20

    .line 113
    .line 114
    int-to-long v8, v4

    .line 115
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, [B

    .line 120
    .line 121
    if-eqz v4, :cond_0

    .line 122
    .line 123
    array-length v12, v4

    .line 124
    if-ne v12, v6, :cond_0

    .line 125
    .line 126
    invoke-virtual {v3, v8, v9, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 127
    .line 128
    .line 129
    add-int/lit8 v5, v5, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 133
    .line 134
    const-string v1, "Array element is not of the expected length"

    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_1
    invoke-virtual {v1, v10, v11, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :sswitch_5
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :sswitch_6
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v0, v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :sswitch_7
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v2, v5}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Landroid/os/HwParcel;->send()V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_0
    const-string v2, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIfaceCallback"

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    new-array v2, v12, [B

    .line 211
    .line 212
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v6, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 217
    .line 218
    .line 219
    move-object v6, v2

    .line 220
    new-array v2, v12, [B

    .line 221
    .line 222
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    invoke-virtual {v7, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 227
    .line 228
    .line 229
    new-array v7, v5, [B

    .line 230
    .line 231
    invoke-virtual {v1, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-virtual {v3, v10, v11, v7, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt16()S

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    move-object v3, v6

    .line 247
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8()B

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    move-object v13, v3

    .line 252
    move-object v3, v7

    .line 253
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    new-array v14, v12, [B

    .line 258
    .line 259
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    invoke-virtual {v8, v10, v11, v14, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 264
    .line 265
    .line 266
    const/4 v8, 0x2

    .line 267
    new-array v9, v8, [B

    .line 268
    .line 269
    move-object/from16 p1, v2

    .line 270
    .line 271
    move-object/from16 p3, v3

    .line 272
    .line 273
    const-wide/16 v2, 0x2

    .line 274
    .line 275
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v1, v10, v11, v9, v8}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 280
    .line 281
    .line 282
    move-object/from16 v2, p1

    .line 283
    .line 284
    move-object/from16 v3, p3

    .line 285
    .line 286
    move-object v1, v13

    .line 287
    move-object v8, v14

    .line 288
    invoke-interface/range {v0 .. v9}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback;->onR2DeviceFound([B[B[BLjava/lang/String;SBI[B[B)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :pswitch_1
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-array v2, v12, [B

    .line 296
    .line 297
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 302
    .line 303
    .line 304
    new-array v3, v12, [B

    .line 305
    .line 306
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v1, v10, v11, v3, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onStaDeauthorized([B[B)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :pswitch_2
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    new-array v2, v12, [B

    .line 321
    .line 322
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 327
    .line 328
    .line 329
    new-array v3, v12, [B

    .line 330
    .line 331
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v1, v10, v11, v3, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 336
    .line 337
    .line 338
    invoke-interface {v0, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onStaAuthorized([B[B)V

    .line 339
    .line 340
    .line 341
    return-void

    .line 342
    :pswitch_3
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    new-array v2, v12, [B

    .line 346
    .line 347
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt16()S

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-interface {v0, v2, v3, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onServiceDiscoveryResponse([BSLjava/util/ArrayList;)V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :pswitch_4
    invoke-virtual {v1, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    new-array v2, v12, [B

    .line 370
    .line 371
    invoke-virtual {v1, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 376
    .line 377
    .line 378
    move-object v13, v1

    .line 379
    move-object v1, v2

    .line 380
    invoke-virtual {v13}, Landroid/os/HwParcel;->readBool()Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt8()B

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt16()S

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    invoke-virtual {v13}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onProvisionDiscoveryCompleted([BZBSLjava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :pswitch_5
    move-object v13, v1

    .line 401
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    new-array v1, v12, [B

    .line 405
    .line 406
    invoke-virtual {v13, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v2, v10, v11, v1, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt32()I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onInvitationResult([BI)V

    .line 418
    .line 419
    .line 420
    return-void

    .line 421
    :pswitch_6
    move-object v13, v1

    .line 422
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    new-array v1, v12, [B

    .line 426
    .line 427
    invoke-virtual {v13, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v2, v10, v11, v1, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 432
    .line 433
    .line 434
    new-array v2, v12, [B

    .line 435
    .line 436
    invoke-virtual {v13, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    invoke-virtual {v3, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 441
    .line 442
    .line 443
    new-array v3, v12, [B

    .line 444
    .line 445
    invoke-virtual {v13, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    invoke-virtual {v4, v10, v11, v3, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt32()I

    .line 453
    .line 454
    .line 455
    move-result v4

    .line 456
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt32()I

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onInvitationReceived([B[B[BII)V

    .line 461
    .line 462
    .line 463
    return-void

    .line 464
    :pswitch_7
    move-object v13, v1

    .line 465
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v13}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v13}, Landroid/os/HwParcel;->readBool()Z

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupRemoved(Ljava/lang/String;Z)V

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :pswitch_8
    move-object v13, v1

    .line 481
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v13}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    invoke-virtual {v13}, Landroid/os/HwParcel;->readBool()Z

    .line 489
    .line 490
    .line 491
    move-result v2

    .line 492
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt32()I

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    new-array v5, v6, [B

    .line 501
    .line 502
    const-wide/16 v14, 0x20

    .line 503
    .line 504
    invoke-virtual {v13, v14, v15}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 505
    .line 506
    .line 507
    move-result-object v7

    .line 508
    invoke-virtual {v7, v10, v11, v5, v6}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v13}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v6

    .line 515
    new-array v7, v12, [B

    .line 516
    .line 517
    invoke-virtual {v13, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 518
    .line 519
    .line 520
    move-result-object v8

    .line 521
    invoke-virtual {v8, v10, v11, v7, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v13}, Landroid/os/HwParcel;->readBool()Z

    .line 525
    .line 526
    .line 527
    move-result v8

    .line 528
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupStarted(Ljava/lang/String;ZLjava/util/ArrayList;I[BLjava/lang/String;[BZ)V

    .line 529
    .line 530
    .line 531
    return-void

    .line 532
    :pswitch_9
    move-object v13, v1

    .line 533
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v13}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupFormationFailure(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    return-void

    .line 544
    :pswitch_a
    move-object v13, v1

    .line 545
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGroupFormationSuccess()V

    .line 549
    .line 550
    .line 551
    return-void

    .line 552
    :pswitch_b
    move-object v13, v1

    .line 553
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt32()I

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGoNegotiationCompleted(I)V

    .line 561
    .line 562
    .line 563
    return-void

    .line 564
    :pswitch_c
    move-object v13, v1

    .line 565
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    new-array v1, v12, [B

    .line 569
    .line 570
    invoke-virtual {v13, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    invoke-virtual {v2, v10, v11, v1, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt16()S

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    invoke-interface {v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onGoNegotiationRequest([BS)V

    .line 582
    .line 583
    .line 584
    return-void

    .line 585
    :pswitch_d
    move-object v13, v1

    .line 586
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-interface {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onFindStopped()V

    .line 590
    .line 591
    .line 592
    return-void

    .line 593
    :pswitch_e
    move-object v13, v1

    .line 594
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    new-array v1, v12, [B

    .line 598
    .line 599
    invoke-virtual {v13, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-virtual {v2, v10, v11, v1, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 604
    .line 605
    .line 606
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onDeviceLost([B)V

    .line 607
    .line 608
    .line 609
    return-void

    .line 610
    :pswitch_f
    move-object v13, v1

    .line 611
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    new-array v1, v12, [B

    .line 615
    .line 616
    invoke-virtual {v13, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    invoke-virtual {v2, v10, v11, v1, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 621
    .line 622
    .line 623
    new-array v2, v12, [B

    .line 624
    .line 625
    invoke-virtual {v13, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 626
    .line 627
    .line 628
    move-result-object v6

    .line 629
    invoke-virtual {v6, v10, v11, v2, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 630
    .line 631
    .line 632
    new-array v6, v5, [B

    .line 633
    .line 634
    invoke-virtual {v13, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    invoke-virtual {v3, v10, v11, v6, v5}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v13}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt16()S

    .line 646
    .line 647
    .line 648
    move-result v5

    .line 649
    move-object v3, v6

    .line 650
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt8()B

    .line 651
    .line 652
    .line 653
    move-result v6

    .line 654
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt32()I

    .line 655
    .line 656
    .line 657
    move-result v7

    .line 658
    new-array v14, v12, [B

    .line 659
    .line 660
    invoke-virtual {v13, v8, v9}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 661
    .line 662
    .line 663
    move-result-object v8

    .line 664
    invoke-virtual {v8, v10, v11, v14, v12}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 665
    .line 666
    .line 667
    move-object v8, v14

    .line 668
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onDeviceFound([B[B[BLjava/lang/String;SBI[B)V

    .line 669
    .line 670
    .line 671
    return-void

    .line 672
    :pswitch_10
    move-object v13, v1

    .line 673
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt32()I

    .line 677
    .line 678
    .line 679
    move-result v1

    .line 680
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onNetworkRemoved(I)V

    .line 681
    .line 682
    .line 683
    return-void

    .line 684
    :pswitch_11
    move-object v13, v1

    .line 685
    invoke-virtual {v13, v7}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v13}, Landroid/os/HwParcel;->readInt32()I

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    invoke-interface {v0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->onNetworkAdded(I)V

    .line 693
    .line 694
    .line 695
    return-void

    .line 696
    nop

    .line 697
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
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
    const-string v0, "android.hardware.wifi.supplicant@1.4::ISupplicantP2pIfaceCallback"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_4/ISupplicantP2pIfaceCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
