.class public abstract Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub;
.super Landroid/os/Binder;
.source "IImsMediaCallProvider.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsMediaCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsMediaCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_changeCameraCapabilities:I = 0x7

.field static final TRANSACTION_deinitSurface:I = 0x11

.field static final TRANSACTION_getCameraInfo:I = 0xc

.field static final TRANSACTION_getDefaultCameraId:I = 0x14

.field static final TRANSACTION_getMaxZoom:I = 0x12

.field static final TRANSACTION_getZoom:I = 0x13

.field static final TRANSACTION_registerForVideoServiceEvent:I = 0x17

.field static final TRANSACTION_requestCallDataUsage:I = 0x6

.field static final TRANSACTION_resetCameraId:I = 0xb

.field static final TRANSACTION_sendGeneralEvent:I = 0x1e

.field static final TRANSACTION_sendLiveVideo:I = 0x16

.field static final TRANSACTION_sendStillImage:I = 0x15

.field static final TRANSACTION_setCamera:I = 0x1

.field static final TRANSACTION_setCameraEffect:I = 0x19

.field static final TRANSACTION_setDeviceOrientation:I = 0x4

.field static final TRANSACTION_setDisplaySurface:I = 0x3

.field static final TRANSACTION_setPreviewSurface:I = 0x2

.field static final TRANSACTION_setZoom:I = 0x5

.field static final TRANSACTION_startCamera:I = 0x8

.field static final TRANSACTION_startEmoji:I = 0x1c

.field static final TRANSACTION_startRecord:I = 0x1a

.field static final TRANSACTION_startRender:I = 0xd

.field static final TRANSACTION_startVideoRenderer:I = 0xe

.field static final TRANSACTION_stopCamera:I = 0x9

.field static final TRANSACTION_stopEmoji:I = 0x1d

.field static final TRANSACTION_stopRecord:I = 0x1b

.field static final TRANSACTION_stopVideoRenderer:I = 0xf

.field static final TRANSACTION_swipeVideoSurface:I = 0x10

.field static final TRANSACTION_switchCamera:I = 0xa

.field static final TRANSACTION_unregisterForVideoServiceEvent:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 119
    const-string v0, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsMediaCallProvider;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_0
    const-string v0, "com.sec.ims.volte2.IImsMediaCallProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    instance-of v1, v0, Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v1, :cond_1

    .line 132
    check-cast v0, Lcom/sec/ims/volte2/IImsMediaCallProvider;

    return-object v0

    .line 134
    :cond_1
    new-instance v0, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    const-string v0, "com.sec.ims.volte2.IImsMediaCallProvider"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 144
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 417
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 403
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendGeneralEvent(IIILjava/lang/String;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 394
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->stopEmoji(I)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 385
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startEmoji(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 378
    :pswitch_3
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->stopRecord()V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 370
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startRecord(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 361
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setCameraEffect(I)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 352
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVideoServiceEventListener;

    move-result-object p1

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->unregisterForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 343
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVideoServiceEventListener;

    move-result-object p1

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->registerForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 334
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendLiveVideo(I)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 317
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 327
    invoke-interface/range {v2 .. v7}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendStillImage(ILjava/lang/String;ILjava/lang/String;I)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    move-object v2, p0

    .line 309
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->getDefaultCameraId()I

    move-result p0

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b
    move-object v2, p0

    .line 303
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->getZoom()V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    move-object v2, p0

    .line 297
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->getMaxZoom()V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    move-object v2, p0

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->deinitSurface(Z)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_e
    move-object v2, p0

    .line 282
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->swipeVideoSurface()V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_f
    move-object v2, p0

    .line 276
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->stopVideoRenderer()V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    move-object v2, p0

    .line 268
    sget-object p0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startVideoRenderer(Landroid/view/Surface;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    move-object v2, p0

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startRender(Z)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12
    move-object v2, p0

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->getCameraInfo(I)V

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_13
    move-object v2, p0

    .line 243
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->resetCameraId()V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_14
    move-object v2, p0

    .line 237
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->switchCamera()V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_15
    move-object v2, p0

    .line 231
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->stopCamera()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_16
    move-object v2, p0

    .line 223
    sget-object p0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Surface;

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startCamera(Landroid/view/Surface;)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_17
    move-object v2, p0

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-interface {v2, p0, p1, p4}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->changeCameraCapabilities(III)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_18
    move-object v2, p0

    .line 203
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->requestCallDataUsage()V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_19
    move-object v2, p0

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setZoom(F)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_1a
    move-object v2, p0

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setDeviceOrientation(I)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_1b
    move-object v2, p0

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 177
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setDisplaySurface(ILandroid/view/Surface;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_1c
    move-object v2, p0

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 166
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setPreviewSurface(ILandroid/view/Surface;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_1d
    move-object v2, p0

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setCamera(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
