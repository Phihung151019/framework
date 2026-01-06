.class public abstract Lcom/sec/ims/ICentralMsgStoreService$Stub;
.super Landroid/os/Binder;
.source "ICentralMsgStoreService.java"

# interfaces
.implements Lcom/sec/ims/ICentralMsgStoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ICentralMsgStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ICentralMsgStoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelMessage:I = 0x5

.field static final TRANSACTION_createParticipant:I = 0x14

.field static final TRANSACTION_createSession:I = 0x13

.field static final TRANSACTION_deleteMessage:I = 0x6

.field static final TRANSACTION_deleteOldLegacyMessage:I = 0x18

.field static final TRANSACTION_deleteParticipant:I = 0x16

.field static final TRANSACTION_deleteSession:I = 0x15

.field static final TRANSACTION_disableAutoSync:I = 0x1e

.field static final TRANSACTION_downloadMessage:I = 0x8

.field static final TRANSACTION_enableAutoSync:I = 0x1d

.field static final TRANSACTION_getAccount:I = 0x26

.field static final TRANSACTION_getRestartScreenName:I = 0x21

.field static final TRANSACTION_getSd:I = 0x25

.field static final TRANSACTION_manageSd:I = 0x24

.field static final TRANSACTION_manualSync:I = 0x1c

.field static final TRANSACTION_notifyCloudMessageUpdate:I = 0x12

.field static final TRANSACTION_notifyExtendedFuncUpdated:I = 0x2b

.field static final TRANSACTION_notifyUIScreen:I = 0x1b

.field static final TRANSACTION_onBufferDBReadResult:I = 0xd

.field static final TRANSACTION_onBufferDBReadResultBatch:I = 0xe

.field static final TRANSACTION_onDefaultSmsPackageChanged:I = 0x2c

.field static final TRANSACTION_onDeregistered:I = 0x2e

.field static final TRANSACTION_onFTUriResponse:I = 0x20

.field static final TRANSACTION_onRCSDBReady:I = 0x17

.field static final TRANSACTION_onRegistered:I = 0x2d

.field static final TRANSACTION_onUIButtonProceed:I = 0xc

.field static final TRANSACTION_onUserEnterApp:I = 0xa

.field static final TRANSACTION_onUserLeaveApp:I = 0xb

.field static final TRANSACTION_readMessage:I = 0x3

.field static final TRANSACTION_receivedMessage:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0xf

.field static final TRANSACTION_registerCmsProvisioningListenerByPhoneId:I = 0x2f

.field static final TRANSACTION_requestMessageProcess:I = 0x29

.field static final TRANSACTION_requestOperation:I = 0x28

.field static final TRANSACTION_restartService:I = 0x1a

.field static final TRANSACTION_resumeSync:I = 0x19

.field static final TRANSACTION_sendTryDeregisterCms:I = 0x23

.field static final TRANSACTION_sendTryRegisterCms:I = 0x22

.field static final TRANSACTION_sentMessage:I = 0x2

.field static final TRANSACTION_startContactSyncActivity:I = 0x2a

.field static final TRANSACTION_startDeltaSync:I = 0x1f

.field static final TRANSACTION_startFullSync:I = 0x11

.field static final TRANSACTION_stopSync:I = 0x10

.field static final TRANSACTION_unReadMessage:I = 0x4

.field static final TRANSACTION_unregisterCmsProvisioningListenerByPhoneId:I = 0x30

.field static final TRANSACTION_updateAccountInfo:I = 0x27

.field static final TRANSACTION_uploadMessage:I = 0x7

.field static final TRANSACTION_wipeOutMessage:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 183
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 184
    const-string v0, "com.sec.ims.ICentralMsgStoreService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ICentralMsgStoreService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 195
    :cond_0
    const-string v0, "com.sec.ims.ICentralMsgStoreService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    instance-of v1, v0, Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v1, :cond_1

    .line 197
    check-cast v0, Lcom/sec/ims/ICentralMsgStoreService;

    return-object v0

    .line 199
    :cond_1
    new-instance v0, Lcom/sec/ims/ICentralMsgStoreService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/ims/ICentralMsgStoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    const-string v0, "com.sec.ims.ICentralMsgStoreService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 209
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 212
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 745
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 735
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/ICentralMsgStoreServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ICentralMsgStoreServiceListener;

    move-result-object p1

    .line 737
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 739
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->unregisterCmsProvisioningListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreServiceListener;I)V

    .line 740
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 724
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/ICentralMsgStoreServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ICentralMsgStoreServiceListener;

    move-result-object p1

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 728
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->registerCmsProvisioningListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreServiceListener;I)V

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 715
    :pswitch_2
    sget-object p1, Lcom/sec/ims/ImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-interface {p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->onDeregistered(Lcom/sec/ims/ImsRegistration;)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 706
    :pswitch_3
    sget-object p1, Lcom/sec/ims/ImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 708
    invoke-interface {p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 709
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 699
    :pswitch_4
    invoke-interface {p0}, Lcom/sec/ims/ICentralMsgStoreService;->onDefaultSmsPackageChanged()V

    .line 700
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 693
    :pswitch_5
    invoke-interface {p0}, Lcom/sec/ims/ICentralMsgStoreService;->notifyExtendedFuncUpdated()V

    .line 694
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 683
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 685
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->startContactSyncActivity(IZ)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 670
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 672
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/ICentralMsgStoreService;->requestMessageProcess(Ljava/lang/String;Ljava/lang/String;I)V

    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 655
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 662
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 663
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/sec/ims/ICentralMsgStoreService;->requestOperation(IILjava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 644
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 647
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->updateAccountInfo(ILjava/lang/String;)V

    .line 649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 635
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-interface {p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->getAccount(I)V

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 622
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/ICentralMsgStoreService;->getSd(IZLjava/lang/String;)V

    .line 629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 609
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/ICentralMsgStoreService;->manageSd(IILjava/lang/String;)V

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 600
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-interface {p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->sendTryDeregisterCms(I)V

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 589
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->sendTryRegisterCms(ILjava/lang/String;)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 579
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 581
    invoke-interface {p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->getRestartScreenName(Ljava/lang/String;)I

    move-result p0

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 568
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->onFTUriResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 557
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 546
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->disableAutoSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 535
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 539
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->enableAutoSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 524
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->manualSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 509
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-interface {p0, p1, p4, v0, v2}, Lcom/sec/ims/ICentralMsgStoreService;->notifyUIScreen(Ljava/lang/String;ILjava/lang/String;I)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 500
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-interface {p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->restartService(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 491
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-interface {p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->resumeSync(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 480
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 483
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->deleteOldLegacyMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 471
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-interface {p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->onRCSDBReady(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 460
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->deleteParticipant(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 449
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->deleteSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 438
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->createParticipant(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 427
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->createSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 414
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/ICentralMsgStoreService;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 403
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->startFullSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 392
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->stopSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 381
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object p4

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->registerCallback(Ljava/lang/String;Lcom/sec/ims/ICentralMsgStoreService;)V

    .line 386
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 370
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->onBufferDBReadResultBatch(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 351
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 363
    invoke-interface/range {v2 .. v8}, Lcom/sec/ims/ICentralMsgStoreService;->onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_24
    move-object v2, p0

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-interface {v2, p0, p1, p4}, Lcom/sec/ims/ICentralMsgStoreService;->onUIButtonProceed(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_25
    move-object v2, p0

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-interface {v2, p0}, Lcom/sec/ims/ICentralMsgStoreService;->onUserLeaveApp(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_26
    move-object v2, p0

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-interface {v2, p0}, Lcom/sec/ims/ICentralMsgStoreService;->onUserEnterApp(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_27
    move-object v2, p0

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->wipeOutMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_28
    move-object v2, p0

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->downloadMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_29
    move-object v2, p0

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->uploadMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2a
    move-object v2, p0

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_2b
    move-object v2, p0

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->cancelMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_2c
    move-object v2, p0

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->unReadMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_2d
    move-object v2, p0

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->readMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_2e
    move-object v2, p0

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->sentMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_2f
    move-object v2, p0

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/ICentralMsgStoreService;->receivedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
