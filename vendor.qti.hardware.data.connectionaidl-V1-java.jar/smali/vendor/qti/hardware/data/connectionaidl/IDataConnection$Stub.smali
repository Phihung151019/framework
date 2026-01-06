.class public abstract Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;
.super Landroid/os/Binder;
.source "IDataConnection.java"

# interfaces
.implements Lvendor/qti/hardware/data/connectionaidl/IDataConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/data/connectionaidl/IDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAllBearerAllocations:I = 0x1

.field static final TRANSACTION_getBearerAllocation:I = 0x2

.field static final TRANSACTION_getConfig:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_registerForAllBearerAllocationUpdates:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    invoke-virtual {p0}, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;->markVintfStability()V

    .line 60
    sget-object v0, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/data/connectionaidl/IDataConnection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    sget-object v0, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/data/connectionaidl/IDataConnection;

    if-eqz v1, :cond_1

    .line 73
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/data/connectionaidl/IDataConnection;

    return-object v1

    .line 75
    :cond_1
    new-instance v1, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 84
    sparse-switch p0, :sswitch_data_0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 104
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 108
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 100
    :sswitch_2
    const-string v0, "registerForAllBearerAllocationUpdates"

    return-object v0

    .line 96
    :sswitch_3
    const-string v0, "getConfig"

    return-object v0

    .line 92
    :sswitch_4
    const-string v0, "getBearerAllocation"

    return-object v0

    .line 88
    :sswitch_5
    const-string v0, "getAllBearerAllocations"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 79
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 341
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 119
    invoke-static {p1}, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 123
    sget-object v0, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 124
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v2

    .line 131
    :cond_1
    if-ne p1, v1, :cond_2

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p0}, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return v2

    .line 136
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p0}, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v2

    .line 141
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 180
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/data/connectionaidl/IDataConnectionIndication;

    move-result-object v1

    .line 181
    .local v1, "_arg0":Lvendor/qti/hardware/data/connectionaidl/IDataConnectionIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;->registerForAllBearerAllocationUpdates(Lvendor/qti/hardware/data/connectionaidl/IDataConnectionIndication;)I

    move-result v3

    .line 183
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    goto :goto_0

    .line 168
    .end local v1    # "_arg0":Lvendor/qti/hardware/data/connectionaidl/IDataConnectionIndication;
    .end local v3    # "_result":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, v1, v3}, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    goto :goto_0

    .line 156
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;

    move-result-object v3

    .line 159
    .local v3, "_arg1":Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v1, v3}, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;->getBearerAllocation(ILvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;)I

    move-result v4

    .line 161
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    goto :goto_0

    .line 146
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;
    .end local v4    # "_result":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;

    move-result-object v1

    .line 147
    .local v1, "_arg0":Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/data/connectionaidl/IDataConnection$Stub;->getAllBearerAllocations(Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;)I

    move-result v3

    .line 149
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    nop

    .line 192
    .end local v1    # "_arg0":Lvendor/qti/hardware/data/connectionaidl/IDataConnectionResponse;
    .end local v3    # "_result":I
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
