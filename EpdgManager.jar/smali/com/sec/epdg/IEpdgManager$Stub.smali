.class public abstract Lcom/sec/epdg/IEpdgManager$Stub;
.super Landroid/os/Binder;
.source "IEpdgManager.java"

# interfaces
.implements Lcom/sec/epdg/IEpdgManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IEpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IEpdgManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addListener:I = 0x17

.field static final TRANSACTION_addListenerBySim:I = 0x18

.field static final TRANSACTION_checkEpdgExtraFeature:I = 0x15

.field static final TRANSACTION_connect:I = 0x5

.field static final TRANSACTION_connectBySim:I = 0x6

.field static final TRANSACTION_disconnect:I = 0x7

.field static final TRANSACTION_disconnectBySim:I = 0x8

.field static final TRANSACTION_enableTestRilAdapter:I = 0x9

.field static final TRANSACTION_enableTestRilAdapterBySim:I = 0xa

.field static final TRANSACTION_getCurrentImsPdnStatus:I = 0xf

.field static final TRANSACTION_getCurrentImsPdnStatusBySim:I = 0x10

.field static final TRANSACTION_isDuringHandoverForIMS:I = 0xd

.field static final TRANSACTION_isDuringHandoverForIMSBySim:I = 0xe

.field static final TRANSACTION_isPossibleW2LHOAfterCallEnd:I = 0x11

.field static final TRANSACTION_isPossibleW2LHOAfterCallEndBySim:I = 0x12

.field static final TRANSACTION_removeListener:I = 0x19

.field static final TRANSACTION_removeListenerBySim:I = 0x1a

.field static final TRANSACTION_sendEventToStateMachine:I = 0xb

.field static final TRANSACTION_sendEventToStateMachineBySim:I = 0xc

.field static final TRANSACTION_setEmergencyQualifiedNetwork:I = 0x1b

.field static final TRANSACTION_setEpdgNotAvailableDuringEmergencyCall:I = 0x16

.field static final TRANSACTION_setReleaseCallBeforeHO:I = 0x13

.field static final TRANSACTION_startHandOverLteToWifi:I = 0x3

.field static final TRANSACTION_startHandOverLteToWifiBySim:I = 0x4

.field static final TRANSACTION_startHandOverWifiToLte:I = 0x1

.field static final TRANSACTION_startHandOverWifiToLteBySim:I = 0x2

.field static final TRANSACTION_triggerHOAfterReleaseCall:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 135
    const-string v0, "com.sec.epdg.IEpdgManager"

    invoke-virtual {p0, p0, v0}, Lcom/sec/epdg/IEpdgManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 143
    if-nez p0, :cond_0

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_0
    const-string v0, "com.sec.epdg.IEpdgManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 147
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/epdg/IEpdgManager;

    if-eqz v1, :cond_1

    .line 148
    move-object v1, v0

    check-cast v1, Lcom/sec/epdg/IEpdgManager;

    return-object v1

    .line 150
    :cond_1
    new-instance v1, Lcom/sec/epdg/IEpdgManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/epdg/IEpdgManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 154
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const-string v6, "com.sec.epdg.IEpdgManager"

    .line 159
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 160
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    :cond_0
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_1

    .line 163
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return v7

    .line 166
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 488
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 478
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 480
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 481
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v1, v2}, Lcom/sec/epdg/IEpdgManager$Stub;->setEmergencyQualifiedNetwork(II)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    goto/16 :goto_0

    .line 467
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgHandoverListener;

    move-result-object v1

    .line 469
    .local v1, "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v1, v2}, Lcom/sec/epdg/IEpdgManager$Stub;->removeListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    goto/16 :goto_0

    .line 458
    .end local v1    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    .end local v2    # "_arg1":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgHandoverListener;

    move-result-object v1

    .line 459
    .restart local v1    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->removeListener(Lcom/sec/epdg/IEpdgHandoverListener;)V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_0

    .line 447
    .end local v1    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgHandoverListener;

    move-result-object v1

    .line 449
    .restart local v1    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 450
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v1, v2}, Lcom/sec/epdg/IEpdgManager$Stub;->addListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    goto/16 :goto_0

    .line 438
    .end local v1    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    .end local v2    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgHandoverListener;

    move-result-object v1

    .line 439
    .restart local v1    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->addListener(Lcom/sec/epdg/IEpdgHandoverListener;)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    goto/16 :goto_0

    .line 428
    .end local v1    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 429
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->setEpdgNotAvailableDuringEmergencyCall(I)Z

    move-result v2

    .line 431
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 433
    goto/16 :goto_0

    .line 416
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 418
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v1, v2}, Lcom/sec/epdg/IEpdgManager$Stub;->checkEpdgExtraFeature(ILjava/lang/String;)Z

    move-result v3

    .line 421
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 423
    goto/16 :goto_0

    .line 406
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 407
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->triggerHOAfterReleaseCall(I)Z

    move-result v2

    .line 409
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 411
    goto/16 :goto_0

    .line 394
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 396
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 397
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v1, v2}, Lcom/sec/epdg/IEpdgManager$Stub;->setReleaseCallBeforeHO(IZ)Z

    move-result v3

    .line 399
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 401
    goto/16 :goto_0

    .line 384
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->isPossibleW2LHOAfterCallEndBySim(I)Z

    move-result v2

    .line 387
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 389
    goto/16 :goto_0

    .line 376
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/epdg/IEpdgManager$Stub;->isPossibleW2LHOAfterCallEnd()Z

    move-result v1

    .line 377
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 379
    goto/16 :goto_0

    .line 367
    .end local v1    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 368
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->getCurrentImsPdnStatusBySim(I)I

    move-result v2

    .line 370
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    goto/16 :goto_0

    .line 359
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/epdg/IEpdgManager$Stub;->getCurrentImsPdnStatus()I

    move-result v1

    .line 360
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    goto/16 :goto_0

    .line 350
    .end local v1    # "_result":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->isDuringHandoverForIMSBySim(I)Z

    move-result v2

    .line 353
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 355
    goto/16 :goto_0

    .line 342
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/epdg/IEpdgManager$Stub;->isDuringHandoverForIMS()Z

    move-result v1

    .line 343
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 345
    goto/16 :goto_0

    .line 327
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 329
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 333
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 334
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/epdg/IEpdgManager$Stub;->sendEventToStateMachineBySim(IILandroid/os/IBinder;I)I

    move-result v5

    .line 336
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    goto/16 :goto_0

    .line 313
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 317
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 318
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/epdg/IEpdgManager$Stub;->sendEventToStateMachine(IILandroid/os/IBinder;)I

    move-result v4

    .line 320
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    goto/16 :goto_0

    .line 301
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 303
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v1, v2}, Lcom/sec/epdg/IEpdgManager$Stub;->enableTestRilAdapterBySim(ZI)I

    move-result v3

    .line 306
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    goto/16 :goto_0

    .line 291
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 292
    .restart local v1    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->enableTestRilAdapter(Z)I

    move-result v2

    .line 294
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    goto/16 :goto_0

    .line 277
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 281
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 282
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 283
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/epdg/IEpdgManager$Stub;->disconnectBySim(Ljava/lang/String;Landroid/os/IBinder;I)I

    move-result v4

    .line 284
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    goto/16 :goto_0

    .line 265
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 268
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v1, v2}, Lcom/sec/epdg/IEpdgManager$Stub;->disconnect(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    .line 270
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    goto/16 :goto_0

    .line 251
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 255
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/epdg/IEpdgManager$Stub;->connectBySim(Ljava/lang/String;Landroid/os/IBinder;I)I

    move-result v4

    .line 258
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    goto/16 :goto_0

    .line 239
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 242
    .restart local v2    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {p0, v1, v2}, Lcom/sec/epdg/IEpdgManager$Stub;->connect(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    .line 244
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    goto/16 :goto_0

    .line 221
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 227
    .local v3, "_arg2":Landroid/os/IBinder;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 229
    .local v4, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 230
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/IEpdgManager$Stub;->startHandOverLteToWifiBySim(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;I)I

    move-result v8

    .line 232
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    goto :goto_0

    .line 205
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/app/PendingIntent;
    .end local v5    # "_arg4":I
    .end local v8    # "_result":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 207
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 211
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 212
    .restart local v4    # "_arg3":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/epdg/IEpdgManager$Stub;->startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I

    move-result v5

    .line 214
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    goto :goto_0

    .line 187
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/app/PendingIntent;
    .end local v5    # "_result":I
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 193
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 195
    .restart local v4    # "_arg3":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 196
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/IEpdgManager$Stub;->startHandOverWifiToLteBySim(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;I)I

    move-result v8

    .line 198
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    goto :goto_0

    .line 171
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/app/PendingIntent;
    .end local v5    # "_arg4":I
    .end local v8    # "_result":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 173
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 175
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 177
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 178
    .restart local v4    # "_arg3":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/epdg/IEpdgManager$Stub;->startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I

    move-result v5

    .line 180
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    nop

    .line 491
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/app/PendingIntent;
    .end local v5    # "_result":I
    :goto_0
    return v7

    nop

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
