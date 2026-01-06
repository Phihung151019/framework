.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_eventBootstrappingConfirm:I = 0x23

.field static final TRANSACTION_eventBootstrappingRequest:I = 0x22

.field static final TRANSACTION_eventClusterEvent:I = 0x1

.field static final TRANSACTION_eventDataPathConfirm:I = 0x2

.field static final TRANSACTION_eventDataPathRequest:I = 0x3

.field static final TRANSACTION_eventDataPathScheduleUpdate:I = 0x4

.field static final TRANSACTION_eventDataPathTerminated:I = 0x5

.field static final TRANSACTION_eventDisabled:I = 0x6

.field static final TRANSACTION_eventFollowupReceived:I = 0x7

.field static final TRANSACTION_eventMatch:I = 0x8

.field static final TRANSACTION_eventMatchExpired:I = 0x9

.field static final TRANSACTION_eventPairingConfirm:I = 0x1f

.field static final TRANSACTION_eventPairingRequest:I = 0x1e

.field static final TRANSACTION_eventPublishTerminated:I = 0xa

.field static final TRANSACTION_eventSubscribeTerminated:I = 0xb

.field static final TRANSACTION_eventSuspensionModeChanged:I = 0xd

.field static final TRANSACTION_eventTransmitFollowup:I = 0xc

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_notifyCapabilitiesResponse:I = 0xe

.field static final TRANSACTION_notifyConfigResponse:I = 0xf

.field static final TRANSACTION_notifyCreateDataInterfaceResponse:I = 0x10

.field static final TRANSACTION_notifyDeleteDataInterfaceResponse:I = 0x11

.field static final TRANSACTION_notifyDisableResponse:I = 0x12

.field static final TRANSACTION_notifyEnableResponse:I = 0x13

.field static final TRANSACTION_notifyInitiateBootstrappingResponse:I = 0x24

.field static final TRANSACTION_notifyInitiateDataPathResponse:I = 0x14

.field static final TRANSACTION_notifyInitiatePairingResponse:I = 0x20

.field static final TRANSACTION_notifyRespondToBootstrappingIndicationResponse:I = 0x25

.field static final TRANSACTION_notifyRespondToDataPathIndicationResponse:I = 0x15

.field static final TRANSACTION_notifyRespondToPairingIndicationResponse:I = 0x21

.field static final TRANSACTION_notifyResumeResponse:I = 0x1c

.field static final TRANSACTION_notifyStartPublishResponse:I = 0x16

.field static final TRANSACTION_notifyStartSubscribeResponse:I = 0x17

.field static final TRANSACTION_notifyStopPublishResponse:I = 0x18

.field static final TRANSACTION_notifyStopSubscribeResponse:I = 0x19

.field static final TRANSACTION_notifySuspendResponse:I = 0x1b

.field static final TRANSACTION_notifyTerminateDataPathResponse:I = 0x1a

.field static final TRANSACTION_notifyTerminatePairingResponse:I = 0x26

.field static final TRANSACTION_notifyTransmitFollowupResponse:I = 0x1d


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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->DESCRIPTOR:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;
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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->DESCRIPTOR:Ljava/lang/String;

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
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->DESCRIPTOR:Ljava/lang/String;

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
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->getInterfaceVersion()I

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
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->getInterfaceHash()Ljava/lang/String;

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
    int-to-char p1, p1

    .line 65
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 66
    .line 67
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 72
    .line 73
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyTerminatePairingResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    int-to-char p1, p1

    .line 83
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 84
    .line 85
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 90
    .line 91
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyRespondToBootstrappingIndicationResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    int-to-char p1, p1

    .line 101
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    check-cast p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 108
    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyInitiateBootstrappingResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;I)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :pswitch_3
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanBootstrappingConfirmInd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 119
    .line 120
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanBootstrappingConfirmInd;

    .line 125
    .line 126
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventBootstrappingConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/NanBootstrappingConfirmInd;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :pswitch_4
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanBootstrappingRequestInd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanBootstrappingRequestInd;

    .line 138
    .line 139
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventBootstrappingRequest(Lcom/samsung/wifi/x/android/hardware/wifi/NanBootstrappingRequestInd;)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    int-to-char p1, p1

    .line 149
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 150
    .line 151
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 156
    .line 157
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyRespondToPairingIndicationResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    int-to-char p1, p1

    .line 167
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 168
    .line 169
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    check-cast p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 174
    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyInitiatePairingResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;I)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :pswitch_7
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfirmInd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 185
    .line 186
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfirmInd;

    .line 191
    .line 192
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventPairingConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfirmInd;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :pswitch_8
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequestInd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 198
    .line 199
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequestInd;

    .line 204
    .line 205
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventPairingRequest(Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequestInd;)V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    int-to-char p1, p1

    .line 215
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 216
    .line 217
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 222
    .line 223
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyTransmitFollowupResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    int-to-char p1, p1

    .line 233
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 234
    .line 235
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 240
    .line 241
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyResumeResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    int-to-char p1, p1

    .line 251
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 252
    .line 253
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 258
    .line 259
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifySuspendResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    int-to-char p1, p1

    .line 269
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 270
    .line 271
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 276
    .line 277
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyTerminateDataPathResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    int-to-char p1, p1

    .line 287
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 288
    .line 289
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 294
    .line 295
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyStopSubscribeResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 296
    .line 297
    .line 298
    goto/16 :goto_0

    .line 299
    .line 300
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    int-to-char p1, p1

    .line 305
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 306
    .line 307
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 312
    .line 313
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyStopPublishResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    int-to-char p1, p1

    .line 323
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 324
    .line 325
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object p3

    .line 329
    check-cast p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 330
    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 332
    .line 333
    .line 334
    move-result p2

    .line 335
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyStartSubscribeResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;B)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    int-to-char p1, p1

    .line 345
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 346
    .line 347
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p3

    .line 351
    check-cast p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 352
    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 354
    .line 355
    .line 356
    move-result p2

    .line 357
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyStartPublishResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;B)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    int-to-char p1, p1

    .line 367
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 368
    .line 369
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 374
    .line 375
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyRespondToDataPathIndicationResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_0

    .line 379
    .line 380
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    int-to-char p1, p1

    .line 385
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 386
    .line 387
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object p3

    .line 391
    check-cast p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 392
    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 394
    .line 395
    .line 396
    move-result p2

    .line 397
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyInitiateDataPathResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;I)V

    .line 398
    .line 399
    .line 400
    goto/16 :goto_0

    .line 401
    .line 402
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    int-to-char p1, p1

    .line 407
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 408
    .line 409
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 414
    .line 415
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyEnableResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    int-to-char p1, p1

    .line 425
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 426
    .line 427
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object p2

    .line 431
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 432
    .line 433
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyDisableResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_0

    .line 437
    .line 438
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 439
    .line 440
    .line 441
    move-result p1

    .line 442
    int-to-char p1, p1

    .line 443
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 444
    .line 445
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object p2

    .line 449
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 450
    .line 451
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyDeleteDataInterfaceResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_0

    .line 455
    .line 456
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 457
    .line 458
    .line 459
    move-result p1

    .line 460
    int-to-char p1, p1

    .line 461
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 462
    .line 463
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object p2

    .line 467
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 468
    .line 469
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyCreateDataInterfaceResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_0

    .line 473
    .line 474
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 475
    .line 476
    .line 477
    move-result p1

    .line 478
    int-to-char p1, p1

    .line 479
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 480
    .line 481
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object p2

    .line 485
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 486
    .line 487
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyConfigResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_0

    .line 491
    .line 492
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 493
    .line 494
    .line 495
    move-result p1

    .line 496
    int-to-char p1, p1

    .line 497
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 498
    .line 499
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object p3

    .line 503
    check-cast p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 504
    .line 505
    sget-object p4, Lcom/samsung/wifi/x/android/hardware/wifi/NanCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 506
    .line 507
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanCapabilities;

    .line 512
    .line 513
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->notifyCapabilitiesResponse(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;Lcom/samsung/wifi/x/android/hardware/wifi/NanCapabilities;)V

    .line 514
    .line 515
    .line 516
    goto/16 :goto_0

    .line 517
    .line 518
    :pswitch_19
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanSuspensionModeChangeInd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 519
    .line 520
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanSuspensionModeChangeInd;

    .line 525
    .line 526
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventSuspensionModeChanged(Lcom/samsung/wifi/x/android/hardware/wifi/NanSuspensionModeChangeInd;)V

    .line 527
    .line 528
    .line 529
    goto/16 :goto_0

    .line 530
    .line 531
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 532
    .line 533
    .line 534
    move-result p1

    .line 535
    int-to-char p1, p1

    .line 536
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 537
    .line 538
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object p2

    .line 542
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 543
    .line 544
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventTransmitFollowup(CLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 550
    .line 551
    .line 552
    move-result p1

    .line 553
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 554
    .line 555
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object p2

    .line 559
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 560
    .line 561
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventSubscribeTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 562
    .line 563
    .line 564
    goto/16 :goto_0

    .line 565
    .line 566
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 567
    .line 568
    .line 569
    move-result p1

    .line 570
    sget-object p3, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 571
    .line 572
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object p2

    .line 576
    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 577
    .line 578
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventPublishTerminated(BLcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 579
    .line 580
    .line 581
    goto :goto_0

    .line 582
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    .line 583
    .line 584
    .line 585
    move-result p1

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 587
    .line 588
    .line 589
    move-result p2

    .line 590
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventMatchExpired(BI)V

    .line 591
    .line 592
    .line 593
    goto :goto_0

    .line 594
    :pswitch_1e
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 595
    .line 596
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object p1

    .line 600
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;

    .line 601
    .line 602
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventMatch(Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;)V

    .line 603
    .line 604
    .line 605
    goto :goto_0

    .line 606
    :pswitch_1f
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 607
    .line 608
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object p1

    .line 612
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;

    .line 613
    .line 614
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventFollowupReceived(Lcom/samsung/wifi/x/android/hardware/wifi/NanFollowupReceivedInd;)V

    .line 615
    .line 616
    .line 617
    goto :goto_0

    .line 618
    :pswitch_20
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 619
    .line 620
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object p1

    .line 624
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;

    .line 625
    .line 626
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventDisabled(Lcom/samsung/wifi/x/android/hardware/wifi/NanStatus;)V

    .line 627
    .line 628
    .line 629
    goto :goto_0

    .line 630
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 631
    .line 632
    .line 633
    move-result p1

    .line 634
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventDataPathTerminated(I)V

    .line 635
    .line 636
    .line 637
    goto :goto_0

    .line 638
    :pswitch_22
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathScheduleUpdateInd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 639
    .line 640
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object p1

    .line 644
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathScheduleUpdateInd;

    .line 645
    .line 646
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventDataPathScheduleUpdate(Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathScheduleUpdateInd;)V

    .line 647
    .line 648
    .line 649
    goto :goto_0

    .line 650
    :pswitch_23
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathRequestInd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 651
    .line 652
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object p1

    .line 656
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathRequestInd;

    .line 657
    .line 658
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventDataPathRequest(Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathRequestInd;)V

    .line 659
    .line 660
    .line 661
    goto :goto_0

    .line 662
    :pswitch_24
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 663
    .line 664
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object p1

    .line 668
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;

    .line 669
    .line 670
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventDataPathConfirm(Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathConfirmInd;)V

    .line 671
    .line 672
    .line 673
    goto :goto_0

    .line 674
    :pswitch_25
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanClusterEventInd;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 675
    .line 676
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object p1

    .line 680
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/NanClusterEventInd;

    .line 681
    .line 682
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiNanIfaceEventCallback;->eventClusterEvent(Lcom/samsung/wifi/x/android/hardware/wifi/NanClusterEventInd;)V

    .line 683
    .line 684
    .line 685
    :goto_0
    return v2

    .line 686
    nop

    .line 687
    :pswitch_data_0
    .packed-switch 0x1
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
