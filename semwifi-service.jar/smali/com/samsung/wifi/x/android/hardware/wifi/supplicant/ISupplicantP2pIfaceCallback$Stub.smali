.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onDeviceFound:I = 0x1

.field static final TRANSACTION_onDeviceFoundWithParams:I = 0x17

.field static final TRANSACTION_onDeviceFoundWithVendorElements:I = 0x12

.field static final TRANSACTION_onDeviceLost:I = 0x2

.field static final TRANSACTION_onFindStopped:I = 0x3

.field static final TRANSACTION_onGoNegotiationCompleted:I = 0x4

.field static final TRANSACTION_onGoNegotiationRequest:I = 0x5

.field static final TRANSACTION_onGoNegotiationRequestWithParams:I = 0x18

.field static final TRANSACTION_onGroupFormationFailure:I = 0x6

.field static final TRANSACTION_onGroupFormationSuccess:I = 0x7

.field static final TRANSACTION_onGroupFrequencyChanged:I = 0x11

.field static final TRANSACTION_onGroupRemoved:I = 0x8

.field static final TRANSACTION_onGroupStarted:I = 0x9

.field static final TRANSACTION_onGroupStartedWithParams:I = 0x13

.field static final TRANSACTION_onInvitationReceived:I = 0xa

.field static final TRANSACTION_onInvitationReceivedWithParams:I = 0x19

.field static final TRANSACTION_onInvitationResult:I = 0xb

.field static final TRANSACTION_onPeerClientDisconnected:I = 0x15

.field static final TRANSACTION_onPeerClientJoined:I = 0x14

.field static final TRANSACTION_onProvisionDiscoveryCompleted:I = 0xc

.field static final TRANSACTION_onProvisionDiscoveryCompletedEvent:I = 0x16

.field static final TRANSACTION_onR2DeviceFound:I = 0xd

.field static final TRANSACTION_onServiceDiscoveryResponse:I = 0xe

.field static final TRANSACTION_onStaAuthorized:I = 0xf

.field static final TRANSACTION_onStaDeauthorized:I = 0x10


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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;
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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

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
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 2
    .line 3
    const v5, 0xffffff

    .line 4
    .line 5
    .line 6
    const/4 v11, 0x1

    .line 7
    if-lt p1, v11, :cond_0

    .line 8
    .line 9
    if-gt p1, v5, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v6, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v6, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v11

    .line 23
    :cond_1
    if-ne p1, v5, :cond_2

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->getInterfaceVersion()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    return v11

    .line 36
    :cond_2
    const v4, 0xfffffe

    .line 37
    .line 38
    .line 39
    if-ne p1, v4, :cond_3

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->getInterfaceHash()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v11

    .line 52
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    return v0

    .line 60
    :pswitch_0
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pInvitationEventParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pInvitationEventParams;

    .line 67
    .line 68
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onInvitationReceivedWithParams(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pInvitationEventParams;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :pswitch_1
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGoNegotiationReqEventParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 74
    .line 75
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGoNegotiationReqEventParams;

    .line 80
    .line 81
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGoNegotiationRequestWithParams(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGoNegotiationReqEventParams;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_2
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 87
    .line 88
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;

    .line 93
    .line 94
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onDeviceFoundWithParams(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :pswitch_3
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 100
    .line 101
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;

    .line 106
    .line 107
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onProvisionDiscoveryCompletedEvent(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :pswitch_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientDisconnectedEventParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 113
    .line 114
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientDisconnectedEventParams;

    .line 119
    .line 120
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onPeerClientDisconnected(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientDisconnectedEventParams;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :pswitch_5
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 126
    .line 127
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;

    .line 132
    .line 133
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onPeerClientJoined(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :pswitch_6
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 139
    .line 140
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;

    .line 145
    .line 146
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGroupStartedWithParams(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;)V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    move-object v0, p0

    .line 192
    invoke-interface/range {v0 .. v10}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onDeviceFoundWithVendorElements([B[B[BLjava/lang/String;IBI[B[B[B)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGroupFrequencyChanged(Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onStaDeauthorized([B[B)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onStaAuthorized([B[B)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    int-to-char v2, v2

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-interface {p0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onServiceDiscoveryResponse([BC[B)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 287
    .line 288
    .line 289
    move-result-object v9

    .line 290
    move-object v0, p0

    .line 291
    invoke-interface/range {v0 .. v9}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onR2DeviceFound([B[B[BLjava/lang/String;IBI[B[B)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 301
    .line 302
    .line 303
    move-result v2

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    move-object v0, p0

    .line 317
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onProvisionDiscoveryCompleted([BZBILjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onInvitationResult([BI)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_0

    .line 334
    .line 335
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 352
    .line 353
    .line 354
    move-result v5

    .line 355
    move-object v0, p0

    .line 356
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onInvitationReceived([B[B[BII)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 390
    .line 391
    .line 392
    move-result v8

    .line 393
    move-object v0, p0

    .line 394
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGroupStarted(Ljava/lang/String;Z[BI[BLjava/lang/String;[BZ)V

    .line 395
    .line 396
    .line 397
    goto :goto_0

    .line 398
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 403
    .line 404
    .line 405
    move-result v2

    .line 406
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGroupRemoved(Ljava/lang/String;Z)V

    .line 407
    .line 408
    .line 409
    goto :goto_0

    .line 410
    :pswitch_12
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGroupFormationSuccess()V

    .line 411
    .line 412
    .line 413
    goto :goto_0

    .line 414
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGroupFormationFailure(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto :goto_0

    .line 422
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGoNegotiationRequest([BI)V

    .line 431
    .line 432
    .line 433
    goto :goto_0

    .line 434
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onGoNegotiationCompleted(I)V

    .line 439
    .line 440
    .line 441
    goto :goto_0

    .line 442
    :pswitch_16
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onFindStopped()V

    .line 443
    .line 444
    .line 445
    goto :goto_0

    .line 446
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onDeviceLost([B)V

    .line 451
    .line 452
    .line 453
    goto :goto_0

    .line 454
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 471
    .line 472
    .line 473
    move-result v5

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 475
    .line 476
    .line 477
    move-result v6

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 479
    .line 480
    .line 481
    move-result v7

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    move-object v0, p0

    .line 487
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->onDeviceFound([B[B[BLjava/lang/String;IBI[B)V

    .line 488
    .line 489
    .line 490
    :goto_0
    return v11

    .line 491
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
.end method
