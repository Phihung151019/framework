.class public abstract Lcom/sec/ims/volte2/IImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IImsCallSession.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_accept:I = 0xd

.field static final TRANSACTION_acceptECTRequest:I = 0x26

.field static final TRANSACTION_cancelTransfer:I = 0x17

.field static final TRANSACTION_extendToConference:I = 0x24

.field static final TRANSACTION_getCallId:I = 0x5

.field static final TRANSACTION_getCallProfile:I = 0x1

.field static final TRANSACTION_getCallStateOrdinal:I = 0x6

.field static final TRANSACTION_getCmcType:I = 0x33

.field static final TRANSACTION_getEndReason:I = 0xa

.field static final TRANSACTION_getIncomingInviteRawSip:I = 0x19

.field static final TRANSACTION_getMediaCallProvider:I = 0x2d

.field static final TRANSACTION_getModifyRequestedProfile:I = 0x2

.field static final TRANSACTION_getPhoneId:I = 0x9

.field static final TRANSACTION_getPrevCallStateOrdinal:I = 0x7

.field static final TRANSACTION_getRegistration:I = 0x1a

.field static final TRANSACTION_getRelayChTerminated:I = 0x36

.field static final TRANSACTION_getSessionId:I = 0x8

.field static final TRANSACTION_getUsingCamera:I = 0x2c

.field static final TRANSACTION_getVideoCrbtSupportType:I = 0x34

.field static final TRANSACTION_hold:I = 0x10

.field static final TRANSACTION_holdVideo:I = 0x28

.field static final TRANSACTION_info:I = 0x18

.field static final TRANSACTION_inviteGroupParticipant:I = 0x22

.field static final TRANSACTION_inviteParticipants:I = 0x20

.field static final TRANSACTION_isQuantumEncryptionServiceAvailable:I = 0x37

.field static final TRANSACTION_merge:I = 0x1e

.field static final TRANSACTION_pulling:I = 0xc

.field static final TRANSACTION_recording:I = 0x15

.field static final TRANSACTION_registerSessionEventListener:I = 0x3

.field static final TRANSACTION_reinvite:I = 0x14

.field static final TRANSACTION_reject:I = 0xe

.field static final TRANSACTION_rejectECTRequest:I = 0x27

.field static final TRANSACTION_removeCallStateMachineMessage:I = 0x3a

.field static final TRANSACTION_removeGroupParticipant:I = 0x23

.field static final TRANSACTION_removeParticipants:I = 0x21

.field static final TRANSACTION_requestCallDataUsage:I = 0x2e

.field static final TRANSACTION_resume:I = 0x11

.field static final TRANSACTION_resumeVideo:I = 0x29

.field static final TRANSACTION_sendDtmf:I = 0x2f

.field static final TRANSACTION_sendImsCallEvent:I = 0x1d

.field static final TRANSACTION_sendText:I = 0x32

.field static final TRANSACTION_setEpdgState:I = 0x1b

.field static final TRANSACTION_setEpdgStateNoNotify:I = 0x1c

.field static final TRANSACTION_setMute:I = 0x13

.field static final TRANSACTION_setRelayChTerminated:I = 0x35

.field static final TRANSACTION_start:I = 0xb

.field static final TRANSACTION_startCameraForProvider:I = 0x2a

.field static final TRANSACTION_startConference:I = 0x1f

.field static final TRANSACTION_startDtmf:I = 0x30

.field static final TRANSACTION_startECT:I = 0x25

.field static final TRANSACTION_stopCameraForProvider:I = 0x2b

.field static final TRANSACTION_stopDtmf:I = 0x31

.field static final TRANSACTION_terminate:I = 0xf

.field static final TRANSACTION_transfer:I = 0x16

.field static final TRANSACTION_unregisterSessionEventListener:I = 0x4

.field static final TRANSACTION_update:I = 0x12

.field static final TRANSACTION_updateQuantumPeerProfileStatus:I = 0x38

.field static final TRANSACTION_updateQuantumQMKeyStatus:I = 0x39


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 228
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 229
    const-string v0, "com.sec.ims.volte2.IImsCallSession"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 240
    :cond_0
    const-string v0, "com.sec.ims.volte2.IImsCallSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    instance-of v1, v0, Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v1, :cond_1

    .line 242
    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    return-object v0

    .line 244
    :cond_1
    new-instance v0, Lcom/sec/ims/volte2/IImsCallSession$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 253
    const-string v0, "com.sec.ims.volte2.IImsCallSession"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 254
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 257
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 772
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 764
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 765
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->removeCallStateMachineMessage(I)V

    .line 767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 747
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 756
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 757
    invoke-interface/range {v2 .. v7}, Lcom/sec/ims/volte2/IImsCallSession;->updateQuantumQMKeyStatus(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2
    move-object v2, p0

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 738
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 740
    invoke-interface {v2, p0, p1, p4, v0}, Lcom/sec/ims/volte2/IImsCallSession;->updateQuantumPeerProfileStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    move-object v2, p0

    .line 724
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result p0

    .line 725
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    move-object v2, p0

    .line 717
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getRelayChTerminated()Z

    move-result p0

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_5
    move-object v2, p0

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    .line 710
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->setRelayChTerminated(Z)V

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    move-object v2, p0

    .line 701
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getVideoCrbtSupportType()I

    move-result p0

    .line 702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_7
    move-object v2, p0

    .line 694
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p0

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8
    move-object v2, p0

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 687
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->sendText(Ljava/lang/String;I)V

    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    move-object v2, p0

    .line 677
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->stopDtmf()V

    .line 678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    move-object v2, p0

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->startDtmf(I)V

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    move-object v2, p0

    .line 656
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 660
    sget-object p4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Message;

    .line 661
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-interface {v2, p0, p1, p4}, Lcom/sec/ims/volte2/IImsCallSession;->sendDtmf(IILandroid/os/Message;)V

    .line 663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    move-object v2, p0

    .line 649
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->requestCallDataUsage()V

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_d
    move-object v2, p0

    .line 642
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getMediaCallProvider()Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object p0

    .line 643
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto/16 :goto_0

    :pswitch_e
    move-object v2, p0

    .line 635
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result p0

    .line 636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_f
    move-object v2, p0

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->stopCameraForProvider(Z)V

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    move-object v2, p0

    .line 618
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    move-object v2, p0

    .line 611
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->resumeVideo()V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_12
    move-object v2, p0

    .line 605
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->holdVideo()V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_13
    move-object v2, p0

    .line 598
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->rejectECTRequest()I

    move-result p0

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_14
    move-object v2, p0

    .line 591
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->acceptECTRequest()I

    move-result p0

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_15
    move-object v2, p0

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->startECT(ILjava/lang/String;)I

    move-result p0

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_16
    move-object v2, p0

    .line 571
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p0

    .line 572
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->extendToConference([Ljava/lang/String;)V

    .line 574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_17
    move-object v2, p0

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->removeGroupParticipant(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_18
    move-object v2, p0

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->inviteGroupParticipant(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_19
    move-object v2, p0

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->removeParticipants(I)V

    .line 547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1a
    move-object v2, p0

    .line 535
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 537
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->inviteParticipants(I)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1b
    move-object v2, p0

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p0

    .line 526
    sget-object p1, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/volte2/data/CallProfile;

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1c
    move-object v2, p0

    .line 513
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->merge(II)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1d
    move-object v2, p0

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 504
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1e
    move-object v2, p0

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgStateNoNotify(Z)V

    .line 496
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1f
    move-object v2, p0

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_20
    move-object v2, p0

    .line 476
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_21
    move-object v2, p0

    .line 469
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getIncomingInviteRawSip()Ljava/lang/String;

    move-result-object p0

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_22
    move-object v2, p0

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->info(ILjava/lang/String;)V

    .line 464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_23
    move-object v2, p0

    .line 452
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->cancelTransfer()V

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_24
    move-object v2, p0

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->transfer(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_25
    move-object v2, p0

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->recording(ILjava/lang/String;)V

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_26
    move-object v2, p0

    .line 426
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->reinvite()V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_27
    move-object v2, p0

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->setMute(Z)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_28
    move-object v2, p0

    .line 405
    sget-object p0, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/volte2/data/CallProfile;

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-interface {v2, p0, p1, p4}, Lcom/sec/ims/volte2/IImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_29
    move-object v2, p0

    .line 398
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->resume()V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2a
    move-object v2, p0

    .line 390
    sget-object p0, Lcom/sec/ims/volte2/data/MediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/volte2/data/MediaProfile;

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->hold(Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2b
    move-object v2, p0

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2c
    move-object v2, p0

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->reject(I)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2d
    move-object v2, p0

    .line 363
    sget-object p0, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/volte2/data/CallProfile;

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_2e
    move-object v2, p0

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 353
    sget-object p1, Lcom/sec/ims/Dialog;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/Dialog;

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->pulling(Ljava/lang/String;Lcom/sec/ims/Dialog;)I

    move-result p0

    .line 356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2f
    move-object v2, p0

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 341
    sget-object p1, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/volte2/data/CallProfile;

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result p0

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_30
    move-object v2, p0

    .line 331
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getEndReason()I

    move-result p0

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_31
    move-object v2, p0

    .line 324
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result p0

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_32
    move-object v2, p0

    .line 317
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_33
    move-object v2, p0

    .line 310
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPrevCallStateOrdinal()I

    move-result p0

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_34
    move-object v2, p0

    .line 303
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result p0

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_35
    move-object v2, p0

    .line 296
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result p0

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_36
    move-object v2, p0

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->unregisterSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_37
    move-object v2, p0

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-interface {v2, p0}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_38
    move-object v2, p0

    .line 271
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getModifyRequestedProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_39
    move-object v2, p0

    .line 264
    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
