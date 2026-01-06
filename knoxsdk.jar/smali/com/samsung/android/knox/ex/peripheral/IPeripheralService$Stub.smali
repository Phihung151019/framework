.class public abstract Lcom/samsung/android/knox/ex/peripheral/IPeripheralService$Stub;
.super Landroid/os/Binder;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/peripheral/IPeripheralService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist TRANSACTION_beep:I = 0x25

.field public static final greylist TRANSACTION_check:I = 0x6

.field public static final greylist TRANSACTION_clearMemory:I = 0x16

.field public static final greylist TRANSACTION_connectPeripheral:I = 0x22

.field public static final greylist TRANSACTION_disable:I = 0x5

.field public static final greylist TRANSACTION_disconnectPeripheral:I = 0x23

.field public static final greylist TRANSACTION_displayText:I = 0x24

.field public static final greylist TRANSACTION_enable:I = 0x4

.field public static final greylist TRANSACTION_getAvailablePeripherals:I = 0x9

.field public static final greylist TRANSACTION_getBluetoothPeripherals:I = 0x21

.field public static final greylist TRANSACTION_getConfiguration:I = 0xb

.field public static final greylist TRANSACTION_getConnectionProfile:I = 0x1c

.field public static final greylist TRANSACTION_getInformation:I = 0xa

.field public static final greylist TRANSACTION_getPairingBarcodeData:I = 0x1f

.field public static final greylist TRANSACTION_getPluginsToSetup:I = 0x3

.field public static final greylist TRANSACTION_getStoredData:I = 0x15

.field public static final greylist TRANSACTION_getSupportedPeripherals:I = 0x1e

.field public static final greylist TRANSACTION_isEnabled:I = 0x1

.field public static final greylist TRANSACTION_isStarted:I = 0x2

.field public static final greylist TRANSACTION_registerDataListener:I = 0xd

.field public static final greylist TRANSACTION_registerInfoListener:I = 0xf

.field public static final greylist TRANSACTION_registerStateListener:I = 0x11

.field public static final greylist TRANSACTION_resetPeripheral:I = 0x19

.field public static final greylist TRANSACTION_setConfiguration:I = 0xc

.field public static final greylist TRANSACTION_setConnectionProfile:I = 0x1d

.field public static final greylist TRANSACTION_start:I = 0x7

.field public static final greylist TRANSACTION_startAutoTriggerMode:I = 0x17

.field public static final greylist TRANSACTION_startBarcodeScan:I = 0x13

.field public static final greylist TRANSACTION_stop:I = 0x8

.field public static final greylist TRANSACTION_stopAutoTriggerMode:I = 0x18

.field public static final greylist TRANSACTION_stopBarcodeScan:I = 0x14

.field public static final greylist TRANSACTION_stopPairingPeripheral:I = 0x20

.field public static final greylist TRANSACTION_triggerVendorCommand:I = 0x1a

.field public static final greylist TRANSACTION_unregisterDataListener:I = 0xe

.field public static final greylist TRANSACTION_unregisterInfoListener:I = 0x10

.field public static final greylist TRANSACTION_unregisterStateListener:I = 0x12

.field public static final greylist TRANSACTION_updateFirmware:I = 0x1b

.field public static final greylist TRANSACTION_vibrate:I = 0x26


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.ex.peripheral.IPeripheralService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.ex.peripheral.IPeripheralService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.knox.ex.peripheral.IPeripheralService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4, v0, v2}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->disconnectPeripheral(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_4
    move-object v2, p0

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->connectPeripheral(Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_5
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getBluetoothPeripherals(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_6
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->stopPairingPeripheral(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_7
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_9
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1, p4}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface/range {v2 .. v8}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1, p4, v0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1, p4}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_10
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1, p4}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_11
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_12
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_13
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_14
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IStateListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->unregisterStateListener(Lcom/samsung/android/knox/ex/peripheral/IStateListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_15
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IStateListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->registerStateListener(Lcom/samsung/android/knox/ex/peripheral/IStateListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_16
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IInfoListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->unregisterInfoListener(Lcom/samsung/android/knox/ex/peripheral/IInfoListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_17
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IInfoListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->registerInfoListener(Lcom/samsung/android/knox/ex/peripheral/IInfoListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_18
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IDataListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->unregisterDataListener(Lcom/samsung/android/knox/ex/peripheral/IDataListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_19
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IDataListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IDataListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->registerDataListener(Lcom/samsung/android/knox/ex/peripheral/IDataListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1a
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1, p4}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1b
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1, p4}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1c
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getInformation(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1d
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1e
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->stop(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1f
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->start(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_20
    move-object v2, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/ex/peripheral/IResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ex/peripheral/IResultListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->check(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_21
    move-object v2, p0

    invoke-interface {v2}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->disable()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_22
    move-object v2, p0

    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->enable(Landroid/os/Bundle;Z)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_23
    move-object v2, p0

    invoke-interface {v2}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->getPluginsToSetup()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    :pswitch_24
    move-object v2, p0

    invoke-interface {v2}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->isStarted()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_25
    move-object v2, p0

    invoke-interface {v2}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralService;->isEnabled()Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
