.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;
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
        0x32t
        0x5ct
        -0x6ct
        -0xdt
        -0x1ft
        -0x5bt
        0x65t
        -0x4bt
        0x6bt
        -0x44t
        0x74t
        -0x6t
        -0x23t
        -0x43t
        0xbt
        -0x59t
        -0x35t
        -0x7et
        0x4ft
        0x26t
        0x3dt
        -0x34t
        -0x7t
        -0x21t
        -0x1t
        0x2dt
        -0x51t
        0x62t
        -0x48t
        0x6et
        -0x29t
        0x74t
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
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

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
    const-string p0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

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
    const-string p4, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p4, 0x0

    .line 7
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 8
    .line 9
    sparse-switch p1, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :sswitch_0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->notifySyspropsChanged()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p3}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->ping()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->setHALInstrumentation()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Landroid/os/HwBlob;

    .line 68
    .line 69
    const/16 p2, 0x10

    .line 70
    .line 71
    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    const-wide/16 v0, 0x8

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 81
    .line 82
    .line 83
    const-wide/16 v0, 0xc

    .line 84
    .line 85
    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroid/os/HwBlob;

    .line 89
    .line 90
    mul-int/lit8 v1, p2, 0x20

    .line 91
    .line 92
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 93
    .line 94
    .line 95
    :goto_0
    if-ge p4, p2, :cond_1

    .line 96
    .line 97
    mul-int/lit8 v1, p4, 0x20

    .line 98
    .line 99
    int-to-long v1, v1

    .line 100
    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, [B

    .line 105
    .line 106
    if-eqz v3, :cond_0

    .line 107
    .line 108
    array-length v4, v3

    .line 109
    const/16 v5, 0x20

    .line 110
    .line 111
    if-ne v4, v5, :cond_0

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 114
    .line 115
    .line 116
    add-int/lit8 p4, p4, 0x1

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
    const-wide/16 v1, 0x0

    .line 128
    .line 129
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

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
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

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
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

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
    move-result-object p2

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

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
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p3, p4}, Landroid/os/HwParcel;->writeStatus(I)V

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
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathTerminated(I)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 209
    .line 210
    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :pswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;

    .line 224
    .line 225
    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDataPathRequest(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathRequestInd;)V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :pswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 243
    .line 244
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventTransmitFollowup(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :pswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;

    .line 258
    .line 259
    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 263
    .line 264
    .line 265
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventFollowupReceived(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanFollowupReceivedInd;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :pswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 277
    .line 278
    .line 279
    move-result p2

    .line 280
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventMatchExpired(BI)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :pswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;

    .line 288
    .line 289
    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 293
    .line 294
    .line 295
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventMatch(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanMatchInd;)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :pswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 307
    .line 308
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 312
    .line 313
    .line 314
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventSubscribeTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 315
    .line 316
    .line 317
    return-void

    .line 318
    :pswitch_8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 326
    .line 327
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 331
    .line 332
    .line 333
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventPublishTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 334
    .line 335
    .line 336
    return-void

    .line 337
    :pswitch_9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 341
    .line 342
    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 346
    .line 347
    .line 348
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventDisabled(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 349
    .line 350
    .line 351
    return-void

    .line 352
    :pswitch_a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;

    .line 356
    .line 357
    invoke-direct {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 361
    .line 362
    .line 363
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->eventClusterEvent(Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanClusterEventInd;)V

    .line 364
    .line 365
    .line 366
    return-void

    .line 367
    :pswitch_b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 371
    .line 372
    .line 373
    move-result p1

    .line 374
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 375
    .line 376
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 380
    .line 381
    .line 382
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyTerminateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :pswitch_c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 390
    .line 391
    .line 392
    move-result p1

    .line 393
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 394
    .line 395
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 399
    .line 400
    .line 401
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyRespondToDataPathIndicationResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :pswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 409
    .line 410
    .line 411
    move-result p1

    .line 412
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 413
    .line 414
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 421
    .line 422
    .line 423
    move-result p2

    .line 424
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyInitiateDataPathResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;I)V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :pswitch_e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 432
    .line 433
    .line 434
    move-result p1

    .line 435
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 436
    .line 437
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 441
    .line 442
    .line 443
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyDeleteDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :pswitch_f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 451
    .line 452
    .line 453
    move-result p1

    .line 454
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 455
    .line 456
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 460
    .line 461
    .line 462
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyCreateDataInterfaceResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :pswitch_10
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 470
    .line 471
    .line 472
    move-result p1

    .line 473
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 474
    .line 475
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 479
    .line 480
    .line 481
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyTransmitFollowupResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 482
    .line 483
    .line 484
    return-void

    .line 485
    :pswitch_11
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 489
    .line 490
    .line 491
    move-result p1

    .line 492
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 493
    .line 494
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 495
    .line 496
    .line 497
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 498
    .line 499
    .line 500
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStopSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 501
    .line 502
    .line 503
    return-void

    .line 504
    :pswitch_12
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 508
    .line 509
    .line 510
    move-result p1

    .line 511
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 512
    .line 513
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 520
    .line 521
    .line 522
    move-result p2

    .line 523
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStartSubscribeResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V

    .line 524
    .line 525
    .line 526
    return-void

    .line 527
    :pswitch_13
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 531
    .line 532
    .line 533
    move-result p1

    .line 534
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 535
    .line 536
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 537
    .line 538
    .line 539
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 540
    .line 541
    .line 542
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStopPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 543
    .line 544
    .line 545
    return-void

    .line 546
    :pswitch_14
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 550
    .line 551
    .line 552
    move-result p1

    .line 553
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 554
    .line 555
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 556
    .line 557
    .line 558
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 562
    .line 563
    .line 564
    move-result p2

    .line 565
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyStartPublishResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;B)V

    .line 566
    .line 567
    .line 568
    return-void

    .line 569
    :pswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 573
    .line 574
    .line 575
    move-result p1

    .line 576
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 577
    .line 578
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 579
    .line 580
    .line 581
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 582
    .line 583
    .line 584
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyDisableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 585
    .line 586
    .line 587
    return-void

    .line 588
    :pswitch_16
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 592
    .line 593
    .line 594
    move-result p1

    .line 595
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 596
    .line 597
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 598
    .line 599
    .line 600
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 601
    .line 602
    .line 603
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyConfigResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 604
    .line 605
    .line 606
    return-void

    .line 607
    :pswitch_17
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 611
    .line 612
    .line 613
    move-result p1

    .line 614
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 615
    .line 616
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 617
    .line 618
    .line 619
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 620
    .line 621
    .line 622
    invoke-interface {p0, p1, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyEnableResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;)V

    .line 623
    .line 624
    .line 625
    return-void

    .line 626
    :pswitch_18
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 630
    .line 631
    .line 632
    move-result p1

    .line 633
    new-instance p3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;

    .line 634
    .line 635
    invoke-direct {p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;-><init>()V

    .line 636
    .line 637
    .line 638
    invoke-virtual {p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 639
    .line 640
    .line 641
    new-instance p4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;

    .line 642
    .line 643
    invoke-direct {p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;-><init>()V

    .line 644
    .line 645
    .line 646
    invoke-virtual {p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->readFromParcel(Landroid/os/HwParcel;)V

    .line 647
    .line 648
    .line 649
    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback;->notifyCapabilitiesResponse(SLcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiNanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;)V

    .line 650
    .line 651
    .line 652
    return-void

    .line 653
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
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
    const-string v0, "android.hardware.wifi@1.0::IWifiNanIfaceEventCallback"

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
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiNanIfaceEventCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
