.class public abstract Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;
.super Landroid/os/Binder;
.source "ISemInputDeviceManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activate:I = 0x1a

.field static final TRANSACTION_enableMotion:I = 0x7

.field static final TRANSACTION_getCommandList:I = 0xe

.field static final TRANSACTION_getDeviceEnabled:I = 0xd

.field static final TRANSACTION_getKeyPressStateAll:I = 0x1

.field static final TRANSACTION_getMotionControl:I = 0xa

.field static final TRANSACTION_getProperty:I = 0x1d

.field static final TRANSACTION_getSupportDevice:I = 0xb

.field static final TRANSACTION_getTspSupportFeature:I = 0xc

.field static final TRANSACTION_isEnableMotion:I = 0x8

.field static final TRANSACTION_isKeyPressedByKeycode:I = 0x2

.field static final TRANSACTION_isSupportMotion:I = 0x6

.field static final TRANSACTION_registerListener:I = 0x3

.field static final TRANSACTION_runCommand:I = 0x1e

.field static final TRANSACTION_sendRawdataTsp:I = 0x5

.field static final TRANSACTION_setAodEnable:I = 0x12

.field static final TRANSACTION_setAodRect:I = 0x11

.field static final TRANSACTION_setAotEnable:I = 0x13

.field static final TRANSACTION_setCommand:I = 0x1b

.field static final TRANSACTION_setFodEnable:I = 0x14

.field static final TRANSACTION_setFodLpMode:I = 0x16

.field static final TRANSACTION_setFodRect:I = 0x15

.field static final TRANSACTION_setMotionControl:I = 0x9

.field static final TRANSACTION_setProperty:I = 0x1c

.field static final TRANSACTION_setSingletapEnable:I = 0x17

.field static final TRANSACTION_setSpenEnabled:I = 0x19

.field static final TRANSACTION_setSyncChanged:I = 0x18

.field static final TRANSACTION_setTemperature:I = 0x10

.field static final TRANSACTION_setTspEnabled:I = 0xf

.field static final TRANSACTION_unregisterListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 151
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 159
    if-nez p0, :cond_0

    .line 160
    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_0
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 163
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    if-eqz v1, :cond_1

    .line 164
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    return-object v1

    .line 166
    :cond_1
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 175
    packed-switch p0, :pswitch_data_0

    .line 299
    const/4 v0, 0x0

    return-object v0

    .line 295
    :pswitch_0
    const-string v0, "runCommand"

    return-object v0

    .line 291
    :pswitch_1
    const-string v0, "getProperty"

    return-object v0

    .line 287
    :pswitch_2
    const-string v0, "setProperty"

    return-object v0

    .line 283
    :pswitch_3
    const-string v0, "setCommand"

    return-object v0

    .line 279
    :pswitch_4
    const-string v0, "activate"

    return-object v0

    .line 275
    :pswitch_5
    const-string v0, "setSpenEnabled"

    return-object v0

    .line 271
    :pswitch_6
    const-string v0, "setSyncChanged"

    return-object v0

    .line 267
    :pswitch_7
    const-string v0, "setSingletapEnable"

    return-object v0

    .line 263
    :pswitch_8
    const-string v0, "setFodLpMode"

    return-object v0

    .line 259
    :pswitch_9
    const-string v0, "setFodRect"

    return-object v0

    .line 255
    :pswitch_a
    const-string v0, "setFodEnable"

    return-object v0

    .line 251
    :pswitch_b
    const-string v0, "setAotEnable"

    return-object v0

    .line 247
    :pswitch_c
    const-string v0, "setAodEnable"

    return-object v0

    .line 243
    :pswitch_d
    const-string v0, "setAodRect"

    return-object v0

    .line 239
    :pswitch_e
    const-string v0, "setTemperature"

    return-object v0

    .line 235
    :pswitch_f
    const-string v0, "setTspEnabled"

    return-object v0

    .line 231
    :pswitch_10
    const-string v0, "getCommandList"

    return-object v0

    .line 227
    :pswitch_11
    const-string v0, "getDeviceEnabled"

    return-object v0

    .line 223
    :pswitch_12
    const-string v0, "getTspSupportFeature"

    return-object v0

    .line 219
    :pswitch_13
    const-string v0, "getSupportDevice"

    return-object v0

    .line 215
    :pswitch_14
    const-string v0, "getMotionControl"

    return-object v0

    .line 211
    :pswitch_15
    const-string v0, "setMotionControl"

    return-object v0

    .line 207
    :pswitch_16
    const-string v0, "isEnableMotion"

    return-object v0

    .line 203
    :pswitch_17
    const-string v0, "enableMotion"

    return-object v0

    .line 199
    :pswitch_18
    const-string v0, "isSupportMotion"

    return-object v0

    .line 195
    :pswitch_19
    const-string v0, "sendRawdataTsp"

    return-object v0

    .line 191
    :pswitch_1a
    const-string v0, "unregisterListener"

    return-object v0

    .line 187
    :pswitch_1b
    const-string v0, "registerListener"

    return-object v0

    .line 183
    :pswitch_1c
    const-string v0, "isKeyPressedByKeycode"

    return-object v0

    .line 179
    :pswitch_1d
    const-string v0, "getKeyPressStateAll"

    return-object v0

    nop

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


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 170
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 1311
    const/16 v0, 0x1d

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 306
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceManager"

    .line 311
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 312
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 315
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    return v1

    .line 318
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 683
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 672
    :pswitch_0
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 674
    .local v2, "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->runCommand(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 677
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 679
    goto/16 :goto_0

    .line 660
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 662
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 663
    .local v3, "_arg1":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v4

    .line 665
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    goto/16 :goto_0

    .line 646
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .end local v3    # "_arg1":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_2
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 648
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 650
    .restart local v3    # "_arg1":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I

    move-result v5

    .line 653
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    goto/16 :goto_0

    .line 632
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .end local v3    # "_arg1":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_3
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 634
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;

    .line 636
    .local v3, "_arg1":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 637
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setCommand(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v5

    .line 639
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    goto/16 :goto_0

    .line 618
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .end local v3    # "_arg1":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_4
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 620
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;

    .line 622
    .local v3, "_arg1":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 623
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->activate(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;Z)I

    move-result v5

    .line 625
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    goto/16 :goto_0

    .line 604
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .end local v3    # "_arg1":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$DisplayState;
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 606
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 608
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 609
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenEnabled(IIZ)I

    move-result v5

    .line 611
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    goto/16 :goto_0

    .line 594
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 595
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 596
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSyncChanged(I)I

    move-result v3

    .line 597
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    goto/16 :goto_0

    .line 584
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 585
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSingletapEnable(I)I

    move-result v3

    .line 587
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    goto/16 :goto_0

    .line 574
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 575
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 576
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodLpMode(I)I

    move-result v3

    .line 577
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    goto/16 :goto_0

    .line 558
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 560
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 562
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 564
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 565
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodRect(IIII)I

    move-result v6

    .line 567
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    goto/16 :goto_0

    .line 542
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 544
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 546
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 548
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 549
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodEnable(IIII)I

    move-result v6

    .line 551
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    goto/16 :goto_0

    .line 532
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 533
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setAotEnable(I)I

    move-result v3

    .line 535
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    goto/16 :goto_0

    .line 522
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 523
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setAodEnable(I)I

    move-result v3

    .line 525
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    goto/16 :goto_0

    .line 506
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 508
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 510
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 512
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 513
    .restart local v5    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setAodRect(IIII)I

    move-result v6

    .line 515
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    goto/16 :goto_0

    .line 496
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 497
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setTemperature(I)I

    move-result v3

    .line 499
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    goto/16 :goto_0

    .line 482
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 484
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 486
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 487
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setTspEnabled(IIZ)I

    move-result v5

    .line 489
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    goto/16 :goto_0

    .line 472
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_10
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 473
    .local v2, "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getCommandList(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;)Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    goto/16 :goto_0

    .line 462
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_11
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 463
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getDeviceEnabled(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;)I

    move-result v3

    .line 465
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    goto/16 :goto_0

    .line 452
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .end local v3    # "_result":I
    :pswitch_12
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 453
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getTspSupportFeature(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;)I

    move-result v3

    .line 455
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    goto/16 :goto_0

    .line 442
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .end local v3    # "_result":I
    :pswitch_13
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 443
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getSupportDevice(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;)I

    move-result v3

    .line 445
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    goto/16 :goto_0

    .line 430
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .end local v3    # "_result":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getMotionControl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 435
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    goto/16 :goto_0

    .line 416
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 418
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 420
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setMotionControl(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 423
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    goto/16 :goto_0

    .line 404
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 406
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 407
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 409
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    goto/16 :goto_0

    .line 390
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 392
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 394
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->enableMotion(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v5

    .line 397
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    goto/16 :goto_0

    .line 380
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 381
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->isSupportMotion(Ljava/lang/String;)Z

    move-result v3

    .line 383
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 385
    goto :goto_0

    .line 368
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_19
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    .line 370
    .local v2, "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 371
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->sendRawdataTsp(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;[I)I

    move-result v4

    .line 373
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    goto :goto_0

    .line 354
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 356
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 358
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 361
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 363
    goto :goto_0

    .line 340
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 342
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 344
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 345
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 347
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 349
    goto :goto_0

    .line 330
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 331
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->isKeyPressedByKeycode(I)Z

    move-result v3

    .line 333
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 335
    goto :goto_0

    .line 322
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1d
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getKeyPressStateAll()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    nop

    .line 686
    .end local v2    # "_result":Ljava/lang/String;
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
