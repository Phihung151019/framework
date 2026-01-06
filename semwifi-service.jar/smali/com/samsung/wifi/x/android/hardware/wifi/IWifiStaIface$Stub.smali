.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_configureRoaming:I = 0x2

.field static final TRANSACTION_disableLinkLayerStatsCollection:I = 0x3

.field static final TRANSACTION_enableLinkLayerStatsCollection:I = 0x4

.field static final TRANSACTION_enableNdOffload:I = 0x5

.field static final TRANSACTION_getApfPacketFilterCapabilities:I = 0x6

.field static final TRANSACTION_getBackgroundScanCapabilities:I = 0x7

.field static final TRANSACTION_getDebugRxPacketFates:I = 0x9

.field static final TRANSACTION_getDebugTxPacketFates:I = 0xa

.field static final TRANSACTION_getFactoryMacAddress:I = 0xb

.field static final TRANSACTION_getFeatureSet:I = 0x8

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getLinkLayerStats:I = 0xc

.field static final TRANSACTION_getName:I = 0x1

.field static final TRANSACTION_getRoamingCapabilities:I = 0xd

.field static final TRANSACTION_installApfPacketFilter:I = 0xe

.field static final TRANSACTION_readApfPacketFilterData:I = 0xf

.field static final TRANSACTION_registerEventCallback:I = 0x10

.field static final TRANSACTION_setDtimMultiplier:I = 0x1b

.field static final TRANSACTION_setMacAddress:I = 0x11

.field static final TRANSACTION_setRoamingState:I = 0x12

.field static final TRANSACTION_setScanMode:I = 0x13

.field static final TRANSACTION_startBackgroundScan:I = 0x14

.field static final TRANSACTION_startDebugPacketFateMonitoring:I = 0x15

.field static final TRANSACTION_startRssiMonitoring:I = 0x16

.field static final TRANSACTION_startSendingKeepAlivePackets:I = 0x17

.field static final TRANSACTION_stopBackgroundScan:I = 0x18

.field static final TRANSACTION_stopRssiMonitoring:I = 0x19

.field static final TRANSACTION_stopSendingKeepAlivePackets:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->DESCRIPTOR:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->DESCRIPTOR:Ljava/lang/String;

    .line 2
    .line 3
    const v1, 0xffffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt p1, v2, :cond_0

    .line 8
    .line 9
    if-gt p1, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v3, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getInterfaceVersion()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_2
    const v0, 0xfffffe

    .line 37
    .line 38
    .line 39
    if-ne p1, v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getInterfaceHash()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :cond_3
    const-class v0, [B

    .line 53
    .line 54
    const/4 v1, 0x6

    .line 55
    packed-switch p1, :pswitch_data_0

    .line 56
    .line 57
    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    return p0

    .line 63
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->setDtimMultiplier(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->stopSendingKeepAlivePackets(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->stopRssiMonitoring(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->stopBackgroundScan(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    int-to-char v6, p1

    .line 124
    filled-new-array {v1}, [I

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p2, v0, p1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    move-object v7, p1

    .line 133
    check-cast v7, [B

    .line 134
    .line 135
    filled-new-array {v1}, [I

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p2, v0, p1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    move-object v8, p1

    .line 144
    check-cast v8, [B

    .line 145
    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    move-object v3, p0

    .line 151
    invoke-interface/range {v3 .. v9}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->startSendingKeepAlivePackets(I[BC[B[BI)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :pswitch_5
    move-object v3, p0

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    invoke-interface {v3, p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->startRssiMonitoring(III)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :pswitch_6
    move-object v3, p0

    .line 181
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->startDebugPacketFateMonitoring()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :pswitch_7
    move-object v3, p0

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 195
    .line 196
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;

    .line 201
    .line 202
    invoke-interface {v3, p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->startBackgroundScan(ILcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :pswitch_8
    move-object v3, p0

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 212
    .line 213
    .line 214
    move-result p0

    .line 215
    invoke-interface {v3, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->setScanMode(Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :pswitch_9
    move-object v3, p0

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    invoke-interface {v3, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->setRoamingState(B)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :pswitch_a
    move-object v3, p0

    .line 237
    filled-new-array {v1}, [I

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {p2, v0, p0}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    check-cast p0, [B

    .line 246
    .line 247
    invoke-interface {v3, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->setMacAddress([B)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :pswitch_b
    move-object v3, p0

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIfaceEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIfaceEventCallback;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-interface {v3, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIfaceEventCallback;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :pswitch_c
    move-object v3, p0

    .line 273
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->readApfPacketFilterData()[B

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :pswitch_d
    move-object v3, p0

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-interface {v3, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->installApfPacketFilter([B)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :pswitch_e
    move-object v3, p0

    .line 299
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getRoamingCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingCapabilities;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :pswitch_f
    move-object v3, p0

    .line 312
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getLinkLayerStats()Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerStats;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_0

    .line 323
    .line 324
    :pswitch_10
    move-object v3, p0

    .line 325
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getFactoryMacAddress()[B

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    .line 331
    .line 332
    filled-new-array {v1}, [I

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {p3, p0, v2, p1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :pswitch_11
    move-object v3, p0

    .line 342
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getDebugTxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_0

    .line 353
    .line 354
    :pswitch_12
    move-object v3, p0

    .line 355
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getDebugRxPacketFates()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :pswitch_13
    move-object v3, p0

    .line 368
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getFeatureSet()I

    .line 369
    .line 370
    .line 371
    move-result p0

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    .line 377
    .line 378
    goto :goto_0

    .line 379
    :pswitch_14
    move-object v3, p0

    .line 380
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getBackgroundScanCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanCapabilities;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 388
    .line 389
    .line 390
    goto :goto_0

    .line 391
    :pswitch_15
    move-object v3, p0

    .line 392
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getApfPacketFilterCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/StaApfPacketFilterCapabilities;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 400
    .line 401
    .line 402
    goto :goto_0

    .line 403
    :pswitch_16
    move-object v3, p0

    .line 404
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 405
    .line 406
    .line 407
    move-result p0

    .line 408
    invoke-interface {v3, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->enableNdOffload(Z)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    .line 413
    .line 414
    goto :goto_0

    .line 415
    :pswitch_17
    move-object v3, p0

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 417
    .line 418
    .line 419
    move-result p0

    .line 420
    invoke-interface {v3, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->enableLinkLayerStatsCollection(Z)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    .line 425
    .line 426
    goto :goto_0

    .line 427
    :pswitch_18
    move-object v3, p0

    .line 428
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->disableLinkLayerStatsCollection()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    .line 433
    .line 434
    goto :goto_0

    .line 435
    :pswitch_19
    move-object v3, p0

    .line 436
    sget-object p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 437
    .line 438
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    check-cast p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;

    .line 443
    .line 444
    invoke-interface {v3, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->configureRoaming(Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    .line 449
    .line 450
    goto :goto_0

    .line 451
    :pswitch_1a
    move-object v3, p0

    .line 452
    invoke-interface {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;->getName()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    :goto_0
    return v2

    .line 463
    :pswitch_data_0
    .packed-switch 0x1
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
.end method
