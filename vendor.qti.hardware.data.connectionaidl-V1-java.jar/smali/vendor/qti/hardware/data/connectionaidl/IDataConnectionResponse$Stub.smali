.class public abstract Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;
.super Landroid/os/Binder;
.source "IDataConnectionResponse.java"

# interfaces
.implements Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onAllBearerAllocationsResponse:I = 0x1

.field static final TRANSACTION_onBearerAllocationResponse:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    invoke-virtual {p0}, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;->markVintfStability()V

    .line 50
    sget-object v0, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    sget-object v0, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;

    if-eqz v1, :cond_1

    .line 63
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;

    return-object v1

    .line 65
    :cond_1
    new-instance v1, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 74
    sparse-switch p0, :sswitch_data_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 86
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 90
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 82
    :sswitch_2
    const-string v0, "onBearerAllocationResponse"

    return-object v0

    .line 78
    :sswitch_3
    const-string v0, "onAllBearerAllocationsResponse"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 69
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 243
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 101
    invoke-static {p1}, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    sget-object v0, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 106
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v2

    .line 113
    :cond_1
    if-ne p1, v1, :cond_2

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p0}, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return v2

    .line 118
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p0}, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v2

    .line 123
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .local v1, "_arg0":I
    sget-object v3, Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;

    .line 141
    .local v3, "_arg1":Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v1, v3}, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;->onBearerAllocationResponse(ILvendor/qti/hardware/data/connectionaidl/AllocatedBearers;)V

    .line 143
    goto :goto_0

    .line 128
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    .restart local v1    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;

    .line 131
    .local v3, "_arg1":[Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v1, v3}, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;->onAllBearerAllocationsResponse(I[Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;)V

    .line 133
    nop

    .line 150
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/qti/hardware/data/connectionaidl/AllocatedBearers;
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
