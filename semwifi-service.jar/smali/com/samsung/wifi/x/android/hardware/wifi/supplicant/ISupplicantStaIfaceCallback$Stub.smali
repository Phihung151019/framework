.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onAnqpQueryDone:I = 0x1

.field static final TRANSACTION_onAssociationRejected:I = 0x2

.field static final TRANSACTION_onAuthenticationTimeout:I = 0x3

.field static final TRANSACTION_onAuxiliarySupplicantEvent:I = 0x4

.field static final TRANSACTION_onBssFrequencyChanged:I = 0x21

.field static final TRANSACTION_onBssTmHandlingDone:I = 0x5

.field static final TRANSACTION_onBssidChanged:I = 0x6

.field static final TRANSACTION_onDisconnected:I = 0x7

.field static final TRANSACTION_onDppConfigReceived:I = 0x1f

.field static final TRANSACTION_onDppConnectionStatusResultSent:I = 0x20

.field static final TRANSACTION_onDppFailure:I = 0x8

.field static final TRANSACTION_onDppProgress:I = 0x9

.field static final TRANSACTION_onDppSuccess:I = 0xa

.field static final TRANSACTION_onDppSuccessConfigReceived:I = 0xb

.field static final TRANSACTION_onDppSuccessConfigSent:I = 0xc

.field static final TRANSACTION_onEapFailure:I = 0xd

.field static final TRANSACTION_onExtRadioWorkStart:I = 0xe

.field static final TRANSACTION_onExtRadioWorkTimeout:I = 0xf

.field static final TRANSACTION_onHs20DeauthImminentNotice:I = 0x10

.field static final TRANSACTION_onHs20IconQueryDone:I = 0x11

.field static final TRANSACTION_onHs20SubscriptionRemediation:I = 0x12

.field static final TRANSACTION_onHs20TermsAndConditionsAcceptanceRequestedNotification:I = 0x13

.field static final TRANSACTION_onMloLinksInfoChanged:I = 0x1e

.field static final TRANSACTION_onNetworkAdded:I = 0x14

.field static final TRANSACTION_onNetworkNotFound:I = 0x15

.field static final TRANSACTION_onNetworkRemoved:I = 0x16

.field static final TRANSACTION_onPmkCacheAdded:I = 0x17

.field static final TRANSACTION_onPmkSaCacheAdded:I = 0x24

.field static final TRANSACTION_onQosPolicyRequest:I = 0x1d

.field static final TRANSACTION_onQosPolicyReset:I = 0x1c

.field static final TRANSACTION_onQosPolicyResponseForScs:I = 0x23

.field static final TRANSACTION_onStateChanged:I = 0x18

.field static final TRANSACTION_onSupplicantStateChanged:I = 0x22

.field static final TRANSACTION_onWpsEventFail:I = 0x19

.field static final TRANSACTION_onWpsEventPbcOverlap:I = 0x1a

.field static final TRANSACTION_onWpsEventSuccess:I = 0x1b


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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;
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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

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
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 2
    .line 3
    const v5, 0xffffff

    .line 4
    .line 5
    .line 6
    const/4 v6, 0x1

    .line 7
    if-lt p1, v6, :cond_0

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
    const v7, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v7, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v6

    .line 23
    :cond_1
    if-ne p1, v5, :cond_2

    .line 24
    .line 25
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->getInterfaceVersion()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    return v6

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
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->getInterfaceHash()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v6

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
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PmkSaCacheData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 61
    .line 62
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PmkSaCacheData;

    .line 67
    .line 68
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onPmkSaCacheAdded(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PmkSaCacheData;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :pswitch_1
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsResponseStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 74
    .line 75
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsResponseStatus;

    .line 80
    .line 81
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onQosPolicyResponseForScs([Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsResponseStatus;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_2
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SupplicantStateChangeData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 87
    .line 88
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SupplicantStateChangeData;

    .line 93
    .line 94
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onSupplicantStateChanged(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SupplicantStateChangeData;)V

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
    move-result v1

    .line 103
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onBssFrequencyChanged(I)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDppConnectionStatusResultSent(I)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :pswitch_5
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConfigurationData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 118
    .line 119
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConfigurationData;

    .line 124
    .line 125
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDppConfigReceived(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConfigurationData;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onMloLinksInfoChanged(I)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    sget-object v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 144
    .line 145
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;

    .line 150
    .line 151
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onQosPolicyRequest(I[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :pswitch_8
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onQosPolicyReset()V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :pswitch_9
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onWpsEventSuccess()V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_0

    .line 165
    .line 166
    :pswitch_a
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onWpsEventPbcOverlap()V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-interface {p0, v1, v3, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onWpsEventFail([BII)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    move-object v0, p0

    .line 209
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onStateChanged(I[BI[BZ)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 215
    .line 216
    .line 217
    move-result-wide v1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-interface {p0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onPmkCacheAdded(J[B)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onNetworkRemoved(I)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onNetworkNotFound([B)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onNetworkAdded(I)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onHs20TermsAndConditionsAcceptanceRequestedNotification([BLjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-interface {p0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onHs20SubscriptionRemediation([BBLjava/lang/String;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-interface {p0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onHs20IconQueryDone([BLjava/lang/String;[B)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    invoke-interface {p0, v1, v2, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onHs20DeauthImminentNotice([BIILjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onExtRadioWorkTimeout(I)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onExtRadioWorkStart(I)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onEapFailure([BI)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :pswitch_18
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDppSuccessConfigSent()V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_0

    .line 357
    .line 358
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    sget-object v7, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 375
    .line 376
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    check-cast v5, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;

    .line 381
    .line 382
    move-object v0, p0

    .line 383
    invoke-interface/range {v0 .. v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDppSuccessConfigReceived([BLjava/lang/String;[BILcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDppSuccess(I)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_0

    .line 396
    .line 397
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDppProgress(I)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-interface {p0, v1, v2, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDppFailure(ILjava/lang/String;Ljava/lang/String;[C)V

    .line 423
    .line 424
    .line 425
    goto :goto_0

    .line 426
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    invoke-interface {p0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onDisconnected([BZI)V

    .line 439
    .line 440
    .line 441
    goto :goto_0

    .line 442
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    invoke-interface {p0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onBssidChanged(B[B)V

    .line 451
    .line 452
    .line 453
    goto :goto_0

    .line 454
    :pswitch_1f
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/BssTmData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 455
    .line 456
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/BssTmData;

    .line 461
    .line 462
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onBssTmHandlingDone(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/BssTmData;)V

    .line 463
    .line 464
    .line 465
    goto :goto_0

    .line 466
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-interface {p0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onAuxiliarySupplicantEvent(I[BLjava/lang/String;)V

    .line 479
    .line 480
    .line 481
    goto :goto_0

    .line 482
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onAuthenticationTimeout([B)V

    .line 487
    .line 488
    .line 489
    goto :goto_0

    .line 490
    :pswitch_22
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 491
    .line 492
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    check-cast v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;

    .line 497
    .line 498
    invoke-interface {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onAssociationRejected(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;)V

    .line 499
    .line 500
    .line 501
    goto :goto_0

    .line 502
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AnqpData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 507
    .line 508
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AnqpData;

    .line 513
    .line 514
    sget-object v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/Hs20AnqpData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 515
    .line 516
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v3

    .line 520
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/Hs20AnqpData;

    .line 521
    .line 522
    invoke-interface {p0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/Hs20AnqpData;)V

    .line 523
    .line 524
    .line 525
    :goto_0
    return v6

    .line 526
    nop

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
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
