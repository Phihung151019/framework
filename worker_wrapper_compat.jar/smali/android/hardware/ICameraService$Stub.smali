.class public abstract Landroid/hardware/ICameraService$Stub;
.super Landroid/os/Binder;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraService"

.field static final TRANSACTION_addListener:I = 0x5

.field static final TRANSACTION_applyExtraRequestsToRequestInjector:I = 0x1d

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_connectDevice:I = 0x4

.field static final TRANSACTION_createDefaultRequest:I = 0x18

.field static final TRANSACTION_getCameraCharacteristics:I = 0xa

.field static final TRANSACTION_getCameraInfo:I = 0x2

.field static final TRANSACTION_getCameraVendorTagCache:I = 0xc

.field static final TRANSACTION_getCameraVendorTagDescriptor:I = 0xb

.field static final TRANSACTION_getConcurrentCameraIds:I = 0x6

.field static final TRANSACTION_getLegacyParameters:I = 0xd

.field static final TRANSACTION_getNumberOfCameras:I = 0x1

.field static final TRANSACTION_getSessionCharacteristics:I = 0x1a

.field static final TRANSACTION_getTorchStrengthLevel:I = 0x12

.field static final TRANSACTION_injectCamera:I = 0xf

.field static final TRANSACTION_injectSessionParams:I = 0x8

.field static final TRANSACTION_isConcurrentSessionConfigurationSupported:I = 0x7

.field static final TRANSACTION_isHiddenIdPermittedPackage:I = 0x1b

.field static final TRANSACTION_isHiddenPhysicalCamera:I = 0xe

.field static final TRANSACTION_isSessionConfigurationWithParametersSupported:I = 0x19

.field static final TRANSACTION_notifyDeviceInjectorOrientationChange:I = 0x25

.field static final TRANSACTION_notifyDeviceStateChange:I = 0x15

.field static final TRANSACTION_notifyDeviceStateChangeSync:I = 0x17

.field static final TRANSACTION_notifyDisplayConfigurationChange:I = 0x14

.field static final TRANSACTION_notifyPkgListParamChange:I = 0x1c

.field static final TRANSACTION_notifySystemEvent:I = 0x13

.field static final TRANSACTION_removeListener:I = 0x9

.field static final TRANSACTION_removeRequestInjectorCallback:I = 0x20

.field static final TRANSACTION_reportExtensionSessionStats:I = 0x16

.field static final TRANSACTION_setDeviceInjectorPending:I = 0x24

.field static final TRANSACTION_setRequestInjectorCallback:I = 0x1f

.field static final TRANSACTION_setTorchMode:I = 0x10

.field static final TRANSACTION_startDeviceInjector:I = 0x21

.field static final TRANSACTION_startRemoteDeviceInjector:I = 0x22

.field static final TRANSACTION_stopDeviceInjector:I = 0x23

.field static final TRANSACTION_turnOnTorchWithStrengthLevel:I = 0x11

.field static final TRANSACTION_updateRequestInjectorAllowedList:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 426
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 427
    const-string v0, "android.hardware.ICameraService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 435
    if-nez p0, :cond_0

    .line 436
    const/4 v0, 0x0

    return-object v0

    .line 438
    :cond_0
    const-string v0, "android.hardware.ICameraService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 439
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/ICameraService;

    if-eqz v1, :cond_1

    .line 440
    move-object v1, v0

    check-cast v1, Landroid/hardware/ICameraService;

    return-object v1

    .line 442
    :cond_1
    new-instance v1, Landroid/hardware/ICameraService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ICameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 446
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.hardware.ICameraService"

    .line 451
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v1, 0xffffff

    if-gt v9, v1, :cond_0

    .line 452
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    :cond_0
    const v1, 0x5f4e5446

    if-ne v9, v1, :cond_1

    .line 455
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    return v13

    .line 458
    :cond_1
    packed-switch v9, :pswitch_data_0

    .line 910
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 905
    :pswitch_0
    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->notifyDeviceInjectorOrientationChange()V

    .line 906
    goto/16 :goto_0

    .line 897
    :pswitch_1
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 898
    .local v1, "_arg0":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->setDeviceInjectorPending(Z)V

    .line 900
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    goto/16 :goto_0

    .line 890
    .end local v1    # "_arg0":Z
    :pswitch_2
    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->stopDeviceInjector()V

    .line 891
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    goto/16 :goto_0

    .line 876
    :pswitch_3
    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/IRemoteDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IRemoteDevice;

    move-result-object v3

    .line 882
    .local v3, "_arg2":Landroid/hardware/IRemoteDevice;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/IDeviceInjectorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IDeviceInjectorCallback;

    move-result-object v4

    .line 883
    .local v4, "_arg3":Landroid/hardware/IDeviceInjectorCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 884
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/ICameraService$Stub;->startRemoteDeviceInjector([Ljava/lang/String;[Ljava/lang/String;Landroid/hardware/IRemoteDevice;Landroid/hardware/IDeviceInjectorCallback;)V

    .line 885
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    goto/16 :goto_0

    .line 861
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/hardware/IRemoteDevice;
    .end local v4    # "_arg3":Landroid/hardware/IDeviceInjectorCallback;
    :pswitch_4
    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 863
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 865
    .restart local v2    # "_arg1":[Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 867
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/IDeviceInjectorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IDeviceInjectorCallback;

    move-result-object v4

    .line 868
    .restart local v4    # "_arg3":Landroid/hardware/IDeviceInjectorCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 869
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/ICameraService$Stub;->startDeviceInjector([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/hardware/IDeviceInjectorCallback;)V

    .line 870
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    goto/16 :goto_0

    .line 854
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/hardware/IDeviceInjectorCallback;
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->removeRequestInjectorCallback()V

    .line 855
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    goto/16 :goto_0

    .line 845
    :pswitch_6
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/IRequestInjectorCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/IRequestInjectorCallback;

    move-result-object v1

    .line 846
    .local v1, "_arg0":Lcom/samsung/android/camera/IRequestInjectorCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->setRequestInjectorCallback(Lcom/samsung/android/camera/IRequestInjectorCallback;)Z

    move-result v2

    .line 848
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 850
    goto/16 :goto_0

    .line 836
    .end local v1    # "_arg0":Lcom/samsung/android/camera/IRequestInjectorCallback;
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->updateRequestInjectorAllowedList([Ljava/lang/String;)V

    .line 839
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    goto/16 :goto_0

    .line 826
    .end local v1    # "_arg0":[Ljava/lang/String;
    :pswitch_8
    sget-object v1, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PersistableBundle;

    .line 827
    .local v1, "_arg0":[Landroid/os/PersistableBundle;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->applyExtraRequestsToRequestInjector([Landroid/os/PersistableBundle;)Z

    move-result v2

    .line 829
    .restart local v2    # "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 831
    goto/16 :goto_0

    .line 814
    .end local v1    # "_arg0":[Landroid/os/PersistableBundle;
    .end local v2    # "_result":Z
    :pswitch_9
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 816
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 818
    .local v2, "_arg1":[Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 819
    .local v3, "_arg2":[Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->notifyPkgListParamChange(I[Ljava/lang/String;[Ljava/lang/String;)V

    .line 821
    goto/16 :goto_0

    .line 804
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Ljava/lang/String;
    .end local v3    # "_arg2":[Ljava/lang/String;
    :pswitch_a
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->isHiddenIdPermittedPackage(Ljava/lang/String;)Z

    move-result v2

    .line 807
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 809
    goto/16 :goto_0

    .line 784
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_b
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 786
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 788
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 790
    .local v3, "_arg2":I
    sget-object v4, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 792
    .local v4, "_arg3":Landroid/hardware/camera2/params/SessionConfiguration;
    sget-object v5, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/AttributionSourceState;

    .line 794
    .local v5, "_arg4":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 795
    .local v6, "_arg5":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/ICameraService$Stub;->getSessionCharacteristics(Ljava/lang/String;IILandroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    .line 797
    .local v7, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {v11, v7, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 799
    goto/16 :goto_0

    .line 766
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local v5    # "_arg4":Landroid/content/AttributionSourceState;
    .end local v6    # "_arg5":I
    .end local v7    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_c
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 768
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 770
    .restart local v2    # "_arg1":I
    sget-object v0, Landroid/hardware/camera2/params/SessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/hardware/camera2/params/SessionConfiguration;

    .line 772
    .local v3, "_arg2":Landroid/hardware/camera2/params/SessionConfiguration;
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/AttributionSourceState;

    .line 774
    .local v4, "_arg3":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 775
    .local v5, "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->isSessionConfigurationWithParametersSupported(Ljava/lang/String;ILandroid/hardware/camera2/params/SessionConfiguration;Landroid/content/AttributionSourceState;I)Z

    move-result v6

    .line 777
    .local v6, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 779
    goto/16 :goto_0

    .line 750
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local v4    # "_arg3":Landroid/content/AttributionSourceState;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    :pswitch_d
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 752
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 754
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSourceState;

    .line 756
    .local v3, "_arg2":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 757
    .local v4, "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/ICameraService$Stub;->createDefaultRequest(Ljava/lang/String;ILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    .line 759
    .local v5, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {v11, v5, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 761
    goto/16 :goto_0

    .line 741
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSourceState;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_e
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 742
    .local v1, "_arg0":J
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->notifyDeviceStateChangeSync(J)V

    .line 744
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    goto/16 :goto_0

    .line 731
    .end local v1    # "_arg0":J
    :pswitch_f
    sget-object v1, Landroid/hardware/CameraExtensionSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/CameraExtensionSessionStats;

    .line 732
    .local v1, "_arg0":Landroid/hardware/CameraExtensionSessionStats;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->reportExtensionSessionStats(Landroid/hardware/CameraExtensionSessionStats;)Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 736
    goto/16 :goto_0

    .line 723
    .end local v1    # "_arg0":Landroid/hardware/CameraExtensionSessionStats;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 724
    .local v1, "_arg0":J
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->notifyDeviceStateChange(J)V

    .line 726
    goto/16 :goto_0

    .line 717
    .end local v1    # "_arg0":J
    :pswitch_11
    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->notifyDisplayConfigurationChange()V

    .line 718
    goto/16 :goto_0

    .line 708
    :pswitch_12
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 710
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 711
    .local v2, "_arg1":[I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->notifySystemEvent(I[I)V

    .line 713
    goto/16 :goto_0

    .line 694
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[I
    :pswitch_13
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSourceState;

    .line 698
    .local v2, "_arg1":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 699
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->getTorchStrengthLevel(Ljava/lang/String;Landroid/content/AttributionSourceState;I)I

    move-result v4

    .line 701
    .local v4, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    goto/16 :goto_0

    .line 677
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/AttributionSourceState;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :pswitch_14
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 679
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 681
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 683
    .local v3, "_arg2":Landroid/os/IBinder;
    sget-object v4, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSourceState;

    .line 685
    .local v4, "_arg3":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 686
    .local v5, "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 687
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->turnOnTorchWithStrengthLevel(Ljava/lang/String;ILandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V

    .line 688
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    goto/16 :goto_0

    .line 660
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/content/AttributionSourceState;
    .end local v5    # "_arg4":I
    :pswitch_15
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 662
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 664
    .local v2, "_arg1":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 666
    .restart local v3    # "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/AttributionSourceState;

    .line 668
    .restart local v4    # "_arg3":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 669
    .restart local v5    # "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 670
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;Landroid/content/AttributionSourceState;I)V

    .line 671
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    goto/16 :goto_0

    .line 644
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/content/AttributionSourceState;
    .end local v5    # "_arg4":I
    :pswitch_16
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 646
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/camera2/ICameraInjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraInjectionCallback;

    move-result-object v4

    .line 651
    .local v4, "_arg3":Landroid/hardware/camera2/ICameraInjectionCallback;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/ICameraService$Stub;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/ICameraInjectionCallback;)Landroid/hardware/camera2/ICameraInjectionSession;

    move-result-object v5

    .line 653
    .local v5, "_result":Landroid/hardware/camera2/ICameraInjectionSession;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 655
    goto/16 :goto_0

    .line 634
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/hardware/camera2/ICameraInjectionCallback;
    .end local v5    # "_result":Landroid/hardware/camera2/ICameraInjectionSession;
    :pswitch_17
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v2

    .line 637
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 639
    goto/16 :goto_0

    .line 624
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_18
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 625
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    goto/16 :goto_0

    .line 616
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_19
    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagCache()Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    move-result-object v1

    .line 617
    .local v1, "_result":Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 619
    goto/16 :goto_0

    .line 609
    .end local v1    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptorCache;
    :pswitch_1a
    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object v1

    .line 610
    .local v1, "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 612
    goto/16 :goto_0

    .line 592
    .end local v1    # "_result":Landroid/hardware/camera2/params/VendorTagDescriptor;
    :pswitch_1b
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 596
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 598
    .local v3, "_arg2":I
    sget-object v4, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/AttributionSourceState;

    .line 600
    .local v4, "_arg3":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 601
    .local v5, "_arg4":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/ICameraService$Stub;->getCameraCharacteristics(Ljava/lang/String;IILandroid/content/AttributionSourceState;I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    .line 603
    .local v6, "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {v11, v6, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 605
    goto/16 :goto_0

    .line 583
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/AttributionSourceState;
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_1c
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v1

    .line 584
    .local v1, "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    .line 586
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    goto/16 :goto_0

    .line 572
    .end local v1    # "_arg0":Landroid/hardware/ICameraServiceListener;
    :pswitch_1d
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/hardware/camera2/impl/CameraMetadataNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 575
    .local v2, "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, v1, v2}, Landroid/hardware/ICameraService$Stub;->injectSessionParams(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 577
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    goto/16 :goto_0

    .line 556
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :pswitch_1e
    sget-object v1, Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;

    .line 558
    .local v1, "_arg0":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 560
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSourceState;

    .line 562
    .local v3, "_arg2":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 563
    .local v4, "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/ICameraService$Stub;->isConcurrentSessionConfigurationSupported([Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;ILandroid/content/AttributionSourceState;I)Z

    move-result v5

    .line 565
    .local v5, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {v11, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 567
    goto/16 :goto_0

    .line 548
    .end local v1    # "_arg0":[Landroid/hardware/camera2/utils/CameraIdAndSessionConfiguration;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSourceState;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Z
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/ICameraService$Stub;->getConcurrentCameraIds()[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;

    move-result-object v1

    .line 549
    .local v1, "_result":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 551
    goto/16 :goto_0

    .line 539
    .end local v1    # "_result":[Landroid/hardware/camera2/utils/ConcurrentCameraIdCombination;
    :pswitch_20
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v1

    .line 540
    .local v1, "_arg0":Landroid/hardware/ICameraServiceListener;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {p0, v1}, Landroid/hardware/ICameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v2

    .line 542
    .local v2, "_result":[Landroid/hardware/CameraStatus;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 544
    goto/16 :goto_0

    .line 515
    .end local v1    # "_arg0":Landroid/hardware/ICameraServiceListener;
    .end local v2    # "_result":[Landroid/hardware/CameraStatus;
    :pswitch_21
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v1

    .line 517
    .local v1, "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 521
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 523
    .restart local v4    # "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 525
    .local v5, "_arg4":I
    sget-object v6, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/AttributionSourceState;

    .line 527
    .local v6, "_arg5":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 529
    .local v7, "_arg6":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 530
    .local v8, "_arg7":Z
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/ICameraService$Stub;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;IIILandroid/content/AttributionSourceState;IZ)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v14

    .line 532
    .local v14, "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 534
    goto :goto_0

    .line 493
    .end local v1    # "_arg0":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Landroid/content/AttributionSourceState;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Z
    .end local v14    # "_result":Landroid/hardware/camera2/ICameraDeviceUser;
    :pswitch_22
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v1

    .line 495
    .local v1, "_arg0":Landroid/hardware/ICameraClient;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 497
    .local v2, "_arg1":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 499
    .restart local v3    # "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 501
    .restart local v4    # "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 503
    .local v5, "_arg4":Z
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/AttributionSourceState;

    .line 505
    .restart local v6    # "_arg5":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 506
    .restart local v7    # "_arg6":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 507
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/ICameraService$Stub;->connect(Landroid/hardware/ICameraClient;IIIZLandroid/content/AttributionSourceState;I)Landroid/hardware/ICamera;

    move-result-object v8

    .line 508
    .local v8, "_result":Landroid/hardware/ICamera;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {v11, v8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 510
    goto :goto_0

    .line 477
    .end local v1    # "_arg0":Landroid/hardware/ICameraClient;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Landroid/content/AttributionSourceState;
    .end local v7    # "_arg6":I
    .end local v8    # "_result":Landroid/hardware/ICamera;
    :pswitch_23
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 479
    .local v1, "_arg0":I
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 481
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSourceState;

    .line 483
    .local v3, "_arg2":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 484
    .restart local v4    # "_arg3":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/ICameraService$Stub;->getCameraInfo(IILandroid/content/AttributionSourceState;I)Landroid/hardware/CameraInfo;

    move-result-object v5

    .line 486
    .local v5, "_result":Landroid/hardware/CameraInfo;
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {v11, v5, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 488
    goto :goto_0

    .line 463
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSourceState;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/hardware/CameraInfo;
    :pswitch_24
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 465
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSourceState;

    .line 467
    .local v2, "_arg1":Landroid/content/AttributionSourceState;
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 468
    .local v3, "_arg2":I
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->getNumberOfCameras(ILandroid/content/AttributionSourceState;I)I

    move-result v4

    .line 470
    .local v4, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    nop

    .line 913
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/content/AttributionSourceState;
    .end local v3    # "_arg2":I
    .end local v4    # "_result":I
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
