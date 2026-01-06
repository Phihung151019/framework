.class public abstract Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener$Stub;
.super Landroid/os/Binder;
.source "ISIMDeviceActivationListener.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onResponeAvailable:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.sec.vsim.ericssonnsds.ISIMDeviceActivationListener"

    invoke-virtual {p0, p0, v0}, Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    const-string v0, "com.sec.vsim.ericssonnsds.ISIMDeviceActivationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener;

    if-eqz v1, :cond_1

    .line 44
    move-object v1, v0

    check-cast v1, Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener;

    return-object v1

    .line 46
    :cond_1
    new-instance v1, Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 50
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const-string v0, "com.sec.vsim.ericssonnsds.ISIMDeviceActivationListener"

    .line 55
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v1

    .line 62
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 67
    :pswitch_0
    sget-object v2, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;

    .line 69
    .local v2, "_arg0":Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;
    sget-object v3, Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;

    .line 71
    .local v3, "_arg1":Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;
    sget-object v4, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;

    .line 72
    .local v4, "_arg2":Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 73
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/vsim/ericssonnsds/ISIMDeviceActivationListener$Stub;->onResponeAvailable(Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    nop

    .line 82
    .end local v2    # "_arg0":Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;
    .end local v3    # "_arg1":Lcom/sec/vsim/ericssonnsds/data/ResponseManagePushToken;
    .end local v4    # "_arg2":Lcom/sec/vsim/ericssonnsds/data/ResponseGetMSISDN;
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
