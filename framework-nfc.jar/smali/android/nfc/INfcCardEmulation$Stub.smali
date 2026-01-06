.class public abstract Landroid/nfc/INfcCardEmulation$Stub;
.super Landroid/os/Binder;
.source "INfcCardEmulation.java"

# interfaces
.implements Landroid/nfc/INfcCardEmulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcCardEmulation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcCardEmulation$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcCardEmulation"

.field static final blacklist TRANSACTION_getAidGroupForService:I = 0xb

.field static final blacklist TRANSACTION_getDefaultNfcSubscriptionId:I = 0x19

.field static final blacklist TRANSACTION_getPreferredPaymentService:I = 0x13

.field static final blacklist TRANSACTION_getRoutingStatus:I = 0x1d

.field static final blacklist TRANSACTION_getServices:I = 0xf

.field static final blacklist TRANSACTION_isAutoChangeEnabled:I = 0x1c

.field static final blacklist TRANSACTION_isDefaultPaymentRegistered:I = 0x15

.field static final blacklist TRANSACTION_isDefaultServiceForAid:I = 0x2

.field static final blacklist TRANSACTION_isDefaultServiceForCategory:I = 0x1

.field static final blacklist TRANSACTION_isEuiccSupported:I = 0x18

.field static final blacklist TRANSACTION_overrideRoutingTable:I = 0x16

.field static final blacklist TRANSACTION_overwriteRoutingTable:I = 0x1e

.field static final blacklist TRANSACTION_recoverRoutingTable:I = 0x17

.field static final blacklist TRANSACTION_registerAidGroupForService:I = 0x6

.field static final blacklist TRANSACTION_registerNfcEventCallback:I = 0x1f

.field static final blacklist TRANSACTION_registerPollingLoopFilterForService:I = 0x7

.field static final blacklist TRANSACTION_registerPollingLoopPatternFilterForService:I = 0x8

.field static final blacklist TRANSACTION_removeAidGroupForService:I = 0xc

.field static final blacklist TRANSACTION_removePollingLoopFilterForService:I = 0xd

.field static final blacklist TRANSACTION_removePollingLoopPatternFilterForService:I = 0xe

.field static final blacklist TRANSACTION_setAutoChangeStatus:I = 0x1b

.field static final blacklist TRANSACTION_setDefaultForNextTap:I = 0x4

.field static final blacklist TRANSACTION_setDefaultNfcSubscriptionId:I = 0x1a

.field static final blacklist TRANSACTION_setDefaultServiceForCategory:I = 0x3

.field static final blacklist TRANSACTION_setOffHostForService:I = 0x9

.field static final blacklist TRANSACTION_setPreferredService:I = 0x10

.field static final blacklist TRANSACTION_setServiceEnabledForCategoryOther:I = 0x14

.field static final blacklist TRANSACTION_setShouldDefaultToObserveModeForService:I = 0x5

.field static final blacklist TRANSACTION_supportsAidPrefixRegistration:I = 0x12

.field static final blacklist TRANSACTION_unregisterNfcEventCallback:I = 0x20

.field static final blacklist TRANSACTION_unsetOffHostForService:I = 0xa

.field static final blacklist TRANSACTION_unsetPreferredService:I = 0x11


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 150
    const-string v0, "android.nfc.INfcCardEmulation"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcCardEmulation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcCardEmulation;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 158
    if-nez p0, :cond_0

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    const-string v0, "android.nfc.INfcCardEmulation"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 162
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/nfc/INfcCardEmulation;

    if-eqz v1, :cond_1

    .line 163
    move-object v1, v0

    check-cast v1, Landroid/nfc/INfcCardEmulation;

    return-object v1

    .line 165
    :cond_1
    new-instance v1, Landroid/nfc/INfcCardEmulation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcCardEmulation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 174
    packed-switch p0, :pswitch_data_0

    .line 306
    const/4 v0, 0x0

    return-object v0

    .line 302
    :pswitch_0
    const-string v0, "unregisterNfcEventCallback"

    return-object v0

    .line 298
    :pswitch_1
    const-string v0, "registerNfcEventCallback"

    return-object v0

    .line 294
    :pswitch_2
    const-string v0, "overwriteRoutingTable"

    return-object v0

    .line 290
    :pswitch_3
    const-string v0, "getRoutingStatus"

    return-object v0

    .line 286
    :pswitch_4
    const-string v0, "isAutoChangeEnabled"

    return-object v0

    .line 282
    :pswitch_5
    const-string v0, "setAutoChangeStatus"

    return-object v0

    .line 278
    :pswitch_6
    const-string v0, "setDefaultNfcSubscriptionId"

    return-object v0

    .line 274
    :pswitch_7
    const-string v0, "getDefaultNfcSubscriptionId"

    return-object v0

    .line 270
    :pswitch_8
    const-string v0, "isEuiccSupported"

    return-object v0

    .line 266
    :pswitch_9
    const-string v0, "recoverRoutingTable"

    return-object v0

    .line 262
    :pswitch_a
    const-string v0, "overrideRoutingTable"

    return-object v0

    .line 258
    :pswitch_b
    const-string v0, "isDefaultPaymentRegistered"

    return-object v0

    .line 254
    :pswitch_c
    const-string v0, "setServiceEnabledForCategoryOther"

    return-object v0

    .line 250
    :pswitch_d
    const-string v0, "getPreferredPaymentService"

    return-object v0

    .line 246
    :pswitch_e
    const-string v0, "supportsAidPrefixRegistration"

    return-object v0

    .line 242
    :pswitch_f
    const-string v0, "unsetPreferredService"

    return-object v0

    .line 238
    :pswitch_10
    const-string v0, "setPreferredService"

    return-object v0

    .line 234
    :pswitch_11
    const-string v0, "getServices"

    return-object v0

    .line 230
    :pswitch_12
    const-string v0, "removePollingLoopPatternFilterForService"

    return-object v0

    .line 226
    :pswitch_13
    const-string v0, "removePollingLoopFilterForService"

    return-object v0

    .line 222
    :pswitch_14
    const-string v0, "removeAidGroupForService"

    return-object v0

    .line 218
    :pswitch_15
    const-string v0, "getAidGroupForService"

    return-object v0

    .line 214
    :pswitch_16
    const-string v0, "unsetOffHostForService"

    return-object v0

    .line 210
    :pswitch_17
    const-string v0, "setOffHostForService"

    return-object v0

    .line 206
    :pswitch_18
    const-string v0, "registerPollingLoopPatternFilterForService"

    return-object v0

    .line 202
    :pswitch_19
    const-string v0, "registerPollingLoopFilterForService"

    return-object v0

    .line 198
    :pswitch_1a
    const-string v0, "registerAidGroupForService"

    return-object v0

    .line 194
    :pswitch_1b
    const-string v0, "setShouldDefaultToObserveModeForService"

    return-object v0

    .line 190
    :pswitch_1c
    const-string v0, "setDefaultForNextTap"

    return-object v0

    .line 186
    :pswitch_1d
    const-string v0, "setDefaultServiceForCategory"

    return-object v0

    .line 182
    :pswitch_1e
    const-string v0, "isDefaultServiceForAid"

    return-object v0

    .line 178
    :pswitch_1f
    const-string v0, "isDefaultServiceForCategory"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 169
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1352
    const/16 v0, 0x1f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 313
    invoke-static {p1}, Landroid/nfc/INfcCardEmulation$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 317
    const-string v0, "android.nfc.INfcCardEmulation"

    .line 318
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 319
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 322
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    return v1

    .line 325
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 703
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 695
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcEventCallback;

    move-result-object v2

    .line 696
    .local v2, "_arg0":Landroid/nfc/INfcEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 697
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->unregisterNfcEventCallback(Landroid/nfc/INfcEventCallback;)V

    .line 698
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    move-object v3, p0

    goto/16 :goto_0

    .line 686
    .end local v2    # "_arg0":Landroid/nfc/INfcEventCallback;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcEventCallback;

    move-result-object v2

    .line 687
    .restart local v2    # "_arg0":Landroid/nfc/INfcEventCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->registerNfcEventCallback(Landroid/nfc/INfcEventCallback;)V

    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    move-object v3, p0

    goto/16 :goto_0

    .line 669
    .end local v2    # "_arg0":Landroid/nfc/INfcEventCallback;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 671
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 673
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 675
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 677
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 678
    .local v8, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/nfc/INfcCardEmulation$Stub;->overwriteRoutingTable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    goto/16 :goto_0

    .line 661
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":Ljava/lang/String;
    :pswitch_3
    move-object v3, p0

    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->getRoutingStatus()Ljava/util/List;

    move-result-object v2

    .line 662
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 664
    goto/16 :goto_0

    .line 654
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    move-object v3, p0

    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->isAutoChangeEnabled()Z

    move-result v2

    .line 655
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 657
    goto/16 :goto_0

    .line 646
    .end local v2    # "_result":Z
    :pswitch_5
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 647
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 648
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->setAutoChangeStatus(Z)V

    .line 649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    goto/16 :goto_0

    .line 634
    .end local v2    # "_arg0":Z
    :pswitch_6
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 636
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 637
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {p0, v2, v4}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultNfcSubscriptionId(ILjava/lang/String;)I

    move-result v5

    .line 639
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    goto/16 :goto_0

    .line 624
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_7
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->getDefaultNfcSubscriptionId(Ljava/lang/String;)I

    move-result v4

    .line 627
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    goto/16 :goto_0

    .line 616
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_8
    move-object v3, p0

    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->isEuiccSupported()Z

    move-result v2

    .line 617
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 619
    goto/16 :goto_0

    .line 608
    .end local v2    # "_result":Z
    :pswitch_9
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 609
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->recoverRoutingTable(I)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    goto/16 :goto_0

    .line 593
    .end local v2    # "_arg0":I
    :pswitch_a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 595
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 599
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 600
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/nfc/INfcCardEmulation$Stub;->overrideRoutingTable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    goto/16 :goto_0

    .line 585
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    :pswitch_b
    move-object v3, p0

    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultPaymentRegistered()Z

    move-result v2

    .line 586
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 588
    goto/16 :goto_0

    .line 572
    .end local v2    # "_result":Z
    :pswitch_c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 574
    .local v2, "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 576
    .local v4, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 577
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v2, v4, v5}, Landroid/nfc/INfcCardEmulation$Stub;->setServiceEnabledForCategoryOther(ILandroid/content/ComponentName;Z)I

    move-result v6

    .line 579
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    goto/16 :goto_0

    .line 562
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    .end local v6    # "_result":I
    :pswitch_d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 563
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->getPreferredPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v4

    .line 565
    .local v4, "_result":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 567
    goto/16 :goto_0

    .line 554
    .end local v2    # "_arg0":I
    .end local v4    # "_result":Landroid/nfc/cardemulation/ApduServiceInfo;
    :pswitch_e
    move-object v3, p0

    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->supportsAidPrefixRegistration()Z

    move-result v2

    .line 555
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 557
    goto/16 :goto_0

    .line 547
    .end local v2    # "_result":Z
    :pswitch_f
    move-object v3, p0

    invoke-virtual {p0}, Landroid/nfc/INfcCardEmulation$Stub;->unsetPreferredService()Z

    move-result v2

    .line 548
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 550
    goto/16 :goto_0

    .line 538
    .end local v2    # "_result":Z
    :pswitch_10
    move-object v3, p0

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 539
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {p0, v2}, Landroid/nfc/INfcCardEmulation$Stub;->setPreferredService(Landroid/content/ComponentName;)Z

    move-result v4

    .line 541
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 543
    goto/16 :goto_0

    .line 526
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_result":Z
    :pswitch_11
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 528
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v2, v4}, Landroid/nfc/INfcCardEmulation$Stub;->getServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 531
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 533
    goto/16 :goto_0

    .line 512
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :pswitch_12
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 514
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 516
    .local v4, "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {p0, v2, v4, v5}, Landroid/nfc/INfcCardEmulation$Stub;->removePollingLoopPatternFilterForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v6

    .line 519
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 521
    goto/16 :goto_0

    .line 498
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_13
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 500
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 502
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 503
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v2, v4, v5}, Landroid/nfc/INfcCardEmulation$Stub;->removePollingLoopFilterForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v6

    .line 505
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 507
    goto/16 :goto_0

    .line 484
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_14
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 486
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 488
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 489
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2, v4, v5}, Landroid/nfc/INfcCardEmulation$Stub;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v6

    .line 491
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 493
    goto/16 :goto_0

    .line 470
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_15
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 472
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 474
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 475
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v2, v4, v5}, Landroid/nfc/INfcCardEmulation$Stub;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v6

    .line 477
    .local v6, "_result":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 479
    goto/16 :goto_0

    .line 458
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Landroid/nfc/cardemulation/AidGroup;
    :pswitch_16
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 460
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 461
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2, v4}, Landroid/nfc/INfcCardEmulation$Stub;->unsetOffHostForService(ILandroid/content/ComponentName;)Z

    move-result v5

    .line 463
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 465
    goto/16 :goto_0

    .line 444
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_result":Z
    :pswitch_17
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 446
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 448
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, v2, v4, v5}, Landroid/nfc/INfcCardEmulation$Stub;->setOffHostForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v6

    .line 451
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 453
    goto/16 :goto_0

    .line 428
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_18
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 430
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 432
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 434
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 435
    .local v6, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/nfc/INfcCardEmulation$Stub;->registerPollingLoopPatternFilterForService(ILandroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v7

    .line 437
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 439
    goto/16 :goto_0

    .line 412
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Z
    .end local v7    # "_result":Z
    :pswitch_19
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 414
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 416
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 418
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 419
    .restart local v6    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/nfc/INfcCardEmulation$Stub;->registerPollingLoopFilterForService(ILandroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v7

    .line 421
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 423
    goto/16 :goto_0

    .line 398
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Z
    .end local v7    # "_result":Z
    :pswitch_1a
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 400
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 402
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    sget-object v5, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/AidGroup;

    .line 403
    .local v5, "_arg2":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v2, v4, v5}, Landroid/nfc/INfcCardEmulation$Stub;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    move-result v6

    .line 405
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 407
    goto/16 :goto_0

    .line 384
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Landroid/nfc/cardemulation/AidGroup;
    .end local v6    # "_result":Z
    :pswitch_1b
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 386
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 388
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 389
    .local v5, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2, v4, v5}, Landroid/nfc/INfcCardEmulation$Stub;->setShouldDefaultToObserveModeForService(ILandroid/content/ComponentName;Z)Z

    move-result v6

    .line 391
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 393
    goto/16 :goto_0

    .line 372
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Z
    .end local v6    # "_result":Z
    :pswitch_1c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 375
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v2, v4}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v5

    .line 377
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 379
    goto :goto_0

    .line 358
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_result":Z
    :pswitch_1d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 360
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 362
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v2, v4, v5}, Landroid/nfc/INfcCardEmulation$Stub;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v6

    .line 365
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 367
    goto :goto_0

    .line 344
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_1e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 346
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 348
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 349
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, v2, v4, v5}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v6

    .line 351
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 353
    goto :goto_0

    .line 330
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_1f
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 332
    .restart local v2    # "_arg0":I
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 334
    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 335
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2, v4, v5}, Landroid/nfc/INfcCardEmulation$Stub;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v6

    .line 337
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 339
    nop

    .line 706
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
