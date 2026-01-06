.class public abstract Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;
.super Landroid/os/Binder;
.source "INSDSService.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/INSDSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/INSDSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/INSDSService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activateAllLines:I = 0x13

.field static final TRANSACTION_activateLine:I = 0x11

.field static final TRANSACTION_activateSimDevice:I = 0x1

.field static final TRANSACTION_authorizeMsisdn:I = 0x1d

.field static final TRANSACTION_cancelMsisdnAuthorization:I = 0x1f

.field static final TRANSACTION_createTmoId:I = 0x1e

.field static final TRANSACTION_deactivateAllLines:I = 0x14

.field static final TRANSACTION_deactivateLine:I = 0x12

.field static final TRANSACTION_deactivateSimDevice:I = 0x2

.field static final TRANSACTION_getDeviceState:I = 0x4

.field static final TRANSACTION_getJanskyServiceStatus:I = 0x17

.field static final TRANSACTION_getPendingMsisdnAuthStatus:I = 0x20

.field static final TRANSACTION_getTRN:I = 0x15

.field static final TRANSACTION_handleNsdsAppToggleOffEvent:I = 0xb

.field static final TRANSACTION_handleNsdsAppToggleOnEvent:I = 0xa

.field static final TRANSACTION_handleNsdsAppToggleOnEventWithSnT:I = 0xc

.field static final TRANSACTION_isDeviceReadyForLogin:I = 0x3

.field static final TRANSACTION_isUserLoggedin:I = 0x16

.field static final TRANSACTION_loginWithMsisdn:I = 0x1c

.field static final TRANSACTION_logout:I = 0xf

.field static final TRANSACTION_openCreateAccountPage:I = 0xe

.field static final TRANSACTION_openLoginPage:I = 0xd

.field static final TRANSACTION_refreshSIT:I = 0x1b

.field static final TRANSACTION_registerListener:I = 0x6

.field static final TRANSACTION_reprovisionLine:I = 0x21

.field static final TRANSACTION_requestWsgAkaAuthRequest:I = 0x18

.field static final TRANSACTION_retriveAvailableMSISDNs:I = 0x10

.field static final TRANSACTION_unregisterListener:I = 0x7

.field static final TRANSACTION_updateAccessSteering:I = 0x22

.field static final TRANSACTION_updateDeviceConfiguration:I = 0x5

.field static final TRANSACTION_updateDeviceName:I = 0x19

.field static final TRANSACTION_updateE911Address:I = 0x8

.field static final TRANSACTION_updateEntitlementUrl:I = 0x9

.field static final TRANSACTION_updateEntitlementUrlWithImsi:I = 0x23

.field static final TRANSACTION_updateLineName:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 175
    const-string v0, "com.sec.vsim.ericssonnsds.INSDSService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/ericssonnsds/INSDSService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 183
    if-nez p0, :cond_0

    .line 184
    const/4 v0, 0x0

    return-object v0

    .line 186
    :cond_0
    const-string v0, "com.sec.vsim.ericssonnsds.INSDSService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 187
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/vsim/ericssonnsds/INSDSService;

    if-eqz v1, :cond_1

    .line 188
    move-object v1, v0

    check-cast v1, Lcom/sec/vsim/ericssonnsds/INSDSService;

    return-object v1

    .line 190
    :cond_1
    new-instance v1, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 194
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    const-string v0, "com.sec.vsim.ericssonnsds.INSDSService"

    .line 199
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 200
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 203
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    return v1

    .line 206
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 462
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 453
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {p0, v2, v3}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateEntitlementUrlWithImsi(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    goto/16 :goto_0

    .line 447
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateAccessSteering()V

    .line 448
    goto/16 :goto_0

    .line 438
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 440
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->reprovisionLine(JLjava/lang/String;)V

    .line 443
    goto/16 :goto_0

    .line 432
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->getPendingMsisdnAuthStatus()V

    .line 433
    goto/16 :goto_0

    .line 425
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->cancelMsisdnAuthorization(Ljava/lang/String;)V

    .line 428
    goto/16 :goto_0

    .line 413
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 417
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->createTmoId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    goto/16 :goto_0

    .line 405
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->authorizeMsisdn(Ljava/lang/String;)V

    .line 408
    goto/16 :goto_0

    .line 397
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 398
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->loginWithMsisdn(Ljava/lang/String;)V

    .line 400
    goto/16 :goto_0

    .line 389
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 390
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->refreshSIT(Ljava/lang/String;)V

    .line 392
    goto/16 :goto_0

    .line 377
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 379
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/vsim/app/jansky/ILineNameUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/ILineNameUpdateListener;

    move-result-object v5

    .line 382
    .local v5, "_arg2":Lcom/sec/vsim/app/jansky/ILineNameUpdateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateLineName(JLjava/lang/String;Lcom/sec/vsim/app/jansky/ILineNameUpdateListener;)V

    .line 384
    goto/16 :goto_0

    .line 365
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/sec/vsim/app/jansky/ILineNameUpdateListener;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 367
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 369
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener;

    move-result-object v5

    .line 370
    .local v5, "_arg2":Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateDeviceName(JLjava/lang/String;Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener;)V

    .line 372
    goto/16 :goto_0

    .line 359
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Lcom/sec/vsim/app/jansky/IDeviceNameUpdateListener;
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->requestWsgAkaAuthRequest()V

    .line 360
    goto/16 :goto_0

    .line 352
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->getJanskyServiceStatus()I

    move-result v2

    .line 353
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    goto/16 :goto_0

    .line 345
    .end local v2    # "_result":I
    :pswitch_d
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->isUserLoggedin()Z

    move-result v2

    .line 346
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 348
    goto/16 :goto_0

    .line 334
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 338
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/vsim/app/jansky/ITRNReceivedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/app/jansky/ITRNReceivedListener;

    move-result-object v4

    .line 339
    .local v4, "_arg2":Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->getTRN(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/ITRNReceivedListener;)V

    .line 341
    goto/16 :goto_0

    .line 328
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg2":Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
    :pswitch_f
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->deactivateAllLines()V

    .line 329
    goto/16 :goto_0

    .line 323
    :pswitch_10
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->activateAllLines()V

    .line 324
    goto/16 :goto_0

    .line 314
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 316
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->deactivateLine(JLjava/lang/String;)V

    .line 319
    goto/16 :goto_0

    .line 304
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 306
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 307
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->activateLine(JLjava/lang/String;)V

    .line 309
    goto/16 :goto_0

    .line 298
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->retriveAvailableMSISDNs()V

    .line 299
    goto/16 :goto_0

    .line 293
    :pswitch_14
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->logout()V

    .line 294
    goto/16 :goto_0

    .line 288
    :pswitch_15
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->openCreateAccountPage()V

    .line 289
    goto :goto_0

    .line 283
    :pswitch_16
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->openLoginPage()V

    .line 284
    goto :goto_0

    .line 278
    :pswitch_17
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->handleNsdsAppToggleOnEventWithSnT()V

    .line 279
    goto :goto_0

    .line 273
    :pswitch_18
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->handleNsdsAppToggleOffEvent()V

    .line 274
    goto :goto_0

    .line 268
    :pswitch_19
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->handleNsdsAppToggleOnEvent()V

    .line 269
    goto :goto_0

    .line 261
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateEntitlementUrl(Ljava/lang/String;)V

    .line 264
    goto :goto_0

    .line 255
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1b
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateE911Address()V

    .line 256
    goto :goto_0

    .line 248
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;

    move-result-object v2

    .line 249
    .local v2, "_arg0":Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->unregisterListener(Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;)V

    .line 251
    goto :goto_0

    .line 240
    .end local v2    # "_arg0":Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;

    move-result-object v2

    .line 241
    .restart local v2    # "_arg0":Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->registerListener(Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;)V

    .line 243
    goto :goto_0

    .line 234
    .end local v2    # "_arg0":Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
    :pswitch_1e
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->updateDeviceConfiguration()V

    .line 235
    goto :goto_0

    .line 227
    :pswitch_1f
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->getDeviceState()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    goto :goto_0

    .line 220
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_20
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->isDeviceReadyForLogin()Z

    move-result v2

    .line 221
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    goto :goto_0

    .line 215
    .end local v2    # "_result":Z
    :pswitch_21
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->deactivateSimDevice()V

    .line 216
    goto :goto_0

    .line 210
    :pswitch_22
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSService$Stub;->activateSimDevice()V

    .line 211
    nop

    .line 465
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
