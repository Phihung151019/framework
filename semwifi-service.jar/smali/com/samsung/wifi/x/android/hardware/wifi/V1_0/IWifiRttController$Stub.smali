.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;
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
        0x76t
        0x6et
        -0x69t
        0x65t
        -0xbt
        -0x37t
        -0x39t
        0x59t
        -0x4et
        -0x59t
        0x63t
        -0x3et
        0x28t
        -0x7dt
        0x53t
        -0x5t
        0x5dt
        -0x11t
        -0xdt
        0x38t
        -0x64t
        0x2ct
        -0x3et
        -0x71t
        -0x7ft
        -0x29t
        -0x64t
        -0x6dt
        -0x69t
        0x4t
        -0x32t
        -0x75t
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
    const-string v0, "android.hardware.wifi@1.0::IWifiRttController"

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
    const-string p0, "android.hardware.wifi@1.0::IWifiRttController"

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
    const-wide/16 v1, 0x8

    .line 2
    .line 3
    const-string v3, "android.hardware.wifi@1.0::IWifiRttController"

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string v3, "android.hidl.base@1.0::IBase"

    .line 10
    .line 11
    sparse-switch p1, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :sswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->notifySyspropsChanged()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :sswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :sswitch_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->ping()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :sswitch_3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->setHALInstrumentation()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :sswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Landroid/os/HwBlob;

    .line 70
    .line 71
    const/16 v0, 0x10

    .line 72
    .line 73
    invoke-direct {p1, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 81
    .line 82
    .line 83
    const-wide/16 v1, 0xc

    .line 84
    .line 85
    invoke-virtual {p1, v1, v2, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Landroid/os/HwBlob;

    .line 89
    .line 90
    mul-int/lit8 v2, v0, 0x20

    .line 91
    .line 92
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 93
    .line 94
    .line 95
    :goto_0
    if-ge v8, v0, :cond_1

    .line 96
    .line 97
    mul-int/lit8 v2, v8, 0x20

    .line 98
    .line 99
    int-to-long v2, v2

    .line 100
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, [B

    .line 105
    .line 106
    if-eqz v4, :cond_0

    .line 107
    .line 108
    array-length v5, v4

    .line 109
    const/16 v6, 0x20

    .line 110
    .line 111
    if-ne v5, v6, :cond_0

    .line 112
    .line 113
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 v8, v8, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    const-string p1, "Array element is not of the expected length"

    .line 122
    .line 123
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0

    .line 127
    :cond_1
    const-wide/16 v2, 0x0

    .line 128
    .line 129
    invoke-virtual {p1, v2, v3, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :sswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :sswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :sswitch_7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->disableResponder(I)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;

    .line 223
    .line 224
    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;

    .line 235
    .line 236
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;->readFromParcel(Landroid/os/HwParcel;)V

    .line 240
    .line 241
    .line 242
    invoke-interface {p0, p1, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->enableResponder(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiChannelInfo;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttResponder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-static {p3, v8, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub$3;

    .line 254
    .line 255
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->getResponderInfo(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getResponderInfoCallback;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;

    .line 270
    .line 271
    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 275
    .line 276
    .line 277
    invoke-interface {p0, p1, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->setLcr(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLcrInformation;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;

    .line 299
    .line 300
    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;->readFromParcel(Landroid/os/HwParcel;)V

    .line 304
    .line 305
    .line 306
    invoke-interface {p0, p1, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->setLci(ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub$2;

    .line 324
    .line 325
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    .line 326
    .line 327
    .line 328
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->getCapabilities(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getCapabilitiesCallback;)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    new-instance v9, Ljava/util/ArrayList;

    .line 340
    .line 341
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .line 343
    .line 344
    const-wide/16 v3, 0x10

    .line 345
    .line 346
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v3, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 351
    .line 352
    .line 353
    move-result v10

    .line 354
    mul-int/lit8 v1, v10, 0x6

    .line 355
    .line 356
    int-to-long v1, v1

    .line 357
    invoke-virtual {v3}, Landroid/os/HwBlob;->handle()J

    .line 358
    .line 359
    .line 360
    move-result-wide v3

    .line 361
    const-wide/16 v5, 0x0

    .line 362
    .line 363
    const/4 v7, 0x1

    .line 364
    move-object v0, p2

    .line 365
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 370
    .line 371
    .line 372
    move v1, v8

    .line 373
    :goto_1
    if-ge v1, v10, :cond_2

    .line 374
    .line 375
    const/4 v2, 0x6

    .line 376
    new-array v3, v2, [B

    .line 377
    .line 378
    mul-int/lit8 v4, v1, 0x6

    .line 379
    .line 380
    int-to-long v4, v4

    .line 381
    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    add-int/lit8 v1, v1, 0x1

    .line 388
    .line 389
    goto :goto_1

    .line 390
    :cond_2
    invoke-interface {p0, p1, v9}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->rangeCancel(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    invoke-static {p3, v8, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;Landroid/os/HwParcel;)V

    .line 395
    .line 396
    .line 397
    return-void

    .line 398
    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttConfig;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->rangeRequest(ILjava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 410
    .line 411
    .line 412
    move-result-object p0

    .line 413
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 420
    .line 421
    .line 422
    return-void

    .line 423
    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttControllerEventCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;

    .line 435
    .line 436
    .line 437
    move-result-object p0

    .line 438
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 445
    .line 446
    .line 447
    return-void

    .line 448
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub$1;

    .line 452
    .line 453
    invoke-direct {p1, p0, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;Landroid/os/HwParcel;)V

    .line 454
    .line 455
    .line 456
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController;->getBoundIface(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$getBoundIfaceCallback;)V

    .line 457
    .line 458
    .line 459
    return-void

    .line 460
    nop

    .line 461
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
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
    const-string v0, "android.hardware.wifi@1.0::IWifiRttController"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiRttController$Stub;->interfaceDescriptor()Ljava/lang/String;

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
