.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_configureChip:I = 0x1

.field static final TRANSACTION_createApIface:I = 0x2

.field static final TRANSACTION_createBridgedApIface:I = 0x3

.field static final TRANSACTION_createNanIface:I = 0x4

.field static final TRANSACTION_createP2pIface:I = 0x5

.field static final TRANSACTION_createRttController:I = 0x6

.field static final TRANSACTION_createStaIface:I = 0x7

.field static final TRANSACTION_enableDebugErrorAlerts:I = 0x8

.field static final TRANSACTION_enableStaChannelForPeerNetwork:I = 0x30

.field static final TRANSACTION_flushRingBufferToFile:I = 0x9

.field static final TRANSACTION_forceDumpToDebugRingBuffer:I = 0xa

.field static final TRANSACTION_getApIface:I = 0xb

.field static final TRANSACTION_getApIfaceNames:I = 0xc

.field static final TRANSACTION_getAvailableModes:I = 0xd

.field static final TRANSACTION_getDebugHostWakeReasonStats:I = 0xf

.field static final TRANSACTION_getDebugRingBuffersStatus:I = 0x10

.field static final TRANSACTION_getFeatureSet:I = 0xe

.field static final TRANSACTION_getId:I = 0x11

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getMode:I = 0x12

.field static final TRANSACTION_getNanIface:I = 0x13

.field static final TRANSACTION_getNanIfaceNames:I = 0x14

.field static final TRANSACTION_getP2pIface:I = 0x15

.field static final TRANSACTION_getP2pIfaceNames:I = 0x16

.field static final TRANSACTION_getStaIface:I = 0x17

.field static final TRANSACTION_getStaIfaceNames:I = 0x18

.field static final TRANSACTION_getSupportedRadioCombinations:I = 0x19

.field static final TRANSACTION_getUsableChannels:I = 0x1b

.field static final TRANSACTION_getWifiChipCapabilities:I = 0x1a

.field static final TRANSACTION_registerEventCallback:I = 0x1d

.field static final TRANSACTION_removeApIface:I = 0x1e

.field static final TRANSACTION_removeIfaceInstanceFromBridgedApIface:I = 0x1f

.field static final TRANSACTION_removeNanIface:I = 0x20

.field static final TRANSACTION_removeP2pIface:I = 0x21

.field static final TRANSACTION_removeStaIface:I = 0x22

.field static final TRANSACTION_requestChipDebugInfo:I = 0x23

.field static final TRANSACTION_requestDriverDebugDump:I = 0x24

.field static final TRANSACTION_requestFirmwareDebugDump:I = 0x25

.field static final TRANSACTION_resetTxPowerScenario:I = 0x26

.field static final TRANSACTION_selectTxPowerScenario:I = 0x27

.field static final TRANSACTION_setAfcChannelAllowance:I = 0x1c

.field static final TRANSACTION_setCoexUnsafeChannels:I = 0x28

.field static final TRANSACTION_setCountryCode:I = 0x29

.field static final TRANSACTION_setLatencyMode:I = 0x2a

.field static final TRANSACTION_setMloMode:I = 0x31

.field static final TRANSACTION_setMultiStaPrimaryConnection:I = 0x2b

.field static final TRANSACTION_setMultiStaUseCase:I = 0x2c

.field static final TRANSACTION_startLoggingToDebugRingBuffer:I = 0x2d

.field static final TRANSACTION_stopLoggingToDebugRingBuffer:I = 0x2e

.field static final TRANSACTION_triggerSubsystemRestart:I = 0x2f


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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;
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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->DESCRIPTOR:Ljava/lang/String;

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
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->DESCRIPTOR:Ljava/lang/String;

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
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getInterfaceVersion()I

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
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getInterfaceHash()Ljava/lang/String;

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
    packed-switch p1, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setMloMode(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->enableStaChannelForPeerNetwork(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :pswitch_2
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->triggerSubsystemRestart()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :pswitch_3
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->stopLoggingToDebugRingBuffer()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 105
    .line 106
    .line 107
    move-result p4

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    invoke-interface {p0, p1, p4, v0, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_0

    .line 123
    .line 124
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setMultiStaUseCase(B)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setMultiStaPrimaryConnection(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setLatencyMode(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :pswitch_8
    const/4 p1, 0x2

    .line 161
    filled-new-array {p1}, [I

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-class p4, [B

    .line 166
    .line 167
    invoke-virtual {p2, p4, p1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, [B

    .line 172
    .line 173
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setCountryCode([B)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :pswitch_9
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 182
    .line 183
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, [Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;

    .line 188
    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 190
    .line 191
    .line 192
    move-result p2

    .line 193
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setCoexUnsafeChannels([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->selectTxPowerScenario(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :pswitch_b
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->resetTxPowerScenario()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :pswitch_c
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->requestFirmwareDebugDump()[B

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :pswitch_d
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->requestDriverDebugDump()[B

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :pswitch_e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->requestChipDebugInfo()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipDebugInfo;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->removeStaIface(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->removeP2pIface(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->removeNanIface(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->removeIfaceInstanceFromBridgedApIface(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->removeApIface(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_0

    .line 320
    .line 321
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChipEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChipEventCallback;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->registerEventCallback(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChipEventCallback;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :pswitch_15
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 338
    .line 339
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance;

    .line 344
    .line 345
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->setAfcChannelAllowance(Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 354
    .line 355
    .line 356
    move-result p1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 358
    .line 359
    .line 360
    move-result p4

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 362
    .line 363
    .line 364
    move-result p2

    .line 365
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getUsableChannels(III)[Lcom/samsung/wifi/x/android/hardware/wifi/WifiUsableChannel;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_0

    .line 376
    .line 377
    :pswitch_17
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getWifiChipCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/WifiChipCapabilities;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    .line 383
    .line 384
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 385
    .line 386
    .line 387
    goto/16 :goto_0

    .line 388
    .line 389
    :pswitch_18
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getSupportedRadioCombinations()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiRadioCombination;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_0

    .line 400
    .line 401
    :pswitch_19
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getStaIfaceNames()[Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getStaIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_0

    .line 428
    .line 429
    :pswitch_1b
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getP2pIfaceNames()[Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object p1

    .line 445
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getP2pIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiP2pIface;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_0

    .line 456
    .line 457
    :pswitch_1d
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getNanIfaceNames()[Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p0

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_0

    .line 468
    .line 469
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getNanIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;

    .line 474
    .line 475
    .line 476
    move-result-object p0

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_0

    .line 484
    .line 485
    :pswitch_1f
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getMode()I

    .line 486
    .line 487
    .line 488
    move-result p0

    .line 489
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    .line 491
    .line 492
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_0

    .line 496
    .line 497
    :pswitch_20
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getId()I

    .line 498
    .line 499
    .line 500
    move-result p0

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    .line 506
    .line 507
    goto/16 :goto_0

    .line 508
    .line 509
    :pswitch_21
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getDebugRingBuffersStatus()[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRingBufferStatus;

    .line 510
    .line 511
    .line 512
    move-result-object p0

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 517
    .line 518
    .line 519
    goto/16 :goto_0

    .line 520
    .line 521
    :pswitch_22
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getDebugHostWakeReasonStats()Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;

    .line 522
    .line 523
    .line 524
    move-result-object p0

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 529
    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :pswitch_23
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getFeatureSet()I

    .line 534
    .line 535
    .line 536
    move-result p0

    .line 537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    .line 539
    .line 540
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_0

    .line 544
    .line 545
    :pswitch_24
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getAvailableModes()[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipMode;

    .line 546
    .line 547
    .line 548
    move-result-object p0

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    .line 551
    .line 552
    invoke-virtual {p3, p0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_0

    .line 556
    .line 557
    :pswitch_25
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getApIfaceNames()[Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object p0

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    .line 563
    .line 564
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_0

    .line 568
    .line 569
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->getApIface(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiApIface;

    .line 574
    .line 575
    .line 576
    move-result-object p0

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    .line 579
    .line 580
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 581
    .line 582
    .line 583
    goto/16 :goto_0

    .line 584
    .line 585
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object p1

    .line 589
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->forceDumpToDebugRingBuffer(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    .line 594
    .line 595
    goto :goto_0

    .line 596
    :pswitch_28
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->flushRingBufferToFile()V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    .line 601
    .line 602
    goto :goto_0

    .line 603
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 604
    .line 605
    .line 606
    move-result p1

    .line 607
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->enableDebugErrorAlerts(Z)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    .line 612
    .line 613
    goto :goto_0

    .line 614
    :pswitch_2a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->createStaIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 615
    .line 616
    .line 617
    move-result-object p0

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    .line 620
    .line 621
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 622
    .line 623
    .line 624
    goto :goto_0

    .line 625
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;

    .line 630
    .line 631
    .line 632
    move-result-object p1

    .line 633
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->createRttController(Lcom/samsung/wifi/x/android/hardware/wifi/IWifiStaIface;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiRttController;

    .line 634
    .line 635
    .line 636
    move-result-object p0

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    .line 639
    .line 640
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 641
    .line 642
    .line 643
    goto :goto_0

    .line 644
    :pswitch_2c
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->createP2pIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiP2pIface;

    .line 645
    .line 646
    .line 647
    move-result-object p0

    .line 648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    .line 650
    .line 651
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 652
    .line 653
    .line 654
    goto :goto_0

    .line 655
    :pswitch_2d
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->createNanIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIface;

    .line 656
    .line 657
    .line 658
    move-result-object p0

    .line 659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    .line 661
    .line 662
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 663
    .line 664
    .line 665
    goto :goto_0

    .line 666
    :pswitch_2e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->createBridgedApIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiApIface;

    .line 667
    .line 668
    .line 669
    move-result-object p0

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    .line 672
    .line 673
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 674
    .line 675
    .line 676
    goto :goto_0

    .line 677
    :pswitch_2f
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->createApIface()Lcom/samsung/wifi/x/android/hardware/wifi/IWifiApIface;

    .line 678
    .line 679
    .line 680
    move-result-object p0

    .line 681
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    .line 683
    .line 684
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 685
    .line 686
    .line 687
    goto :goto_0

    .line 688
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 689
    .line 690
    .line 691
    move-result p1

    .line 692
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip;->configureChip(I)V

    .line 693
    .line 694
    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    .line 697
    .line 698
    :goto_0
    return v2

    .line 699
    :pswitch_data_0
    .packed-switch 0x1
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
.end method
