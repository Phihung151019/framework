.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addDppPeerUri:I = 0x1

.field static final TRANSACTION_addExtRadioWork:I = 0x2

.field static final TRANSACTION_addNetwork:I = 0x3

.field static final TRANSACTION_addQosPolicyRequestForScs:I = 0x3f

.field static final TRANSACTION_addRxFilter:I = 0x4

.field static final TRANSACTION_cancelWps:I = 0x5

.field static final TRANSACTION_configureMscs:I = 0x41

.field static final TRANSACTION_disableMscs:I = 0x42

.field static final TRANSACTION_disconnect:I = 0x6

.field static final TRANSACTION_enableAutoReconnect:I = 0x7

.field static final TRANSACTION_filsHlpAddRequest:I = 0x8

.field static final TRANSACTION_filsHlpFlushRequest:I = 0x9

.field static final TRANSACTION_generateDppBootstrapInfoForResponder:I = 0xa

.field static final TRANSACTION_generateSelfDppConfiguration:I = 0xb

.field static final TRANSACTION_getConnectionCapabilities:I = 0xc

.field static final TRANSACTION_getConnectionMloLinksInfo:I = 0xd

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getKeyMgmtCapabilities:I = 0xe

.field static final TRANSACTION_getMacAddress:I = 0xf

.field static final TRANSACTION_getName:I = 0x10

.field static final TRANSACTION_getNetwork:I = 0x11

.field static final TRANSACTION_getSignalPollResults:I = 0x3e

.field static final TRANSACTION_getType:I = 0x12

.field static final TRANSACTION_getWpaDriverCapabilities:I = 0x13

.field static final TRANSACTION_initiateAnqpQuery:I = 0x14

.field static final TRANSACTION_initiateHs20IconQuery:I = 0x15

.field static final TRANSACTION_initiateTdlsDiscover:I = 0x16

.field static final TRANSACTION_initiateTdlsSetup:I = 0x17

.field static final TRANSACTION_initiateTdlsTeardown:I = 0x18

.field static final TRANSACTION_initiateVenueUrlAnqpQuery:I = 0x19

.field static final TRANSACTION_listNetworks:I = 0x1a

.field static final TRANSACTION_reassociate:I = 0x1b

.field static final TRANSACTION_reconnect:I = 0x1c

.field static final TRANSACTION_registerCallback:I = 0x1d

.field static final TRANSACTION_removeAllQosPolicies:I = 0x20

.field static final TRANSACTION_removeDppUri:I = 0x21

.field static final TRANSACTION_removeExtRadioWork:I = 0x22

.field static final TRANSACTION_removeNetwork:I = 0x23

.field static final TRANSACTION_removeQosPolicyForScs:I = 0x40

.field static final TRANSACTION_removeRxFilter:I = 0x24

.field static final TRANSACTION_sendQosPolicyResponse:I = 0x1f

.field static final TRANSACTION_setBtCoexistenceMode:I = 0x25

.field static final TRANSACTION_setBtCoexistenceScanModeEnabled:I = 0x26

.field static final TRANSACTION_setCountryCode:I = 0x27

.field static final TRANSACTION_setExternalSim:I = 0x28

.field static final TRANSACTION_setMboCellularDataStatus:I = 0x29

.field static final TRANSACTION_setPowerSave:I = 0x2a

.field static final TRANSACTION_setQosPolicyFeatureEnabled:I = 0x1e

.field static final TRANSACTION_setSuspendModeEnabled:I = 0x2b

.field static final TRANSACTION_setWpsConfigMethods:I = 0x2c

.field static final TRANSACTION_setWpsDeviceName:I = 0x2d

.field static final TRANSACTION_setWpsDeviceType:I = 0x2e

.field static final TRANSACTION_setWpsManufacturer:I = 0x2f

.field static final TRANSACTION_setWpsModelName:I = 0x30

.field static final TRANSACTION_setWpsModelNumber:I = 0x31

.field static final TRANSACTION_setWpsSerialNumber:I = 0x32

.field static final TRANSACTION_startDppConfiguratorInitiator:I = 0x33

.field static final TRANSACTION_startDppEnrolleeInitiator:I = 0x34

.field static final TRANSACTION_startDppEnrolleeResponder:I = 0x35

.field static final TRANSACTION_startRxFilter:I = 0x36

.field static final TRANSACTION_startWpsPbc:I = 0x37

.field static final TRANSACTION_startWpsPinDisplay:I = 0x38

.field static final TRANSACTION_startWpsPinKeypad:I = 0x39

.field static final TRANSACTION_startWpsRegistrar:I = 0x3a

.field static final TRANSACTION_stopDppInitiator:I = 0x3b

.field static final TRANSACTION_stopDppResponder:I = 0x3c

.field static final TRANSACTION_stopRxFilter:I = 0x3d


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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;
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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->DESCRIPTOR:Ljava/lang/String;

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
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sget-object v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->DESCRIPTOR:Ljava/lang/String;

    .line 2
    .line 3
    const v4, 0xffffff

    .line 4
    .line 5
    .line 6
    const/4 v9, 0x1

    .line 7
    if-lt p1, v9, :cond_0

    .line 8
    .line 9
    if-gt p1, v4, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v5, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v5, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v9

    .line 23
    :cond_1
    if-ne p1, v4, :cond_2

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getInterfaceVersion()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    return v9

    .line 36
    :cond_2
    const v3, 0xfffffe

    .line 37
    .line 38
    .line 39
    if-ne p1, v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getInterfaceHash()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v9

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
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->disableMscs()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :pswitch_1
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MscsParams;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MscsParams;

    .line 75
    .line 76
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->configureMscs(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MscsParams;)V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->removeQosPolicyForScs([B)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :pswitch_3
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 101
    .line 102
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;

    .line 107
    .line 108
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->addQosPolicyRequestForScs([Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :pswitch_4
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getSignalPollResults()[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SignalPollResult;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :pswitch_5
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->stopRxFilter()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->stopDppResponder(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :pswitch_7
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->stopDppInitiator()V

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
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startWpsRegistrar([BLjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startWpsPinKeypad(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startWpsPinDisplay([B)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startWpsPbc([B)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :pswitch_c
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startRxFilter()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startDppEnrolleeResponder(I)V

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
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startDppEnrolleeInitiator(II)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    move-object v0, p0

    .line 285
    invoke-interface/range {v0 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->startDppConfiguratorInitiator(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[B)[B

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_0

    .line 296
    .line 297
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsSerialNumber(Ljava/lang/String;)V

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
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsModelNumber(Ljava/lang/String;)V

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
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsModelName(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsManufacturer(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsDeviceType([B)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_0

    .line 356
    .line 357
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsDeviceName(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setWpsConfigMethods(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_0

    .line 380
    .line 381
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setSuspendModeEnabled(Z)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setPowerSave(Z)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    .line 402
    .line 403
    goto/16 :goto_0

    .line 404
    .line 405
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setMboCellularDataStatus(Z)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setExternalSim(Z)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_0

    .line 428
    .line 429
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setCountryCode([B)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    .line 438
    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setBtCoexistenceScanModeEnabled(Z)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setBtCoexistenceMode(B)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_0

    .line 464
    .line 465
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->removeRxFilter(B)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_0

    .line 476
    .line 477
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->removeNetwork(I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->removeExtRadioWork(I)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    .line 498
    .line 499
    goto/16 :goto_0

    .line 500
    .line 501
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->removeDppUri(I)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_0

    .line 512
    .line 513
    :pswitch_22
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->removeAllQosPolicies()V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    .line 518
    .line 519
    goto/16 :goto_0

    .line 520
    .line 521
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    sget-object v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 530
    .line 531
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    check-cast v3, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;

    .line 536
    .line 537
    invoke-interface {p0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->sendQosPolicyResponse(IZ[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_0

    .line 544
    .line 545
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 546
    .line 547
    .line 548
    move-result v1

    .line 549
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->setQosPolicyFeatureEnabled(Z)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_0

    .line 556
    .line 557
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    .line 570
    .line 571
    goto/16 :goto_0

    .line 572
    .line 573
    :pswitch_26
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->reconnect()V

    .line 574
    .line 575
    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_0

    .line 580
    .line 581
    :pswitch_27
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->reassociate()V

    .line 582
    .line 583
    .line 584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_0

    .line 588
    .line 589
    :pswitch_28
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->listNetworks()[I

    .line 590
    .line 591
    .line 592
    move-result-object v0

    .line 593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    .line 595
    .line 596
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 597
    .line 598
    .line 599
    goto/16 :goto_0

    .line 600
    .line 601
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->initiateVenueUrlAnqpQuery([B)V

    .line 606
    .line 607
    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    .line 610
    .line 611
    goto/16 :goto_0

    .line 612
    .line 613
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->initiateTdlsTeardown([B)V

    .line 618
    .line 619
    .line 620
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    .line 622
    .line 623
    goto/16 :goto_0

    .line 624
    .line 625
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->initiateTdlsSetup([B)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    .line 634
    .line 635
    goto/16 :goto_0

    .line 636
    .line 637
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->initiateTdlsDiscover([B)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    .line 646
    .line 647
    goto/16 :goto_0

    .line 648
    .line 649
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->initiateHs20IconQuery([BLjava/lang/String;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    .line 662
    .line 663
    goto/16 :goto_0

    .line 664
    .line 665
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    invoke-interface {p0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->initiateAnqpQuery([B[I[I)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    .line 682
    .line 683
    goto/16 :goto_0

    .line 684
    .line 685
    :pswitch_2f
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getWpaDriverCapabilities()I

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    .line 691
    .line 692
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 693
    .line 694
    .line 695
    goto/16 :goto_0

    .line 696
    .line 697
    :pswitch_30
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getType()I

    .line 698
    .line 699
    .line 700
    move-result v0

    .line 701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    .line 703
    .line 704
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    .line 706
    .line 707
    goto/16 :goto_0

    .line 708
    .line 709
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    .line 719
    .line 720
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 721
    .line 722
    .line 723
    goto/16 :goto_0

    .line 724
    .line 725
    :pswitch_32
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getName()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    .line 731
    .line 732
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    goto/16 :goto_0

    .line 736
    .line 737
    :pswitch_33
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getMacAddress()[B

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    .line 743
    .line 744
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 745
    .line 746
    .line 747
    goto/16 :goto_0

    .line 748
    .line 749
    :pswitch_34
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getKeyMgmtCapabilities()I

    .line 750
    .line 751
    .line 752
    move-result v0

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    .line 755
    .line 756
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    .line 758
    .line 759
    goto/16 :goto_0

    .line 760
    .line 761
    :pswitch_35
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getConnectionMloLinksInfo()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MloLinksInfo;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    .line 767
    .line 768
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_0

    .line 772
    .line 773
    :pswitch_36
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->getConnectionCapabilities()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ConnectionCapabilities;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    .line 779
    .line 780
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 781
    .line 782
    .line 783
    goto/16 :goto_0

    .line 784
    .line 785
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->generateSelfDppConfiguration(Ljava/lang/String;[B)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    .line 798
    .line 799
    goto/16 :goto_0

    .line 800
    .line 801
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 810
    .line 811
    .line 812
    move-result v3

    .line 813
    invoke-interface {p0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->generateDppBootstrapInfoForResponder([BLjava/lang/String;I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppResponderBootstrapInfo;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    .line 819
    .line 820
    invoke-virtual {p3, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 821
    .line 822
    .line 823
    goto :goto_0

    .line 824
    :pswitch_39
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->filsHlpFlushRequest()V

    .line 825
    .line 826
    .line 827
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    .line 829
    .line 830
    goto :goto_0

    .line 831
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->filsHlpAddRequest([B[B)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    .line 844
    .line 845
    goto :goto_0

    .line 846
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 847
    .line 848
    .line 849
    move-result v1

    .line 850
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->enableAutoReconnect(Z)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    .line 855
    .line 856
    goto :goto_0

    .line 857
    :pswitch_3c
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->disconnect()V

    .line 858
    .line 859
    .line 860
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    .line 862
    .line 863
    goto :goto_0

    .line 864
    :pswitch_3d
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->cancelWps()V

    .line 865
    .line 866
    .line 867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    .line 869
    .line 870
    goto :goto_0

    .line 871
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 872
    .line 873
    .line 874
    move-result v1

    .line 875
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->addRxFilter(B)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    .line 880
    .line 881
    goto :goto_0

    .line 882
    :pswitch_3f
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->addNetwork()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;

    .line 883
    .line 884
    .line 885
    move-result-object v0

    .line 886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    .line 888
    .line 889
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 890
    .line 891
    .line 892
    goto :goto_0

    .line 893
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 898
    .line 899
    .line 900
    move-result v2

    .line 901
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 902
    .line 903
    .line 904
    move-result v3

    .line 905
    invoke-interface {p0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->addExtRadioWork(Ljava/lang/String;II)I

    .line 906
    .line 907
    .line 908
    move-result v0

    .line 909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    .line 911
    .line 912
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    .line 914
    .line 915
    goto :goto_0

    .line 916
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIface;->addDppPeerUri(Ljava/lang/String;)I

    .line 921
    .line 922
    .line 923
    move-result v0

    .line 924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    .line 926
    .line 927
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    .line 929
    .line 930
    :goto_0
    return v9

    .line 931
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_41
        :pswitch_40
        :pswitch_3f
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
.end method
