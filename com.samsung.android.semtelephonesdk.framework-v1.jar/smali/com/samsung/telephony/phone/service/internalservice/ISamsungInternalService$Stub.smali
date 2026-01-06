.class public abstract Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;
.super Landroid/os/Binder;
.source "ISamsungInternalService.java"

# interfaces
.implements Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_changeCallBarringPassword:I = 0x18

.field static final TRANSACTION_changeIccFdnPassword:I = 0x10

.field static final TRANSACTION_getActiveFgCallState:I = 0xa

.field static final TRANSACTION_getAllowedNetworkTypes:I = 0x35

.field static final TRANSACTION_getIccPersoSubStateAsString:I = 0x8

.field static final TRANSACTION_getIccPin2RetryCount:I = 0x5

.field static final TRANSACTION_getIccPuk2retryCount:I = 0x7

.field static final TRANSACTION_getOcsglAvailable:I = 0x2c

.field static final TRANSACTION_getRevision:I = 0x1

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x22

.field static final TRANSACTION_isCspPlmnEnabled:I = 0xb

.field static final TRANSACTION_isFdnAvailable:I = 0x9

.field static final TRANSACTION_isIccFdnEnabled:I = 0x4

.field static final TRANSACTION_isIccPin2Blocked:I = 0x6

.field static final TRANSACTION_isNetworkPolicyRestrictBackground:I = 0x3

.field static final TRANSACTION_isOCSGLAvailable:I = 0xc

.field static final TRANSACTION_notifyVoicemailNumberChanged:I = 0x2

.field static final TRANSACTION_queryAvailableCsg:I = 0x29

.field static final TRANSACTION_queryAvailableNetwork:I = 0x27

.field static final TRANSACTION_queryCallBarring:I = 0x16

.field static final TRANSACTION_queryCallForwardingOption:I = 0x1b

.field static final TRANSACTION_queryCallWaiting:I = 0x14

.field static final TRANSACTION_queryCdmaRoamingPreference:I = 0x26

.field static final TRANSACTION_queryEnhancedVoicePrivacy:I = 0x1d

.field static final TRANSACTION_queryIcBarring:I = 0x19

.field static final TRANSACTION_queryOutGoingCallerIdDisplay:I = 0x31

.field static final TRANSACTION_queryPreferredNetworkList:I = 0x1f

.field static final TRANSACTION_queryPreferredNetworkType:I = 0x21

.field static final TRANSACTION_selectCsg:I = 0x2d

.field static final TRANSACTION_setAllowedNetworkTypes:I = 0x36

.field static final TRANSACTION_setCallBarring:I = 0x17

.field static final TRANSACTION_setCallForwardingOption:I = 0x1c

.field static final TRANSACTION_setCallWaiting:I = 0x15

.field static final TRANSACTION_setCdmaRoamingPreference:I = 0x2e

.field static final TRANSACTION_setCdmaSubscription:I = 0x25

.field static final TRANSACTION_setCsgManually:I = 0x2a

.field static final TRANSACTION_setDataRoamingEnabled:I = 0xd

.field static final TRANSACTION_setEnhancedVoicePrivacy:I = 0x1e

.field static final TRANSACTION_setIcBarring:I = 0x1a

.field static final TRANSACTION_setIccEpsLoci:I = 0x13

.field static final TRANSACTION_setIccFdnEnabled:I = 0x12

.field static final TRANSACTION_setIccFplmn:I = 0xf

.field static final TRANSACTION_setIccLoci:I = 0x34

.field static final TRANSACTION_setIccPsLoci:I = 0x33

.field static final TRANSACTION_setInternalPdnEnabled:I = 0x2f

.field static final TRANSACTION_setNetworkManually:I = 0x28

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x24

.field static final TRANSACTION_setOutGoingCallerIdDisplay:I = 0x32

.field static final TRANSACTION_setPreferredNetworkList:I = 0x20

.field static final TRANSACTION_setPreferredNetworkType:I = 0x23

.field static final TRANSACTION_setRadioPower:I = 0xe

.field static final TRANSACTION_setVoiceMailNumber:I = 0x2b

.field static final TRANSACTION_supplyIccNetworkDepersonalization:I = 0x30

.field static final TRANSACTION_supplyIccPuk2:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 205
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 206
    const-string v0, "com.samsung.telephony.phone.service.internalservice.ISamsungInternalService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 214
    if-nez p0, :cond_0

    .line 215
    const/4 v0, 0x0

    return-object v0

    .line 217
    :cond_0
    const-string v0, "com.samsung.telephony.phone.service.internalservice.ISamsungInternalService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 218
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    if-eqz v1, :cond_1

    .line 219
    move-object v1, v0

    check-cast v1, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    return-object v1

    .line 221
    :cond_1
    new-instance v1, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 225
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    move-object v8, p3

    const-string v9, "com.samsung.telephony.phone.service.internalservice.ISamsungInternalService"

    .line 230
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_0

    const v1, 0xffffff

    if-gt p1, v1, :cond_0

    .line 231
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    :cond_0
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_1

    .line 234
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    return v10

    .line 237
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 898
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 886
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 888
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 890
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 891
    .local v3, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setAllowedNetworkTypes(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    goto/16 :goto_0

    .line 876
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 877
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 878
    invoke-virtual {p0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getAllowedNetworkTypes(I)I

    move-result v2

    .line 879
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    goto/16 :goto_0

    .line 863
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 865
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 867
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 868
    .restart local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 870
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    goto/16 :goto_0

    .line 852
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 854
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 855
    .restart local v2    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccPsLoci(I[B)V

    .line 857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    goto/16 :goto_0

    .line 839
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 841
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 843
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 844
    .restart local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 845
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setOutGoingCallerIdDisplay(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    goto/16 :goto_0

    .line 828
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 830
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    .line 831
    .local v2, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryOutGoingCallerIdDisplay(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 833
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    goto/16 :goto_0

    .line 813
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 815
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 819
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v4

    .line 820
    .local v4, "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->supplyIccNetworkDepersonalization(ILjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    goto/16 :goto_0

    .line 802
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 804
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 805
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setInternalPdnEnabled(IZ)V

    .line 807
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    goto/16 :goto_0

    .line 789
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 791
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 793
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 794
    .local v3, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 795
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCdmaRoamingPreference(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 796
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    goto/16 :goto_0

    .line 778
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 780
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    .line 781
    .local v2, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->selectCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 783
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    goto/16 :goto_0

    .line 768
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 769
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {p0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getOcsglAvailable(I)Z

    move-result v2

    .line 771
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 773
    goto/16 :goto_0

    .line 753
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 755
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 759
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v4

    .line 760
    .restart local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 762
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    goto/16 :goto_0

    .line 737
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 739
    .restart local v1    # "_arg0":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 740
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 742
    .local v3, "_arg1":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 744
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v5

    .line 745
    .local v5, "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCsgManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 747
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    goto/16 :goto_0

    .line 726
    .end local v1    # "_arg0":I
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg1":Ljava/util/List;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 728
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    .line 729
    .local v2, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryAvailableCsg(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 731
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    goto/16 :goto_0

    .line 710
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 712
    .restart local v1    # "_arg0":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 713
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 715
    .restart local v3    # "_arg1":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 717
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v5

    .line 718
    .restart local v5    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 719
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setNetworkManually(ILjava/util/List;ZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 720
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    goto/16 :goto_0

    .line 699
    .end local v1    # "_arg0":I
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg1":Ljava/util/List;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 701
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    .line 702
    .local v2, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryAvailableNetwork(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 704
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    goto/16 :goto_0

    .line 688
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 690
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    .line 691
    .restart local v2    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryCdmaRoamingPreference(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    goto/16 :goto_0

    .line 675
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 677
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 679
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v3

    .line 680
    .local v3, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 681
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCdmaSubscription(IILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    goto/16 :goto_0

    .line 664
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 666
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v2

    .line 667
    .local v2, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setNetworkSelectionModeAutomatic(ILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    goto/16 :goto_0

    .line 651
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 653
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 655
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 656
    .local v3, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setPreferredNetworkType(IILcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 658
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    goto/16 :goto_0

    .line 638
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 640
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 642
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v3

    .line 643
    .local v3, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->invokeOemRilRequestRaw(I[BLcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    goto/16 :goto_0

    .line 627
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 629
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    .line 630
    .local v2, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryPreferredNetworkType(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    goto/16 :goto_0

    .line 613
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 615
    .restart local v1    # "_arg0":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 616
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    .line 618
    .local v3, "_arg1":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v4

    .line 619
    .local v4, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 620
    invoke-virtual {p0, v1, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setPreferredNetworkList(ILjava/util/List;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    goto/16 :goto_0

    .line 602
    .end local v1    # "_arg0":I
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg1":Ljava/util/List;
    .end local v4    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 604
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    .line 605
    .local v2, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryPreferredNetworkList(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 607
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    goto/16 :goto_0

    .line 589
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 591
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 593
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 594
    .local v3, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 595
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setEnhancedVoicePrivacy(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    goto/16 :goto_0

    .line 578
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 580
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    .line 581
    .local v2, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryEnhancedVoicePrivacy(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    goto/16 :goto_0

    .line 557
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 559
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 561
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 563
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 565
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 567
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 569
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v7

    .line 570
    .local v7, "_arg6":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCallForwardingOption(IZIZLjava/lang/String;ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    goto/16 :goto_0

    .line 542
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 544
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 546
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 548
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v4

    .line 549
    .local v4, "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryCallForwardingOption(IZILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    goto/16 :goto_0

    .line 529
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 531
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Bundle;

    .line 533
    .local v2, "_arg1":[Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v3

    .line 534
    .local v3, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIcBarring(I[Landroid/os/Bundle;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    goto/16 :goto_0

    .line 518
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/os/Bundle;
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 520
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    .line 521
    .local v2, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryIcBarring(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    goto/16 :goto_0

    .line 503
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 505
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v4

    .line 510
    .restart local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    goto/16 :goto_0

    .line 484
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 486
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 488
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 490
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 492
    .local v4, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 494
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v6

    .line 495
    .local v6, "_arg5":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCallBarring(IZLjava/lang/String;ZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 497
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    goto/16 :goto_0

    .line 469
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 471
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 473
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 475
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v4

    .line 476
    .local v4, "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryCallBarring(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    goto/16 :goto_0

    .line 456
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 458
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 460
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 461
    .local v3, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setCallWaiting(IZLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    goto/16 :goto_0

    .line 445
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 447
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;

    move-result-object v2

    .line 448
    .local v2, "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->queryCallWaiting(ILcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    goto/16 :goto_0

    .line 432
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener;
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 434
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 436
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 437
    .restart local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccEpsLoci(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    goto/16 :goto_0

    .line 417
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 419
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 421
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v4

    .line 424
    .local v4, "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 425
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccFdnEnabled(IZLjava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 426
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    goto/16 :goto_0

    .line 402
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 404
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 408
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v4

    .line 409
    .restart local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->supplyIccPuk2(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    goto/16 :goto_0

    .line 387
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 389
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 391
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 393
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v4

    .line 394
    .restart local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->changeIccFdnPassword(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    goto/16 :goto_0

    .line 374
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 376
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 378
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;

    move-result-object v3

    .line 379
    .local v3, "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setIccFplmn(I[BLcom/samsung/telephony/phone/service/internalservice/IOnResultListener;)V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    goto/16 :goto_0

    .line 363
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener;
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 365
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 366
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setRadioPower(IZ)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto/16 :goto_0

    .line 352
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 355
    .restart local v2    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v1, v2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->setDataRoamingEnabled(IZ)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    goto/16 :goto_0

    .line 342
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {p0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isOCSGLAvailable(I)Z

    move-result v2

    .line 345
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 347
    goto/16 :goto_0

    .line 332
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isCspPlmnEnabled(I)Z

    move-result v2

    .line 335
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 337
    goto/16 :goto_0

    .line 324
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_2c
    invoke-virtual {p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getActiveFgCallState()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    goto/16 :goto_0

    .line 315
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 316
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isFdnAvailable(I)Z

    move-result v2

    .line 318
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 320
    goto/16 :goto_0

    .line 305
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getIccPersoSubStateAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    goto :goto_0

    .line 295
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 296
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 297
    invoke-virtual {p0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getIccPuk2retryCount(I)I

    move-result v2

    .line 298
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    goto :goto_0

    .line 285
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 286
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isIccPin2Blocked(I)Z

    move-result v2

    .line 288
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 290
    goto :goto_0

    .line 275
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getIccPin2RetryCount(I)I

    move-result v2

    .line 278
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    goto :goto_0

    .line 265
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 266
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {p0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isIccFdnEnabled(I)Z

    move-result v2

    .line 268
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 270
    goto :goto_0

    .line 257
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_33
    invoke-virtual {p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->isNetworkPolicyRestrictBackground()Z

    move-result v1

    .line 258
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    goto :goto_0

    .line 249
    .end local v1    # "_result":Z
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 250
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->notifyVoicemailNumberChanged(I)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    goto :goto_0

    .line 241
    .end local v1    # "_arg0":I
    :pswitch_35
    invoke-virtual {p0}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->getRevision()I

    move-result v1

    .line 242
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    nop

    .line 901
    .end local v1    # "_result":I
    :goto_0
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
