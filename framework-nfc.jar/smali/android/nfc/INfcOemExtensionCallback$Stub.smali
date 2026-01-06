.class public abstract Landroid/nfc/INfcOemExtensionCallback$Stub;
.super Landroid/os/Binder;
.source "INfcOemExtensionCallback.java"

# interfaces
.implements Landroid/nfc/INfcOemExtensionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcOemExtensionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcOemExtensionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onApplyRouting:I = 0x3

.field static final blacklist TRANSACTION_onBootFinished:I = 0xa

.field static final blacklist TRANSACTION_onBootStarted:I = 0x7

.field static final blacklist TRANSACTION_onCardEmulationActivated:I = 0x12

.field static final blacklist TRANSACTION_onDisable:I = 0x6

.field static final blacklist TRANSACTION_onDisableFinished:I = 0xc

.field static final blacklist TRANSACTION_onDisableStarted:I = 0x9

.field static final blacklist TRANSACTION_onEeListenActivated:I = 0x15

.field static final blacklist TRANSACTION_onEeUpdated:I = 0x16

.field static final blacklist TRANSACTION_onEnable:I = 0x5

.field static final blacklist TRANSACTION_onEnableFinished:I = 0xb

.field static final blacklist TRANSACTION_onEnableStarted:I = 0x8

.field static final blacklist TRANSACTION_onExtractOemPackages:I = 0x1d

.field static final blacklist TRANSACTION_onGetOemAppSearchIntent:I = 0x17

.field static final blacklist TRANSACTION_onHceEventReceived:I = 0x10

.field static final blacklist TRANSACTION_onLaunchHceAppChooserActivity:I = 0x19

.field static final blacklist TRANSACTION_onLaunchHceTapAgainActivity:I = 0x1a

.field static final blacklist TRANSACTION_onLogEventNotified:I = 0x1c

.field static final blacklist TRANSACTION_onNdefMessage:I = 0x18

.field static final blacklist TRANSACTION_onNdefRead:I = 0x4

.field static final blacklist TRANSACTION_onReaderOptionChanged:I = 0x11

.field static final blacklist TRANSACTION_onRfDiscoveryStarted:I = 0x14

.field static final blacklist TRANSACTION_onRfFieldDetected:I = 0x13

.field static final blacklist TRANSACTION_onRoutingChangeCompleted:I = 0xf

.field static final blacklist TRANSACTION_onRoutingChanged:I = 0xe

.field static final blacklist TRANSACTION_onRoutingTableFull:I = 0x1b

.field static final blacklist TRANSACTION_onStateUpdated:I = 0x2

.field static final blacklist TRANSACTION_onTagConnected:I = 0x1

.field static final blacklist TRANSACTION_onTagDispatch:I = 0xd


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 115
    const-string v0, "android.nfc.INfcOemExtensionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcOemExtensionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 123
    if-nez p0, :cond_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    const-string v0, "android.nfc.INfcOemExtensionCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 127
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcOemExtensionCallback;

    if-eqz v1, :cond_1

    .line 128
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcOemExtensionCallback;

    return-object v1

    .line 130
    :cond_1
    new-instance v1, Landroid/nfc/INfcOemExtensionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcOemExtensionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 139
    packed-switch p0, :pswitch_data_0

    .line 259
    const/4 v0, 0x0

    return-object v0

    .line 255
    :pswitch_0
    const-string v0, "onExtractOemPackages"

    return-object v0

    .line 251
    :pswitch_1
    const-string v0, "onLogEventNotified"

    return-object v0

    .line 247
    :pswitch_2
    const-string v0, "onRoutingTableFull"

    return-object v0

    .line 243
    :pswitch_3
    const-string v0, "onLaunchHceTapAgainActivity"

    return-object v0

    .line 239
    :pswitch_4
    const-string v0, "onLaunchHceAppChooserActivity"

    return-object v0

    .line 235
    :pswitch_5
    const-string v0, "onNdefMessage"

    return-object v0

    .line 231
    :pswitch_6
    const-string v0, "onGetOemAppSearchIntent"

    return-object v0

    .line 227
    :pswitch_7
    const-string v0, "onEeUpdated"

    return-object v0

    .line 223
    :pswitch_8
    const-string v0, "onEeListenActivated"

    return-object v0

    .line 219
    :pswitch_9
    const-string v0, "onRfDiscoveryStarted"

    return-object v0

    .line 215
    :pswitch_a
    const-string v0, "onRfFieldDetected"

    return-object v0

    .line 211
    :pswitch_b
    const-string v0, "onCardEmulationActivated"

    return-object v0

    .line 207
    :pswitch_c
    const-string v0, "onReaderOptionChanged"

    return-object v0

    .line 203
    :pswitch_d
    const-string v0, "onHceEventReceived"

    return-object v0

    .line 199
    :pswitch_e
    const-string v0, "onRoutingChangeCompleted"

    return-object v0

    .line 195
    :pswitch_f
    const-string v0, "onRoutingChanged"

    return-object v0

    .line 191
    :pswitch_10
    const-string v0, "onTagDispatch"

    return-object v0

    .line 187
    :pswitch_11
    const-string v0, "onDisableFinished"

    return-object v0

    .line 183
    :pswitch_12
    const-string v0, "onEnableFinished"

    return-object v0

    .line 179
    :pswitch_13
    const-string v0, "onBootFinished"

    return-object v0

    .line 175
    :pswitch_14
    const-string v0, "onDisableStarted"

    return-object v0

    .line 171
    :pswitch_15
    const-string v0, "onEnableStarted"

    return-object v0

    .line 167
    :pswitch_16
    const-string v0, "onBootStarted"

    return-object v0

    .line 163
    :pswitch_17
    const-string v0, "onDisable"

    return-object v0

    .line 159
    :pswitch_18
    const-string v0, "onEnable"

    return-object v0

    .line 155
    :pswitch_19
    const-string v0, "onNdefRead"

    return-object v0

    .line 151
    :pswitch_1a
    const-string v0, "onApplyRouting"

    return-object v0

    .line 147
    :pswitch_1b
    const-string v0, "onStateUpdated"

    return-object v0

    .line 143
    :pswitch_1c
    const-string v0, "onTagConnected"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 134
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1031
    const/16 v0, 0x1c

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 266
    invoke-static {p1}, Landroid/nfc/INfcOemExtensionCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 270
    const-string v0, "android.nfc.INfcOemExtensionCallback"

    .line 271
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 272
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 275
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    return v1

    .line 278
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 541
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 531
    :pswitch_0
    sget-object v2, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NdefMessage;

    .line 533
    .local v2, "_arg0":Landroid/nfc/NdefMessage;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 534
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onExtractOemPackages(Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    goto/16 :goto_0

    .line 522
    .end local v2    # "_arg0":Landroid/nfc/NdefMessage;
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_1
    sget-object v2, Landroid/nfc/OemLogItems;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/OemLogItems;

    .line 523
    .local v2, "_arg0":Landroid/nfc/OemLogItems;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onLogEventNotified(Landroid/nfc/OemLogItems;)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    goto/16 :goto_0

    .line 515
    .end local v2    # "_arg0":Landroid/nfc/OemLogItems;
    :pswitch_2
    invoke-virtual {p0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onRoutingTableFull()V

    .line 516
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    goto/16 :goto_0

    .line 505
    :pswitch_3
    sget-object v2, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 507
    .local v2, "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onLaunchHceTapAgainActivity(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    goto/16 :goto_0

    .line 490
    .end local v2    # "_arg0":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 494
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 496
    .local v4, "_arg2":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onLaunchHceAppChooserActivity(Ljava/lang/String;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    goto/16 :goto_0

    .line 477
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v4    # "_arg2":Landroid/content/ComponentName;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_5
    sget-object v2, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/Tag;

    .line 479
    .local v2, "_arg0":Landroid/nfc/Tag;
    sget-object v3, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NdefMessage;

    .line 481
    .local v3, "_arg1":Landroid/nfc/NdefMessage;
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ResultReceiver;

    .line 482
    .local v4, "_arg2":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v2, v3, v4}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onNdefMessage(Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/os/ResultReceiver;)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    goto/16 :goto_0

    .line 466
    .end local v2    # "_arg0":Landroid/nfc/Tag;
    .end local v3    # "_arg1":Landroid/nfc/NdefMessage;
    .end local v4    # "_arg2":Landroid/os/ResultReceiver;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 468
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 469
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2, v3}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onGetOemAppSearchIntent(Ljava/util/List;Landroid/os/ResultReceiver;)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    goto/16 :goto_0

    .line 459
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_7
    invoke-virtual {p0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onEeUpdated()V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    goto/16 :goto_0

    .line 451
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 452
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onEeListenActivated(Z)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    goto/16 :goto_0

    .line 442
    .end local v2    # "_arg0":Z
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 443
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onRfDiscoveryStarted(Z)V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    goto/16 :goto_0

    .line 433
    .end local v2    # "_arg0":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 434
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onRfFieldDetected(Z)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    goto/16 :goto_0

    .line 424
    .end local v2    # "_arg0":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 425
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onCardEmulationActivated(Z)V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    goto/16 :goto_0

    .line 415
    .end local v2    # "_arg0":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 416
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onReaderOptionChanged(Z)V

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    goto/16 :goto_0

    .line 406
    .end local v2    # "_arg0":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 407
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onHceEventReceived(I)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    goto/16 :goto_0

    .line 399
    .end local v2    # "_arg0":I
    :pswitch_e
    invoke-virtual {p0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onRoutingChangeCompleted()V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    goto/16 :goto_0

    .line 391
    :pswitch_f
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 392
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onRoutingChanged(Landroid/os/ResultReceiver;)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    goto/16 :goto_0

    .line 382
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_10
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 383
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onTagDispatch(Landroid/os/ResultReceiver;)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    goto/16 :goto_0

    .line 373
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onDisableFinished(I)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    goto/16 :goto_0

    .line 364
    .end local v2    # "_arg0":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onEnableFinished(I)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    goto/16 :goto_0

    .line 355
    .end local v2    # "_arg0":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 356
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onBootFinished(I)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    goto/16 :goto_0

    .line 348
    .end local v2    # "_arg0":I
    :pswitch_14
    invoke-virtual {p0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onDisableStarted()V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    goto/16 :goto_0

    .line 342
    :pswitch_15
    invoke-virtual {p0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onEnableStarted()V

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    goto :goto_0

    .line 336
    :pswitch_16
    invoke-virtual {p0}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onBootStarted()V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    goto :goto_0

    .line 328
    :pswitch_17
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 329
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onDisable(Landroid/os/ResultReceiver;)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto :goto_0

    .line 319
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_18
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 320
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onEnable(Landroid/os/ResultReceiver;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto :goto_0

    .line 310
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_19
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 311
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onNdefRead(Landroid/os/ResultReceiver;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    goto :goto_0

    .line 301
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_1a
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 302
    .restart local v2    # "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onApplyRouting(Landroid/os/ResultReceiver;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    goto :goto_0

    .line 292
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onStateUpdated(I)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto :goto_0

    .line 283
    .end local v2    # "_arg0":I
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 284
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2}, Landroid/nfc/INfcOemExtensionCallback$Stub;->onTagConnected(Z)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    nop

    .line 544
    .end local v2    # "_arg0":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
